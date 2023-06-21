<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $email=$_POST['email'];
$mobile=$_POST['mobile'];
$newpassword=md5($_POST['newpassword']);
  $sql ="SELECT Email FROM tbluser WHERE Email=:email and MobileNumber=:mobile";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':mobile', $mobile, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
$con="update tbluser set Password=:newpassword where Email=:email and MobileNumber=:mobile";
$chngpwd1 = $dbh->prepare($con);
$chngpwd1-> bindParam(':email', $email, PDO::PARAM_STR);
$chngpwd1-> bindParam(':mobile', $mobile, PDO::PARAM_STR);
$chngpwd1-> bindParam(':newpassword', $newpassword, PDO::PARAM_STR);
$chngpwd1->execute();
echo "<script>alert('Ton mot de passe a ete change');</script>";
}
else {
echo "<script>alert('email ou telephone invalide');</script>"; 
}
}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Hotel</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
<script type="text/javascript">
function valid()
{
if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
{
alert("merci de verifie la confirmation de mot de passe");
document.chngpwd.confirmpassword.focus();
return false;
}
return true;
}
</script>
</head>
<body>
		<!--header-->
			<div class="header head-top">
				<div class="container">
			<?php include_once('includes/header.php');?>
		</div>
</div>
<!--header-->
		<!--about-->
		
			<div class="content">
				<div class="contact">
				<div class="container">
					
					<h2>Changer le mot de passe</h2>
					
				<div class="contact-grids">
					
						<div class="col-md-6 contact-right">
							<form method="post" name="chngpwd" onSubmit="return valid();">
								
								<h5>Email</h5>
								<input type="email" placeholder="Email address" class="form-control" value="" name="email" required="true">
								<h5>Numero de telephone</h5>
								<input type="text" placeholder="Mobile Number" class="form-control" name="mobile" required="true">
								<h5>Mot de passe</h5>
								<input type="password" placeholder="New Password" name="newpassword" required="true" class="form-control">
								<h5>Confirmer le mot de passe</h5>
								<input type="password" placeholder="Confirm Password" name="confirmpassword" required="true" class="form-control">
								<br />
								<a href="signin.php" style="color: red">Se connecterss</a>
								<br/>
								 <input type="submit" value="changer" name="submit">
						 	 </form>

						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<?php include_once('includes/getintouch.php');?>
			</div>
			<?php include_once('includes/footer.php');?>
</html>
