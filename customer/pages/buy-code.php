<?php

require 'dbcon.php';


if(isset($_POST['submit']))
{
	$fname =mysqli_real_escape_string($con,$_POST['fname']);
	$lname =mysqli_real_escape_string($con,$_POST['lname']);
	$address =mysqli_real_escape_string($con,$_POST['address']);
	$pincode=mysqli_real_escape_string($con,$_POST['pincode']);
	$dis=mysqli_real_escape_string($con,$_POST['dis']);
	$city=mysqli_real_escape_string($con,$_POST['city']);
	$product =mysqli_real_escape_string($con,$_POST['product']);
	$phone =mysqli_real_escape_string($con,$_POST['phone']);




$query =" INSERT INTO `purchase`(`id`, `fname`, `lname`, `address`, `pincode`, `dis`, `city`, `product`, `phone`) VALUES ('','$fname','$lname','$address','$pincode','$dis','$city','$product','$phone')";

$query_run =mysqli_query($con,$query);
if($query_run){
  
	header("Location:store.php");
	exit(0);
}
    else{
    
	header("Location:store.php");
	exit(0);
    }                            

}
?>