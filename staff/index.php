<?php session_start();
include('dbcon.php'); ?>
<!DOCTYPE html>
<html lang="en">
   
<head>
        <title>Gym System Admin</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>


<style type="text/css">
    
    body{
       background-image:url('../img/wave.png');
       background-repeat: no-repeat;
       background-size:50% 100%;!important;
       background-color: white!important;


    }



#loginbox form {
    width: 100%;
    background:#FAFAFA;
    position: relative;
    top: 0;
    left: 0;
    border-color:#E6E6E6;
    box-shadow:1px 1px #E6E6E6;

}
</style>



    </head>
    
    <body>
    
  <img src="../img/gym.png"width="400px"style="margin-left:10px;">
    <div id="loginbox"style="margin-left:750px;margin-top:-250px;">   


            <form id="loginform" class="form-vertical" method="POST" action="#">
                 <img src="../img/logo.png"width="150px"style="margin-left:130px;">
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><input type="text" name="user" placeholder="Username" required/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="pass" placeholder="Password" required />
                        </div>
                    </div>
                </div>
                <div class="form-actions center">
                    <!-- <span class="pull-right"><a type="submit" href="index.html" class="btn btn-success" /> Login</a></span> -->
                    <!-- <input type="submit" class="button" title="Log In" name="login" value="Admin Login"></input> -->
                    <button type="submit" class="btn btn-block btn-large btn-primary" title="Log In" name="login" value="Admin Login">Staff Login</button>
                </div>
            </form>
            <?php
                if (isset($_POST['login']))
                    {
                        $username = mysqli_real_escape_string($con, $_POST['user']);
                        $password = mysqli_real_escape_string($con, $_POST['pass']);

                        
                        $query 		= mysqli_query($con, "SELECT * FROM staffs WHERE password='$password' and username='$username'");
                        $row		= mysqli_fetch_array($query);
                        $num_row 	= mysqli_num_rows($query);
                        
                        if ($num_row > 0) 
                            {			
                                $_SESSION['user_id']=$row['user_id'];
                                header('location:staff-pages/index.php');
                                
                            }
                        else
                            {
                                echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                                Invalid Username and Password
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                    <span aria-hidden='true'>&times;</span>
                                </button>
                                </div>";
                            }
                    }
            ?>
            <div class="pull-left">
            <a href="../index.php"><h6>Admin Login</h6></a>
            </div>

            <div class="pull-right">
            <a href="../customer"><h6>Customer Login</h6></a>
            </div>
            
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/matrix.login.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
<script src="js/matrix.js"></script>
    </body>

</html>
