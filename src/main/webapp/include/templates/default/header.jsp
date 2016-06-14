﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../../core/core_header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
  <jsp:include page="../../core/core_mate.jsp"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />

  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/common.css" />
  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/style_2015.css" />
  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/pager.css" />
  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/editormd.css" />

  <script src="${url }/js/lib/jquery-1.10.2.min.js"></script>
  <script src="${url}/js/lib/modernizr.custom.16617.js"></script>
  <!--[if lt IE 9]>
  <script src="${url}/js/html5shiv.js"></script>
  <script src="${url}/js/css3-mediaqueries.js"></script>
  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/style-ie7.css" />
  <![endif]-->

</head>
<body class="default front">
<div class="page">
  <div class="top">
  <div class="inner">
    <header>
      <h1 class="site-name">
        <i class="avatar"></i>
        <a href="${rurl}"><%=request.getHeader("host") %></a>
        <span class="slogan">${webs.title }</span>
      </h1>
      <nav class="mainnav">
        <ul class="section_list">
          <c:forEach var="lognav" items="${init.logNavs}">
              <c:choose>
                  <c:when test="${lognav.url eq requrl}">
          <li class="active"><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a></li>
                  </c:when>
                  <c:otherwise>
          <li><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a></li>
                  </c:otherwise>
              </c:choose>
          </c:forEach>
        </ul>
      </nav>
      <ul id="gn-menu" class="gn-menu-main">
        <li class="gn-trigger">
          <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
          <nav class="gn-menu-wrapper">
            <div class="gn-scroller">
              <ul class="gn-menu">
                <li class="gn-search-item">
                  <form method="post" action="${rurl}post/search" id="searchform1"><input placeholder="${_res.searchTip}" type="search" name="key" class="gn-search">
                  <a class="gn-icon icon-search"><span>${_res.search}</span></a></form>
                </li>
 				<li>
                  <a class="gn-icon icon-article">${_res.category}</a>
                  <ul class="gn-submenu">
				<c:forEach var="type" items="${init.types}">
					<li><a class="gn-icon icon-tag" href="${rurl}post/sort/${type.alias}">${type.typeName} (${type.typeamount})</a></li>
				</c:forEach>
                  </ul>
                </li>
              </ul>
            </div><!-- /gn-scroller -->
          </nav>
        </li>
        <li class="sitename"><a class="gn-icon icon-info" href="/"><span><%=request.getHeader("host") %></span></a></li>
      </ul>
    <script src="${url }/js/classie.js"></script>
    <script src="${url }/js/gnmenu.js"></script>
    <script>
      new gnMenu(document.getElementById( 'gn-menu' ));
    </script>
    </header>
  </div>
</div>