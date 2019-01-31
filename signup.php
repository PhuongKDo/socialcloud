<?php include "header.php" ?>
<?php $auth = 0 ?>
<?php include "control/includes.php" ?>
<?php include "control/signup_query.php"?>
		<!-- background banner -->
        <div class="blurred-container">
            <div class="img-src" style="background-image: url('image/banner2.png')"></div>
        </div>
    </div>
</div>
<div class="main">
        <div class="container tim-container" style="max-width:800px; padding-top:100px">
		<div class="" style="background-color:#70bad9">
			<font color="white">
			<center><b><strong><h2>Sign Up</h2></strong></b></font>
			<!-- ask to signup as alternative -->
			<small><font color="white">Already have an account? </small><a href="login.php"><font color="#004d99">Login</font></a><p></p>
			</center>
			</font>
			</div>
	<div class="" style="background-color:#f3fafe">
			<?php include "control/signup_error.php"?>

			<!-- sign up form -->
			<form action="" method="post">
					<div class="form-group col-sm-12">
						<label for="username">Username</label>
						<?= input("username", "text") ?>
					</div>
					<div class="form-group col-sm-12">
						<label for="email">Email</label>
						<?= input("email", "text") ?>
					</div>
					<div class="form-group col-sm-12">
						<label for="password">Password</label>
						<?= input("password", "password") ?>
					</div>
					<div class="form-group col-sm-12">
						<label for="confirm">Confirm password</label>
						<?= input("confirm", "password") ?>
					</div>
						<br></br>
					<!-- submit -->
					<div class="form-group col-sm-12">
						<button value="submit" type="submit" class="btn btn-info">Sign up</button>
					</div>
			</form>		

</div>	
<?php include "footer.php" ?>
