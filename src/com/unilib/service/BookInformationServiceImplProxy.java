package com.unilib.service;

public class BookInformationServiceImplProxy implements com.unilib.service.BookInformationServiceImpl {
  private String _endpoint = null;
  private com.unilib.service.BookInformationServiceImpl bookInformationServiceImpl = null;
  
  public BookInformationServiceImplProxy() {
    _initBookInformationServiceImplProxy();
  }
  
  public BookInformationServiceImplProxy(String endpoint) {
    _endpoint = endpoint;
    _initBookInformationServiceImplProxy();
  }
  
  private void _initBookInformationServiceImplProxy() {
    try {
      bookInformationServiceImpl = (new com.unilib.service.BookInformationServiceImplServiceLocator()).getBookInformationServiceImpl();
      if (bookInformationServiceImpl != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)bookInformationServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)bookInformationServiceImpl)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (bookInformationServiceImpl != null)
      ((javax.xml.rpc.Stub)bookInformationServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.unilib.service.BookInformationServiceImpl getBookInformationServiceImpl() {
    if (bookInformationServiceImpl == null)
      _initBookInformationServiceImplProxy();
    return bookInformationServiceImpl;
  }
  
  public com.unilib.dao.Book getBookFromMarket(com.unilib.dao.Book book) throws java.rmi.RemoteException{
    if (bookInformationServiceImpl == null)
      _initBookInformationServiceImplProxy();
    return bookInformationServiceImpl.getBookFromMarket(book);
  }
  
  
}