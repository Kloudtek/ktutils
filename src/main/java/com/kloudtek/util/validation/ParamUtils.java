/*
 * Copyright (c) 2013 KloudTek Ltd
 */

package com.kloudtek.util.validation;

import com.kloudtek.util.StringUtils;

public class ParamUtils {
    public static void notNull(String name, Object value) {
        if (value == null) {
            throw new IllegalArgumentException(name + " should not be null");
        }
    }

    public static void notEmpty(String name, String value) {
        if (StringUtils.isEmpty(value)) {
            throw new IllegalArgumentException(name + " should not be null or an empty string");
        }
    }

    public static ChainingValidator chain() {
        return new ChainingValidator();
    }

    public static class ChainingValidator {
        public ChainingValidator notNull(String name, Object value) {
            ParamUtils.notNull(name, value);
            return this;
        }

        public ChainingValidator notEmpty(String name, String value) {
            ParamUtils.notEmpty(name, value);
            return this;
        }
    }
}