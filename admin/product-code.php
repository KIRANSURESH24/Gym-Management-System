<?php 
 require 'dbcon.php';
if(isset($_POST["submit"])){

   $img_name=$_FILES["prdimg"]["name"];
   $prdname=$_POST["prdname"];
   $prdflavour=$_POST["prdflavour"];
   $prdsize=$_POST["prdsize"];
   $prddate=$_POST["prddate"];
   $prdcost=$_POST["prdcost"];


   
    $qe=mysqli_query($con,"INSERT INTO `products`(`id`, `prdimg`, `prdname`, `prdflavour`, `prdsize`, `prddate`, `prdcost`) VALUES ('','$img_name','$prdname','$prdflavour','$prdsize','$prddate','$prdcost')");
     if($qe){

$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["prdimg"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["prdimg"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
                       }
   else {
    echo "File is not an image.";
    $uploadOk = 0;
         }
}

// Check if file already exists
if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}

// Check file size
if ($_FILES["prdimg"]["size"] > 5000000) {
  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
// echo $uploadOk;
// echo $_FILES["pr_images"]["tmp_name"]."<br>";
// print_r($_FILES);
// exit();
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["prdimg"]["tmp_name"], $target_file)) {
  
        header("location:add-product.php");  } else {
    echo "Sorry, there was an error uploading your file.";
    echo $uploadOk."<br>";
echo $_FILES["prdimg"]["tmp_name"]."<br>";
print_r($_FILES);
echo"<br>".$target_file;

exit();
  }
}
        
 
}
}
?>