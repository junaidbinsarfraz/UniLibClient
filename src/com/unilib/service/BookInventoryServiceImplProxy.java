package com.unilib.service;

public class BookInventoryServiceImplProxy implements com.unilib.service.BookInventoryServiceImpl {
  private String _endpoint = null;
  private com.unilib.service.BookInventoryServiceImpl bookInventoryServiceImpl = null;
  
  public BookInventoryServiceImplProxy() {
    _initBookInventoryServiceImplProxy();
  }
  
  public BookInventoryServiceImplProxy(String endpoint) {
    _endpoint = endpoint;
    _initBookInventoryServiceImplProxy();
  }
  
  private void _initBookInventoryServiceImplProxy() {
    try {
      bookInventoryServiceImpl = (new com.unilib.service.BookInventoryServiceImplServiceLocator()).getBookInventoryServiceImpl();
      if (bookInventoryServiceImpl != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)bookInventoryServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)bookInventoryServiceImpl)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (bookInventoryServiceImpl != null)
      ((javax.xml.rpc.Stub)bookInventoryServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.unilib.service.BookInventoryServiceImpl getBookInventoryServiceImpl() {
    if (bookInventoryServiceImpl == null)
      _initBookInventoryServiceImplProxy();
    return bookInventoryServiceImpl;
  }
  
  public com.unilib.model.Validation saveBook(com.unilib.dao.Book book) throws java.rmi.RemoteException{
    if (bookInventoryServiceImpl == null)
      _initBookInventoryServiceImplProxy();
    return bookInventoryServiceImpl.saveBook(book);
  }
  
  public com.unilib.model.Validation validateBook(com.unilib.dao.Book book) throws java.rmi.RemoteException{
    if (bookInventoryServiceImpl == null)
      _initBookInventoryServiceImplProxy();
    return bookInventoryServiceImpl.validateBook(book);
  }
  
  
}