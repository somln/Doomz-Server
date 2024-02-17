package dormitoryfamily.doomz.domain.comment.controller;

import dormitoryfamily.doomz.domain.comment.dto.request.CreateCommentRequestDto;
import dormitoryfamily.doomz.domain.comment.dto.response.CreateCommentResponseDto;
import dormitoryfamily.doomz.domain.comment.service.CommentService;
import dormitoryfamily.doomz.domain.member.entity.Member;
import dormitoryfamily.doomz.global.util.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/articles/{articleId}")
public class CommentController {

    private final CommentService commentService;

    @PostMapping("/comments")
    public ResponseEntity<ResponseDto<CreateCommentResponseDto>> registerComment(
            @PathVariable Long articleId,
            @RequestBody CreateCommentRequestDto requestDto
    ) {
        // 삭제 예정
        Member member = new Member();
        member.setId(1L);

        CreateCommentResponseDto responseDto = commentService.save(articleId, member, requestDto);
        return ResponseEntity.ok(ResponseDto.createdWithData(responseDto));
    }

}