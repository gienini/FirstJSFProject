<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"   
      xmlns:h="http://java.sun.com/jsf/html">
  <f:view>
    <h2>This is start.xhtml</h2>

      <h:form>
    	<h:commandButton action="#{pageController.processPage1}" value="Page1" />
    	<h:commandButton action="#{pageController.processPage2}" value="Page2" />
      </h:form>
 
    </f:view>
</html>