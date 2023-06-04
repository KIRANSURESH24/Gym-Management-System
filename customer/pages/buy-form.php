

<!DOCTYPE html>
<html lang="en">
<head>
<title>Gym System</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="../css/fullcalendar.css" />
<link rel="stylesheet" href="../css/matrix-style.css" />
<link rel="stylesheet" href="../css/matrix-media.css" />
<link href="../font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="index.php">Perfect Gym System</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<?php include '../includes/topheader.php'?>
<!--close-top-Header-menu-->
<!--sidebar-menu-->
<?php $page="todo"; include '../includes/sidebar.php'?>

<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.php" title="You're right here" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    
<!--End-Action boxes-->    

    <div class="row-fluid">
	  
    <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-pencil"></i> </span>
            <h5>Products ordering</h5>
          </div>
          <div class="widget-content nopadding">
            <form id="form-wizard" class="form-horizontal" action="buy-code.php" method="POST">
              <div id="form-wizard-1" class="step">

              <div class="control-group">
                <label class="control-label">Full Name :</label>
                <div class="controls">
                    <input type="text" class="span11" name="fname" placeholder="Enter Your Full name* . . ." required>
                </div>
                </div>

                <div class="control-group">
                <label class="control-label">Last Name :</label>
                <div class="controls">
                    <input type="text" class="span11" name="lname" placeholder="Enter Your Last name . . ." />
                </div>
                </div>

                 <div class="control-group">
                <label class="control-label">Adress :</label>
                <div class="controls">
                    <input type="text-area" class="span11" name="address" placeholder="Enter Your Address*. . ." required>
                </div>
                </div>


                 <div class="control-group">
                <label class="control-label">Pincode :</label>
                <div class="controls">
                    <input type="number" class="span5" name="pincode" placeholder="Enter Your pincode*. . ." required>
                </div>
                </div>


                          <div class="control-group">
                    <label class="control-label">Your District:</label>
                    <div class="controls">
                        <select name="dis" required="required" >
                        <option>Thiruvananthapuram</option>
                        <option>Kollam</option>
                        <option>Pathanamthitta</option>
                        <option>Alappuzha</option>
                        <option>Ernakulam</option>
                        <option >Idukki</option>
                        <option >Kottayam</option>
                          <option >Malapuram</option>
                        <option>Wayanadu</option>
                        <option>Kozhikode</option>
                          <option >Kannur</option>
                            <option>Kasargode</option>
                      

                        </select>
                    </div>
                </div>
                 
                 <div class="control-group">
                <label class="control-label">City:</label>
                <div class="controls">
                    <input type="text" class="span5" name="city" placeholder="Enter Your City*. . ." required>
                </div>
                </div>
                   


                                                         <div class="control-group">
                                                            <label class="control-label">Project category</label>
                                                            <div class="controls">
                                                                <select  class="form-control" name="product" ><option>select Your Product</option>
                                                                    <?php 
                                                           
                                                                    require 'dbcon.php';
                                                                    ?>
                                                                    <?php
                                                                $qe=mysqli_query($con,"SELECT * FROM products");
                                                                while($ft=mysqli_fetch_row($qe)){
                                                                ?>
                                                        
                                                                    <option><?php echo $ft[2] ?></option>
                                                                    
                                                                <?php }
                                                                ?>
                                                                </select>
                                                            </div>
                                                        </div>



                  <div class="control-group">
                <label class="control-label">Contact No :</label>
                <div class="controls">
                    <input type="number" class="span5" name="phone" placeholder="Enter Your Phone No*. . ." required>
                </div>
                </div>

         

              <div class="form-actions">
            <div class="text-center">
                                                                    <div class="col-sm-12">
                                                                        <input type="submit"
                                                                         class="btn btn-success" name="submit" value="Submit">
                                                                    </div>
                                                                </div>
                <div id="status"></div>
              </div>
              <div id="submitted"></div>
            </form>
          </div><!--end of widget-content -->
        </div><!--end of widget box-->
      </div><!--end of span 12 -->
	  
	  
	  
    </div><!-- End of row-fluid -->
  </div><!-- End of container-fluid -->
</div><!-- End of content-ID -->
</div>
<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> <?php echo date("Y");?> &copy; Developed By  KIRAN S B</a> </div>
</div>

<style>
#footer {
  color: white;
}
</style>

<!--end-Footer-part-->


<script src="../js/excanvas.min.js"></script> 
<script src="../js/jquery.min.js"></script> 
<script src="../js/jquery.ui.custom.js"></script> 
<script src="../js/bootstrap.min.js"></script> 
<script src="../js/jquery.flot.min.js"></script> 
<script src="../js/jquery.flot.resize.min.js"></script> 
<script src="../js/jquery.peity.min.js"></script> 
<script src="../js/fullcalendar.min.js"></script> 
<script src="../js/matrix.js"></script> 
<script src="../js/matrix.dashboard.js"></script> 
<script src="../js/jquery.gritter.min.js"></script> 
<script src="../js/matrix.interface.js"></script> 
<script src="../js/matrix.chat.js"></script> 
<script src="../js/jquery.validate.js"></script> 
<script src="../js/matrix.form_validation.js"></script> 
<script src="../js/jquery.wizard.js"></script> 
<script src="../js/jquery.uniform.js"></script> 
<script src="../js/select2.min.js"></script> 
<script src="../js/matrix.popover.js"></script> 
<script src="../js/jquery.dataTables.min.js"></script> 
<script src="../js/matrix.tables.js"></script> 

</script>
</body>
</html>
