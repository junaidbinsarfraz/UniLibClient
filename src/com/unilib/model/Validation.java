/**
 * Validation.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.unilib.model;

public class Validation  implements java.io.Serializable {
    private java.lang.Integer status;

    private java.lang.String statusMessage;

    private java.lang.String bookTitle;

    private java.lang.String bookAuthor;

    private java.lang.String publisher;

    public Validation() {
    }

    public Validation(
           java.lang.Integer status,
           java.lang.String statusMessage,
           java.lang.String bookTitle,
           java.lang.String bookAuthor,
           java.lang.String publisher) {
           this.status = status;
           this.statusMessage = statusMessage;
           this.bookTitle = bookTitle;
           this.bookAuthor = bookAuthor;
           this.publisher = publisher;
    }


    /**
     * Gets the status value for this Validation.
     * 
     * @return status
     */
    public java.lang.Integer getStatus() {
        return status;
    }


    /**
     * Sets the status value for this Validation.
     * 
     * @param status
     */
    public void setStatus(java.lang.Integer status) {
        this.status = status;
    }


    /**
     * Gets the statusMessage value for this Validation.
     * 
     * @return statusMessage
     */
    public java.lang.String getStatusMessage() {
        return statusMessage;
    }


    /**
     * Sets the statusMessage value for this Validation.
     * 
     * @param statusMessage
     */
    public void setStatusMessage(java.lang.String statusMessage) {
        this.statusMessage = statusMessage;
    }


    /**
     * Gets the bookTitle value for this Validation.
     * 
     * @return bookTitle
     */
    public java.lang.String getBookTitle() {
        return bookTitle;
    }


    /**
     * Sets the bookTitle value for this Validation.
     * 
     * @param bookTitle
     */
    public void setBookTitle(java.lang.String bookTitle) {
        this.bookTitle = bookTitle;
    }


    /**
     * Gets the bookAuthor value for this Validation.
     * 
     * @return bookAuthor
     */
    public java.lang.String getBookAuthor() {
        return bookAuthor;
    }


    /**
     * Sets the bookAuthor value for this Validation.
     * 
     * @param bookAuthor
     */
    public void setBookAuthor(java.lang.String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }


    /**
     * Gets the publisher value for this Validation.
     * 
     * @return publisher
     */
    public java.lang.String getPublisher() {
        return publisher;
    }


    /**
     * Sets the publisher value for this Validation.
     * 
     * @param publisher
     */
    public void setPublisher(java.lang.String publisher) {
        this.publisher = publisher;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Validation)) return false;
        Validation other = (Validation) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.status==null && other.getStatus()==null) || 
             (this.status!=null &&
              this.status.equals(other.getStatus()))) &&
            ((this.statusMessage==null && other.getStatusMessage()==null) || 
             (this.statusMessage!=null &&
              this.statusMessage.equals(other.getStatusMessage()))) &&
            ((this.bookTitle==null && other.getBookTitle()==null) || 
             (this.bookTitle!=null &&
              this.bookTitle.equals(other.getBookTitle()))) &&
            ((this.bookAuthor==null && other.getBookAuthor()==null) || 
             (this.bookAuthor!=null &&
              this.bookAuthor.equals(other.getBookAuthor()))) &&
            ((this.publisher==null && other.getPublisher()==null) || 
             (this.publisher!=null &&
              this.publisher.equals(other.getPublisher())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getStatus() != null) {
            _hashCode += getStatus().hashCode();
        }
        if (getStatusMessage() != null) {
            _hashCode += getStatusMessage().hashCode();
        }
        if (getBookTitle() != null) {
            _hashCode += getBookTitle().hashCode();
        }
        if (getBookAuthor() != null) {
            _hashCode += getBookAuthor().hashCode();
        }
        if (getPublisher() != null) {
            _hashCode += getPublisher().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Validation.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.unilib.com", "Validation"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("status");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.unilib.com", "status"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("statusMessage");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.unilib.com", "statusMessage"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("bookTitle");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.unilib.com", "bookTitle"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("bookAuthor");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.unilib.com", "bookAuthor"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("publisher");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.unilib.com", "publisher"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
