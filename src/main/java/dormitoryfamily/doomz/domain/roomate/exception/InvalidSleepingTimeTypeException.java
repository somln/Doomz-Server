package dormitoryfamily.doomz.domain.roomate.exception;

import dormitoryfamily.doomz.global.exception.ApplicationException;
import dormitoryfamily.doomz.global.exception.ErrorCode;

public class InvalidSleepingTimeTypeException extends ApplicationException {

    private static final ErrorCode ERROR_CODE = ErrorCode.COLLEGE_TYPE_NOT_EXISTS;

    public InvalidSleepingTimeTypeException() {
        super(ERROR_CODE);
    }
}
