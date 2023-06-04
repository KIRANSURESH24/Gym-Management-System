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
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><input type="text" name="user" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="pass" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Join Now!</a></span>
                    <span class="pull-right"><button type="submit" name="login" class="btn btn-success" />Customer Login</button></span>
                </div>
                <div class="g">
                <a href="../index.php"><h6>Go Back</h6></a>
                </div>
                
                <?php
                if (isset($_POST['login']))
                    {
                        $username = mysqli_real_escape_string($con, $_POST['user']);
                        $password = mysqli_real_escape_string($con, $_POST['pass']);

                        
                        $query 		= mysqli_query($con, "SELECT * FROM members WHERE  password='$password' and username='$username' and status='Active'");
                        $row		= mysqli_fetch_array($query);
                        $num_row 	= mysqli_num_rows($query);
                        
                        if ($num_row > 0) 
                            {			
                                $_SESSION['user_id']=$row['user_id'];
                                header('location:pages/index.php');
                                
                            }
                        else
                            {
                                echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                                Invalid Username/Password or Account has been Expired!
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                    <span aria-hidden='true'>&times;</span>
                                </button>
                                </div>";
                            }
                    }
            ?>
            </form>
            <form id="recoverform" action="../customer/pages/register-cust.php" method="POST" class="form-vertical">
				<p class="normal_text">Enter your details below and we will send your details for further activation process.</p>
			

                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-pencil"></i></span><input type="text" name="fullname" placeholder="Fullname" required>
                        </div>
                    </div>

                    <br>

                        <div class="controls">
                            <div class="main_input_box">
                                <span class="add-on bg_lo"><i class="icon-leaf"></i></span><input type="text" name="username" placeholder="@username" required>
                            </div>
                        </div>

                    <br>

                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-asterisk"></i></span><input type="password" name="password" placeholder="Password" required>
                        </div>
                    </div>

                <br>

                       <div class="controls">
                            <div class="main_input_box">
                                <span class="add-on bg_lo"><i class="icon-leaf"></i></span><input type="number" name="contact" placeholder="7878787878" required>
                            </div>
                        </div>

                    <br>

                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-asterisk"></i></span><input type="text" name="address" placeholder="Address" required>
                        </div>
                    </div>

                        <br>

                        <div class="controls">
                            <div class="main_input_box">
                                <select name="gender" required="required" id="select">
                                    <option value="Male" selected="selected">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>

                        <br>

                        <div class="controls">
                            <div class="main_input_box">
                            <select name="plan" required="required" id="select">
                            <option selected="true" disabled="disabled">Select Plans</option>
                                <option value="1" >One Month</option>
                                <option value="3">Three Month</option>
                                <option value="6">Six Month</option>
                                <option value="12">One Year</option>
                            </select>
                            </div>
                        </div>

                        <br>

                        <div class="controls">
                            <div class="main_input_box">
                            <select name="services" required="required" id="select">
                            <option selected="true" disabled="disabled">Select Service</option>
                                <option value="Fitness" >Fitness</option>
                                <option value="Sauna">Sauna</option>
                                <option value="Cardio">Cardio</option>
                            </select>
                            </div>
                        </div>

                    
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><button class="btn btn-info" type="SUBMIT">Submit Details</button></span>
                </div>

                
            </form>
        </div>           
            
            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="js/jquery.min.js"></script>  
        <script src="js/matrix.login.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
<script src="js/matrix.js"></script>
    </body>

</html>
