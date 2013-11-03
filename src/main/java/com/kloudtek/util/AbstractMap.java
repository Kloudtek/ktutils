/*
 * Copyright (c) 2013 KloudTek Ltd
 */

package com.kloudtek.util;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/**
 * Base Implementation of Map where all methods throw a RuntimeException with the message "Not Implemented"
 */
public class AbstractMap<K, V> implements Map<K, V> {
    @Override
    public int size() {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public boolean containsKey(Object key) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public boolean containsValue(Object value) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public V get(Object key) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public V put(K key, V value) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public V remove(Object key) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public Set<K> keySet() {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public Collection<V> values() {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public Set<Entry<K, V>> entrySet() {
        throw new RuntimeException("Not implemented");
    }
}
