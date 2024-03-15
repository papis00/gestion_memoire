<?php

 require_once("include/connection.php");
   
   if(isset($_POST['submit'])){
    
        
         $user_name = mysqli_real_escape_string($conn,$_POST['name']);
         $email_address = mysqli_real_escape_string($conn,$_POST['email_address']);
         $user_password = password_hash($_POST['user_password'], PASSWORD_DEFAULT, array('cost' => 12));  //PASSWORD_ARGON2I//PASSWORD_ARGON2ID
         $user_status = mysqli_real_escape_string($conn,$_POST['user_status']);

	$q_checkadmin = $conn->query("SELECT * FROM `login_user` WHERE `email_address` = '$email_address'") or die(mysqli_error());
		$v_checkadmin = $q_checkadmin->num_rows;
		if($v_checkadmin == 1){
			echo '
				<script type = "text/javascript">
					alert("Desole ce email est deja inscris");
					window.location = "login.html";
				</script>
			';
		}else{
			$conn->query("INSERT INTO `login_user` VALUES('','$user_name', '$email_address', '$user_password', '$user_status')") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Felicitation vous etes inscris avec succes");window.location = "login.html";
				</script>
			';
		}
	}	


 ?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title> Gestion des mémoires  </title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/ionicons.min.css">
		<link rel="stylesheet" href="/form.css">
        <style type="text/css">
            body{
                  width: 100%;
                  background: url(image/IAM.png) ;
                  background-position: center center;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-size: cover;
                }
          </style>
	</head>

	<body>
		<section class="login first grey">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body">
							<center> <h5 style="font-family: Noto Sans;">S'inscrire à </h5><h4 style="font-family: Noto Sans;"> IAM MANAGEMENT SCHOOL </h4></center><br>
							<form method="post" action="register.php" enctype="multipart/form-data">
                                <div class="form-group">
									<label>Entrer Nom et Prénom</label>
									<input type="text" name="name" class="form-control" validate required />
								</div>
								<div class="form-group">
									<label>Entrer votre Email</label>
									<input type="email" name="email_address" class="form-control" validate required />
								</div>
								<div class="form-group">
									<label>Entrer votre mot de passe </label>
									<input type="password" name="user_password" class="form-control" validate required />
                                </div>
								<div class="form-group">
									<label>Votre Status</label>
									<input type="text" name="user_status" class="form-control" value="Etudiant" readonly="" />
								</div>
                                
								<div class="form-group text-right">
									<button class="btn btn-warning btn-lg btn-block" name="submit">S'inscrire</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted">J'ai déja un compte! </span> <a href="login.html">Se connecter  </a> Ici..
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<script src="./js/jquery-3.4.0.min.js"></script>
		<script src="./css/bootstrap.min.css"></script>
	</body>
</html>
