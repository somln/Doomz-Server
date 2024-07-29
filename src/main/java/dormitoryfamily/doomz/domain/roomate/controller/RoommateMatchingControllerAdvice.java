package dormitoryfamily.doomz.domain.roomate.controller;

import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import dormitoryfamily.doomz.domain.roomate.exception.DuplicatePreferenceOrderException;
import dormitoryfamily.doomz.domain.roomate.exception.InvalidLifestyleTypeException;
import dormitoryfamily.doomz.domain.roomate.exception.matching.TooManyRequestException;
import dormitoryfamily.doomz.global.util.ResponseDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import static dormitoryfamily.doomz.global.exception.ErrorCode.*;

@RestControllerAdvice
public class RoommateMatchingControllerAdvice {

    @ExceptionHandler
    public ResponseEntity<ResponseDto<Void>> handleUnrecognizedPropertyException(UnrecognizedPropertyException e) {
        HttpStatus status = HttpStatus.BAD_REQUEST;
        String wrongProperty = e.getPropertyName();

        return ResponseEntity
                .status(status)
                .body(ResponseDto.errorWithMessage(status, "[" + wrongProperty + "] " + WRONG_PROPERTY.getMessage()));
    }

    @ExceptionHandler
    public ResponseEntity<ResponseDto<Void>> handleInvalidLifestyleTypeException(InvalidLifestyleTypeException e) {
        HttpStatus status = HttpStatus.BAD_REQUEST;
        String wrongPreferenceType = e.getValue();

        return ResponseEntity
                .status(status)
                .body(ResponseDto.errorWithMessage(status, "[" + wrongPreferenceType + "] " + LIFESTYLE_TYPE_NOT_EXISTS.getMessage()));
    }

    @ExceptionHandler
    public ResponseEntity<ResponseDto<Void>> handleDuplicatePreferenceOrderException(DuplicatePreferenceOrderException e) {
        HttpStatus status = HttpStatus.BAD_REQUEST;
        String duplicatePreference = e.getDuplicatePreference();

        return ResponseEntity
                .status(status)
                .body(ResponseDto.errorWithMessage(status, "[" + duplicatePreference + "] " + DUPLICATE_PREFERENCE_ORDER_PARAMETER.getMessage()));
    }

    @ExceptionHandler
    public ResponseEntity<ResponseDto<Void>> handleTooManyRequestException(TooManyRequestException e) {
        HttpStatus status = e.getErrorCode().getHttpStatus();
        long remainingMinutes = e.getRemainingMinutes();

        return ResponseEntity
                .status(status)
                .body(ResponseDto.errorWithMessage(status, e.getMessage() +
                        " 남은 시간 [" + remainingMinutes + "분]"));
    }
}
