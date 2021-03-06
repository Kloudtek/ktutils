/*
 * Copyright (c) 2014 Kloudtek Ltd
 */

package com.aeontronix.commons.validation;

import javax.validation.Constraint;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

/**
 * Annotation used to specify a certain class is expected
 */
@Target({FIELD, ANNOTATION_TYPE})
@Retention(RUNTIME)
@Constraint(validatedBy = IsClassValidator.class)
@Documented
public @interface IsClass {
    String message() default "{com.aeontronix.common.validation.isclass}";

    Class<?>[] groups() default {};

    Class<?> value();
}
