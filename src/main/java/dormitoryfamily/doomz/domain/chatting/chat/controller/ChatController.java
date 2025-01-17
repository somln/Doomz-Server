package dormitoryfamily.doomz.domain.chatting.chat.controller;

import dormitoryfamily.doomz.domain.chatting.chat.dto.response.ChatListResponseDto;
import dormitoryfamily.doomz.domain.chatting.chat.dto.response.SearchChatListResponseDto;
import dormitoryfamily.doomz.domain.chatting.chatroom.service.ChatRoomService;
import dormitoryfamily.doomz.domain.chatting.chat.service.ChatService;
import dormitoryfamily.doomz.global.chat.ChatMessage;
import dormitoryfamily.doomz.global.chat.RedisPublisher;
import dormitoryfamily.doomz.global.security.dto.PrincipalDetails;
import dormitoryfamily.doomz.global.util.ResponseDto;
import dormitoryfamily.doomz.global.util.SearchRequestDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/api/chats")
public class ChatController {

    private final RedisPublisher redisPublisher;
    private final ChatRoomService chatRoomService;
    private final ChatService chatService;

    @MessageMapping("/message")
    public void message(ChatMessage chatMessage) {
        // 채팅 메시지 유효성 검사
        chatService.validateChat(chatMessage);

        try{
            chatRoomService.joinChatRoom(chatMessage.getRoomUUID());
        }catch (Exception e){
            log.error("Error occurred while processing chat message: {}", chatMessage, e);
        }

        // 채팅 메시지 발행
        redisPublisher.publish(chatRoomService.getTopic(chatMessage.getRoomUUID()), chatMessage);

        // 채팅 메시지 저장
        chatService.saveChat(chatMessage);

        // 읽지 않은 메시지 수 업데이트
        chatRoomService.updateUnreadCount(chatMessage);
    }

    @GetMapping("/rooms/{roomId}")
    public ResponseEntity<ResponseDto<ChatListResponseDto>> findAllChatHistory(
            @AuthenticationPrincipal PrincipalDetails principalDetails,
            @PathVariable Long roomId,
            Pageable pageable
    ) {
        ChatListResponseDto responseDto = chatService.findAllChatHistory(principalDetails, roomId, pageable);
        return ResponseEntity.ok(ResponseDto.okWithData(responseDto));
    }

    @GetMapping("/messages/search")
    public ResponseEntity<ResponseDto<SearchChatListResponseDto>> searchChatHistory(
            @AuthenticationPrincipal PrincipalDetails principalDetails,
            @ModelAttribute @Valid SearchRequestDto requestDto,
            @RequestParam String sort,
            Pageable pageable
    ) {
        SearchChatListResponseDto responseDto = chatService.searchChatHistory(principalDetails, requestDto, pageable, sort);
        return ResponseEntity.ok(ResponseDto.okWithData(responseDto));
    }
}
