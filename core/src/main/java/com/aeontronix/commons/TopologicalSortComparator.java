package com.aeontronix.commons;

public abstract class TopologicalSortComparator<X> {
    public abstract SortUtils.TopologicalSortRelationship getRelationship(X source, X target);

    public String getObjectRepresentation(X object) {
        return object.toString();
    }
}
