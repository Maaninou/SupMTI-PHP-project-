<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);
if (strlen($_SESSION['hbmsuid']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['submit']))
{
$uid=$_SESSION['hbmsuid'];
$cpassword=md5($_POST['currentpassword']);
$newpassword=md5($_POST['newpassword']);
$sql ="SELECT ID FROM tbluser WHERE ID=:uid and Password=:cpassword";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uid', $uid, PDO::PARAM_STR);
$query-> bindParam(':cpassword', $cpassword, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);

if($query -> rowCount() > 0)
{
$con="update tbluser set Password=:newpassword where ID=:uid";
$chngpwd1 = $dbh->prepare($con);
$chngpwd1-> bindParam(':uid', $uid, PDO::PARAM_STR);
$chngpwd1-> bindParam(':newpassword', $newpassword, PDO::PARAM_STR);
$chngpwd1->execute();

echo '<script>alert("Ton mot de passe est changé")</script>';
} else {
echo '<script>alert("Ton mot de passe actuel est faux")</script>';

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
function checkpass()
{
if(document.changepassword.newpassword.value!=document.changepassword.confirmpassword.value)
{
alert('Merci de réessayer');
document.changepassword.confirmpassword.focus();
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
					
					<h2>Changer mot de passe</h2>
					
				<div class="contact-grids">
					
						<div class="col-md-6 contact-right">
							<form method="post" onsubmit="return checkpass();" name="changepassword">
								
								<h5>Mot de passe actuel</h5>
								<input type="password" class="form-control" style="font-size: 20px" required="true" name="currentpassword">
								<h5>Nouveau mot de passe</h5>
								<input type="password" class="form-control"  required="true" name="newpassword" style="font-size: 20px">
								<h5>Confirmer mot de passe</h5>
								<input type="password" class="form-control"  required="true" name="confirmpassword" style="font-size: 20px" >
								
								<br />
								
								<br/>
								 <input type="submit" value="Changer" name="submit">
						 	 </form>

						</div>
						<div class="col-md-6 contact-right">
							
						 	 <img src="images/img.jpg" width="400" height="400" />

						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<?php include_once('includes/getintouch.php');?>
			</div>
			<?php include_once('includes/footer.php');?>
</html><?php }  ?>
