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
    <!-- toast CSS -->
    <link
      href="/assets/plugins/bower_components/toast-master/css/jquery.toast.css"
      rel="stylesheet"
    />
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
              <a href="" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">업주관리</span></a
              >
            </li>
            <li>
              <a href="" class="waves-effect"
                ><i class="fa fa-user fa-fw" aria-hidden="true"></i
                ><span class="hide-menu">회원관리</span></a
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
          <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
              <h4 class="page-title">Dashboard</h4>
            </div>
            
            <!-- /.col-lg-12 -->
          </div>
          <!-- row -->
          <div class="row">
            <!--col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="white-box">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <i data-icon="E" class="linea-icon linea-basic"></i>
                    <h5 class="text-muted vb">MYNEW CLIENTS</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-danger">23</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div
                        class="progress-bar progress-bar-danger"
                        role="progressbar"
                        aria-valuenow="40"
                        aria-valuemin="0"
                        aria-valuemax="100"
                        style="width: 40%"
                      >
                        <span class="sr-only">40% Complete (success)</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col -->
            <!--col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="white-box">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
                    <h5 class="text-muted vb">NEW PROJECTS</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-megna">169</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div
                        class="progress-bar progress-bar-megna"
                        role="progressbar"
                        aria-valuenow="40"
                        aria-valuemin="0"
                        aria-valuemax="100"
                        style="width: 40%"
                      >
                        <span class="sr-only">40% Complete (success)</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col -->
            <!--col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="white-box">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
                    <h5 class="text-muted vb">NEW INVOICES</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-primary">157</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div
                        class="progress-bar progress-bar-primary"
                        role="progressbar"
                        aria-valuenow="40"
                        aria-valuemin="0"
                        aria-valuemax="100"
                        style="width: 40%"
                      >
                        <span class="sr-only">40% Complete (success)</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
          <!--row -->
          <div class="row">
            <div class="col-md-12">
              <div class="white-box">
                <h3 class="box-title">Sales Difference</h3>
                <ul class="list-inline text-right">
                  <li>
                    <h5>
                      <i class="fa fa-circle m-r-5" style="color: #dadada"></i
                      >Site A View
                    </h5>
                  </li>
                  <li>
                    <h5>
                      <i class="fa fa-circle m-r-5" style="color: #aec9cb"></i
                      >Site B View
                    </h5>
                  </li>
                </ul>
                <div id="morris-area-chart2" style="height: 370px"></div>
              </div>
            </div>
          </div>
          <!--row -->
          <div class="row">
            <div class="col-sm-12">
              <div class="white-box">
                <h3 class="box-title">
                  Recent sales
                  <div class="col-md-2 col-sm-4 col-xs-12 pull-right">
                    <select class="form-control pull-right row b-none">
                      <option>March 2016</option>
                      <option>April 2016</option>
                      <option>May 2016</option>
                      <option>June 2016</option>
                      <option>July 2016</option>
                    </select>
                  </div>
                </h3>
                <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>NAME</th>
                        <th>STATUS</th>
                        <th>DATE</th>
                        <th>PRICE</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="txt-oflo">Pixel admin</td>
                        <td>SALE</td>
                        <td class="txt-oflo">April 18</td>
                        <td><span class="text-success">$24</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Real Homes</td>
                        <td>EXTENDED</td>
                        <td class="txt-oflo">April 19</td>
                        <td><span class="text-info">$1250</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Medical Pro</td>
                        <td>TAX</td>
                        <td class="txt-oflo">April 20</td>
                        <td><span class="text-danger">-$24</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Hosting press</td>
                        <td>SALE</td>
                        <td class="txt-oflo">April 21</td>
                        <td><span class="text-success">$24</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Helping Hands</td>
                        <td>MEMBER</td>
                        <td class="txt-oflo">April 22</td>
                        <td><span class="text-success">$24</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Digital Agency</td>
                        <td>SALE</td>
                        <td class="txt-oflo">April 23</td>
                        <td><span class="text-danger">-$14</span></td>
                      </tr>
                      <tr>
                        <td class="txt-oflo">Helping Hands</td>
                        <td>MEMBER</td>
                        <td class="txt-oflo">April 22</td>
                        <td><span class="text-success">$64</span></td>
                      </tr>
                    </tbody>
                  </table>
                  <a href="#">Check all the sales</a>
                </div>
              </div>
            </div>
          </div>
          <!-- /.row -->
          <!-- row -->
          <div class="row">
            <div class="col-md-12 col-lg-6 col-sm-12">
              <div class="white-box">
                <h3 class="box-title">Recent Comments</h3>
                <div class="comment-center">
                  <div class="comment-body">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/pawandeep.jpg"
                        alt="user"
                        class="img-circle"
                      />
                    </div>
                    <div class="mail-contnet">
                      <h5>Pavan kumar</h5>
                      <span class="mail-desc"
                        >Donec ac condimentum massa. Etiam pellentesque pretium
                        lacus. Phasellus ultricies dictum suscipit. Aenean
                        commodo dui pellentesque molestie feugiat.</span
                      ><a href="javacript:void(0)" class="action"
                        ><i class="ti-close text-danger"></i
                      ></a>
                      <a href="javacript:void(0)" class="action"
                        ><i class="ti-check text-success"></i></a
                      ><span class="time pull-right">April 14, 2016</span>
                    </div>
                  </div>
                  <div class="comment-body">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/sonu.jpg"
                        alt="user"
                        class="img-circle"
                      />
                    </div>
                    <div class="mail-contnet">
                      <h5>Sonu Nigam</h5>
                      <span class="mail-desc"
                        >Donec ac condimentum massa. Etiam pellentesque pretium
                        lacus. Phasellus ultricies dictum suscipit. Aenean
                        commodo dui pellentesque molestie feugiat.</span
                      ><a href="javacript:void(0)" class="action"
                        ><i class="ti-close text-danger"></i
                      ></a>
                      <a href="javacript:void(0)" class="action"
                        ><i class="ti-check text-success"></i></a
                      ><span class="time pull-right">April 14, 2016</span>
                    </div>
                  </div>
                  <div class="comment-body b-none">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/arijit.jpg"
                        alt="user"
                        class="img-circle"
                      />
                    </div>
                    <div class="mail-contnet">
                      <h5>Arijit Sinh</h5>
                      <span class="mail-desc"
                        >Donec ac condimentum massa. Etiam pellentesque pretium
                        lacus. Phasellus ultricies dictum suscipit. Aenean
                        commodo dui pellentesque molestie feugiat. </span
                      ><a href="javacript:void(0)" class="action"
                        ><i class="ti-close text-danger"></i
                      ></a>
                      <a href="javacript:void(0)" class="action"
                        ><i class="ti-check text-success"></i></a
                      ><span class="time pull-right">April 14, 2016</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
              <div class="white-box">
                <h3 class="box-title">You have 5 new messages</h3>
                <div class="message-center">
                  <a href="#">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/pawandeep.jpg"
                        alt="user"
                        class="img-circle"
                      />
                      <span class="profile-status online pull-right"></span>
                    </div>
                    <div class="mail-contnet">
                      <h5>Pavan kumar</h5>
                      <span class="mail-desc">Just see the my admin!</span>
                      <span class="time">9:30 AM</span>
                    </div>
                  </a>
                  <a href="#">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/sonu.jpg"
                        alt="user"
                        class="img-circle"
                      />
                      <span class="profile-status busy pull-right"></span>
                    </div>
                    <div class="mail-contnet">
                      <h5>Sonu Nigam</h5>
                      <span class="mail-desc"
                        >I've sung a song! See you at</span
                      >
                      <span class="time">9:10 AM</span>
                    </div>
                  </a>
                  <a href="#">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/arijit.jpg"
                        alt="user"
                        class="img-circle"
                      />
                      <span class="profile-status away pull-right"></span>
                    </div>
                    <div class="mail-contnet">
                      <h5>Arijit Sinh</h5>
                      <span class="mail-desc">I am a singer!</span>
                      <span class="time">9:08 AM</span>
                    </div>
                  </a>
                  <a href="#">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/genu.jpg"
                        alt="user"
                        class="img-circle"
                      />
                      <span class="profile-status online pull-right"></span>
                    </div>
                    <div class="mail-contnet">
                      <h5>Genelia Deshmukh</h5>
                      <span class="mail-desc"
                        >I love to do acting and dancing</span
                      >
                      <span class="time">9:08 AM</span>
                    </div>
                  </a>
                  <a href="#" class="b-none">
                    <div class="user-img">
                      <img
                        src="/assets/plugins/images/users/pawandeep.jpg"
                        alt="user"
                        class="img-circle"
                      />
                      <span class="profile-status offline pull-right"></span>
                    </div>
                    <div class="mail-contnet">
                      <h5>Pavan kumar</h5>
                      <span class="mail-desc">Just see the my admin!</span>
                      <span class="time">9:02 AM</span>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
        <footer class="footer text-center">
          2020 &copy; Pixel Admin brought to you by
          <a href="https://www.wrappixel.com/">wrappixel.com</a>
        </footer>
      </div>
      <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="/assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/assets/admin/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="/assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="/assets/admin/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="/assets/admin/js/waves.js"></script>
    <!--Counter js -->
    <script src="/assets/plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="/assets/plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!--Morris JavaScript -->
    <script src="/assets/plugins/bower_components/raphael/raphael-min.js"></script>
    <script src="/assets/plugins/bower_components/morrisjs/morris.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="/assets/admin/js/custom.min.js"></script>
    <script src="/assets/admin/js/dashboard1.js"></script>
    <script src="/assets/plugins/bower_components/toast-master/js/jquery.toast.js"></script>
    
  </body>
</html>
