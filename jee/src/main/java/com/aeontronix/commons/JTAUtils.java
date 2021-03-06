/*
 * Copyright (c) 2014 Kloudtek Ltd
 */

package com.aeontronix.commons;

import javax.persistence.PersistenceException;
import javax.transaction.UserTransaction;

/**
 * Various JTA-related utility functions
 */
public class JTAUtils {
    public static void beginTransaction(UserTransaction tx) {
        try {
            tx.begin();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public static void commitTransaction(UserTransaction tx) {
        try {
            tx.commit();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public static void rollbackTransaction(UserTransaction tx) {
        try {
            tx.rollback();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }
}
