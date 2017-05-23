/**
 * StudentServiceImplService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.unilib.service;

public interface StudentServiceImplService extends javax.xml.rpc.Service {
    public java.lang.String getStudentServiceImplAddress();

    public com.unilib.service.StudentServiceImpl getStudentServiceImpl() throws javax.xml.rpc.ServiceException;

    public com.unilib.service.StudentServiceImpl getStudentServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
