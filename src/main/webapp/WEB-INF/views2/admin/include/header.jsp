<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Manager page</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="/assets/admin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Menu CSS -->
    <link
      href="/assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
      rel="stylesheet"
    />
    <link href="/assets/admin/css/reset.css" rel="stylesheet" />
    <!-- morris CSS -->
    <link
      href="/assets/plugins/bower_components/morrisjs/morris.css"
      rel="stylesheet"
    />
    <!-- animation CSS -->
    <link href="/assets/admin/css/animate.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="/assets/admin/css/style.css" rel="stylesheet" />
    <!-- color CSS -->
    <link href="/assets/admin/css/colors/blue-dark.css" id="theme" rel="stylesheet" />
  </head>

  <body>
    <!-- Preloader -->
    <div class="preloader">
      <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
      <!-- Navigation -->
      <nav class="navbar navbar-default navbar-static-top m-b-0">
        <div class="navbar-header">
          <a
            class="navbar-toggle hidden-sm hidden-md hidden-lg"
            href="javascript:void(0)"
            data-toggle="collapse"
            data-target=".navbar-collapse"
            ><i class="fa fa-bars"></i
          ></a>
          <div class="top-left-part">
            <a class="logo" href="index.html"
              ><b
                ><img
                  src="/assets/plugins/images/pixeladmin-logo.png"
                  alt="home" /></b
              ><span class="hidden-xs"
                ><img
                  src="/assets/plugins/images/pixeladmin-text.png"
                  alt="home" /></span
            ></a>
          </div>
          <ul class="nav navbar-top-links navbar-left m-l-20 hidden-xs">
            <li>
              <form role="search" class="app-search hidden-xs">
                <input
                  type="text"
                  placeholder="Search/assets."
                  class="form-control"
                />
                <a href=""><i class="fa fa-search"></i></a>
              </form>
            </li>
          </ul>
          <ul class="nav navbar-top-links navbar-right pull-right">
            <li>
              <a class="profile-pic" href="#">
                <img
                  src="/assets/plugins/images/users/varun.jpg"
                  alt="user-img"
                  width="36"
                  class="img-circle"
                /><b class="hidden-xs">Steave</b>
              </a>
            </li>
          </ul>
        </div>
        <!-- /.navbar-header -->
        <!-- /.navbar-top-links -->
        <!-- /.navbar-static-side -->
      </nav>
      <!-- Left navbar-header -->
      <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse slimscrollsidebar">
          <ul class="nav" id="side-menu">
            <li style="padding: 10px 0 0">
              <a href="index.html" class="waves-effect"
                ><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Dashboard</span></a
              >
            </li>
            <li>
              <a href="/manager/myplace" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">업장관리</span></a
              >
            </li>
            <li>
              <a href="" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">예약관리</span></a
              >
            </li>
            <li>
              <a href="" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Board</span></a
              >
            </li>
            <li>
              <a href="" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">통계</span></a
              >
            </li>
            <li>
              <a href="profile.html" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Profile</span></a
              >
            </li>
            <li>
              <a href="basic-table.html" class="waves-effect"
                ><i class="fa fa-table fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Basic Table</span></a
              >
            </li>
            <li>
              <a href="fontawesome.html" class="waves-effect"
                ><i class="fa fa-font fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Icons</span></a
              >
            </li>
            <li>
              <a href="map-google.html" class="waves-effect"
                ><i class="fa fa-globe fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Google Map</span></a
              >
            </li>
            <li>
              <a href="blank.html" class="waves-effect"
                ><i class="fa fa-columns fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Blank Page</span></a
              >
            </li>
            <li>
              <a href="404.html" class="waves-effect"
                ><i class="fa fa-info-circle fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">Error 404</span></a
              >
            </li>
          </ul>
         
        </div>
      </div>
      <!-- Left navbar-header end -->
      <!-- Page Content -->
      <div id="page-wrapper">
        <div class="container-fluid">