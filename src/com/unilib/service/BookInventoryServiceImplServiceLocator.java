/**
 * BookInventoryServiceImplServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.unilib.service;

public class BookInventoryServiceImplServiceLocator extends org.apache.axis.client.Service implements com.unilib.service.BookInventoryServiceImplService {

    public BookInventoryServiceImplServiceLocator() {
    }


    public BookInventoryServiceImplServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public BookInventoryServiceImplServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for BookInventoryServiceImpl
    private java.lang.String BookInventoryServiceImpl_address = "http://localhost:8080/UniLib/services/BookInventoryServiceImpl";

    public java.lang.String getBookInventoryServiceImplAddress() {
        return BookInventoryServiceImpl_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String BookInventoryServiceImplWSDDServiceName = "BookInventoryServiceImpl";

    public java.lang.String getBookInventoryServiceImplWSDDServiceName() {
        return BookInventoryServiceImplWSDDServiceName;
    }

    public void setBookInventoryServiceImplWSDDServiceName(java.lang.String name) {
        BookInventoryServiceImplWSDDServiceName = name;
    }

    public com.unilib.service.BookInventoryServiceImpl getBookInventoryServiceImpl() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(BookInventoryServiceImpl_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getBookInventoryServiceImpl(endpoint);
    }

    public com.unilib.service.BookInventoryServiceImpl getBookInventoryServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.unilib.service.BookInventoryServiceImplSoapBindingStub _stub = new com.unilib.service.BookInventoryServiceImplSoapBindingStub(portAddress, this);
            _stub.setPortName(getBookInventoryServiceImplWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setBookInventoryServiceImplEndpointAddress(java.lang.String address) {
        BookInventoryServiceImpl_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.unilib.service.BookInventoryServiceImpl.class.isAssignableFrom(serviceEndpointInterface)) {
                com.unilib.service.BookInventoryServiceImplSoapBindingStub _stub = new com.unilib.service.BookInventoryServiceImplSoapBindingStub(new java.net.URL(BookInventoryServiceImpl_address), this);
                _stub.setPortName(getBookInventoryServiceImplWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("BookInventoryServiceImpl".equals(inputPortName)) {
            return getBookInventoryServiceImpl();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://service.unilib.com", "BookInventoryServiceImplService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://service.unilib.com", "BookInventoryServiceImpl"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("BookInventoryServiceImpl".equals(portName)) {
            setBookInventoryServiceImplEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
