/*
 * Copyright (c) 2014 Kloudtek Ltd
 */

package com.aeontronix.commons;

/**
 * Generic {@link UserDisplayable} runtime exception.
 */
@UserDisplayable
public class UserDisplayableException extends RuntimeException {
    private static final long serialVersionUID = 827829244973328402L;
    private String errorTitle;
    private String errorCode;

    public UserDisplayableException() {
    }

    public UserDisplayableException(String message) {
        super(message);
    }

    public UserDisplayableException(String errorTitle, String message) {
        super(message);
        this.errorTitle = errorTitle;
    }

    public UserDisplayableException(String errorTitle, String message, Throwable cause, String errorCode) {
        super(message, cause);
        this.errorTitle = errorTitle;
        this.errorCode = errorCode;
    }

    public UserDisplayableException(Throwable cause, String errorCode) {
        super(cause);
        this.errorCode = errorCode;
    }

    public UserDisplayableException(String message, Throwable cause) {
        super(message, cause);
    }


    /**
     * Return specified error code.
     *
     * @return Error Code or null is none is available.
     */
    public String getErrorCode() {
        return errorCode;
    }

    public String getErrorTitle() {
        return errorTitle;
    }
}
