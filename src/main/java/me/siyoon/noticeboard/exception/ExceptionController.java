package me.siyoon.noticeboard.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.thymeleaf.exceptions.TemplateInputException;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

@ControllerAdvice
@Slf4j
public class ExceptionController {
    @ExceptionHandler(DataIntegrityViolationException.class)
    public String handleSignUpDuplicateException(DataIntegrityViolationException e, Model model) {
        String duplicationStr = getDuplicationStr(e);
        model.addAttribute("duplicationStr", duplicationStr);
        return "signUp";
    }

    private String getDuplicationStr(DataIntegrityViolationException e) {
        String message = e.getCause().getCause().getMessage();
        return message.substring(29, message.indexOf("' for key '"));
    }

    @ExceptionHandler(AuthenticationServiceException.class)
    public String handleAuthenticationException(AuthenticationException e) {
        String noticeId = getNoticeIdFromErrMessage(e);
        return "redirect:/notices/" + noticeId + "?auth-error=true";
    }

    private String getNoticeIdFromErrMessage(AuthenticationException e) {
        String errMessage = e.getMessage();
        return errMessage.substring(errMessage.lastIndexOf(":") + 1);
    }

    @ExceptionHandler({BindException.class, IllegalArgumentException.class})
    public String handleBindException(RuntimeException e) {
        return "redirect:users" + "?form-error=" + e.getMessage();
    }

    @ExceptionHandler({SQLException.class, TemplateInputException.class})
    public void handleExpectedException(RuntimeException e) {
        log.warn(e.getClass().getName() + " : " + e.getMessage());
    }

    @ExceptionHandler(Error.class)
    public String handleError(Error error, Model model) {
        log.warn(error.getMessage());
        model.addAttribute(error.getClass().getName(), error.getMessage());
        return "error";
    }

    @ExceptionHandler(Exception.class)
    public void handleUnexpectedExceptions(Exception e) {
        log.warn("예상치 못한 예외 발생 : " + e.getMessage() + "-" + e.getClass().getName());
        for (StackTraceElement stackTraceElement : e.getStackTrace()) {
            log.warn(stackTraceElement.toString());
        }
    }
}