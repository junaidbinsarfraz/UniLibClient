/**
 * BookInventoryServiceImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.unilib.service;

public interface BookInventoryServiceImpl extends java.rmi.Remote {
    public com.unilib.model.Validation saveBook(com.unilib.dao.Book book) throws java.rmi.RemoteException;
    public com.unilib.model.Validation validateBook(com.unilib.dao.Book book) throws java.rmi.RemoteException;
}
