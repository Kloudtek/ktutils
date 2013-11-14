/*
 * Copyright (c) 2013 KloudTek Ltd
 */

package com.kloudtek.util;

/**
 * Generic exception used to hide the real reason for the error to the end user.
 */
@UserDisplayable
public class SystemErrorException extends RuntimeException {
    public SystemErrorException() {
    }

    public SystemErrorException(String message) {
        super(message);
    }
}