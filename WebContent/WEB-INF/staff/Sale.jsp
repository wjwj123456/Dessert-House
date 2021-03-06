
<%@page import="beans.Commodity_view"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Store" %>
<%@page import="beans.StoreList" %>


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
 

<!DOCTYPE html>


<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>销售</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/public/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/public/dist/css/skins/skin-purple.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/public/dist/css/AdminLTE.min.css">


</head>


<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b>L</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Sweet </b>Life</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">


          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<%=request.getContextPath()%>/public/dist/img/avatar2.png" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><%=session.getAttribute("staff_name") %></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<%=request.getContextPath()%>/public/dist/img/avatar02.png" class="img-circle" alt="User Image">

                <p>
                  <%=session.getAttribute("staff_name") %> - Waiter
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="user/personalinfopage" class="btn btn-default btn-flat"></a>
                </div>
                <div class="pull-right">
                  <a href="<%=request.getContextPath()%>/staff/loginpage" class="btn btn-default btn-flat">注销</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<%=request.getContextPath()%>/public/dist/img/avatar2.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><%=session.getAttribute("staff_name") %></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> 已登录</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
     <ul class="sidebar-menu">
        <li class="header">功能</li>
       <li class="treeview">
          <a href="#"><i class="fa-user-md fa"></i> <span>顾客信息</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
                <li><a href="<%=request.getContextPath()%>/staff/cinfo"><i class="fa fa-clone"></i> <span>会员信息</span></a></li>
		        <li><a href="<%=request.getContextPath()%>/staff/payrecord"><i class="fa fa-rmb"></i> <span>缴费记录</span></a></li>
		        <li><a href="<%=request.getContextPath()%>/staff/salerecord"><i class="fa fa-tasks"></i> <span>消费记录</span></a></li>
          </ul>
        </li>
      
        <li class="treeview active">
          <a href="#"><i class="fa-cart-arrow-down fa"></i> <span>销售</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li><a href="<%=request.getContextPath()%>/staff/sale"><i class="fa fa-birthday-cake"></i><span>购买商品</span></a></li>
            <li><a href="<%=request.getContextPath()%>/staff/cart" class="active"><i class="fa fa-cart-arrow-down"></i><span>购物车</span></a></li>
          </ul>
        </li>
         <li><a href="<%=request.getContextPath()%>/staff/sinfo"><i class="fa fa-user-md"></i> <span>注册信息</span></a></li>
        </ul> 
      
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        店面：<%=session.getAttribute("store_name") %>
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> SweetLife</a></li>
        <li class="active">Sale</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		


<jsp:useBean id="clist" class="java.util.ArrayList" scope="session"></jsp:useBean>
<jsp:useBean id="score" class="beans.Commodity_view" scope="page"></jsp:useBean>



<% clist = (ArrayList<Commodity_view>)session.getAttribute("commodity_list");%>

 <form class="form-horizontal" action="user/commoditylist">
              <div class="box-body">

              </div>

              <!-- /.box-footer -->
            </form>

		<BR>
		<TABLE class="table table-striped table-bordered">
			<TBODY>
				<TR  >
					<TH width="10%" style="text-align:center">商品名</TH>
					<TH width="10%" style="text-align:center">库存数量</TH>
					<TH width="10%" style="text-align:center">单价</TH>
					<TH width="25%" style="text-align:center">商品信息</TH>
					<TH width="6%" style="text-align:center">数量</TH>
					<TH width="15%" style="text-align:center"></TH>
				</TR>
				<%
					for (int i = 0; i < clist.size(); i++) {
						pageContext.setAttribute("score", clist.get(i));
				%>
				<TR>
					<TD align="center" id="1btn<%=i %>"><jsp:getProperty name="score" property="name" /></TD>
					<TD align="center" id="2btn<%=i %>"><jsp:getProperty name="score" property="amount"/></TD>
					<TD align="center" id="3btn<%=i %>"><jsp:getProperty name="score" property="price" /></TD>
					<TD align="center"><jsp:getProperty name="score" property="remark" /></TD>
					 
					<TD align="center">

                  <div>
                    <input type="number" class="form-control col-sm-3" name="id" id="4btn<%=i %>" value='0'>
                     </div>
                    
                    </td>
                    <td align="center">
                    <div>
                    <button id="btn<%=i%>" cid=<jsp:getProperty name="score" property="commodity_id" /> 
                     class="btn-primary pull-left col-sm-4 btn-sm sendmessage"><i class='fa  fa-cart-plus'></i></button>
                  </div>
  
					</TD>
					
				</TR>
				<%} %>
			</TBODY>
		</TABLE> 
	
      <!-- Your Page Content Here -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->

    <!-- Default to the left -->
    
  </footer>


  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.1.4 -->
<script src="<%=request.getContextPath()%>/public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/public/dist/js/app.min.js"></script>



<script type="text/javascript">

$(".sendmessage").click(function(){
	var st = $(this).attr('id');
	var name = document.getElementById("1"+st);
	var price = document.getElementById("3"+st);
	var num = document.getElementById("4"+st);
	
  	  $.post("staff/addtocart",
	  {
	    cname:$(name).text(),
	    amount:$(num).val(),
	  	price:$(price).text(),
	    commodity_id:$(this).attr('cid')
	     
	  })  
	});



</script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
