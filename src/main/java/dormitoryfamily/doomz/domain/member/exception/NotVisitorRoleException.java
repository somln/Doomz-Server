package dormitoryfamily.doomz.domain.member.exception;

import dormitoryfamily.doomz.global.exception.ApplicationException;
import dormitoryfamily.doomz.global.exception.ErrorCode;

public class NotVisitorRoleException extends ApplicationException {

    private static final ErrorCode ERROR_CODE = ErrorCode.NOT_VISITOR_ROLE;

    public NotVisitorRoleException() {
        super(ERROR_CODE);
    }
}