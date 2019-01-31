<?php include "header.php" ?>
<?php $auth = 0 ?>
<?php include "control/includes.php" ?>
<?php include "control/login_query.php"?>
		<!-- background banner -->
        <div class="blurred-container">
            <div class="img-src" style="background-image: url('image/banner3.png')"></div>
        </div>
    </div>
</div>
<div class="main">
    <div class="container tim-container" style="max-width:800px; padding-top:100px">
		<div class="" style="background-color:#70bad9">
			<font color="white">
			<center><b><strong><h2>Login</h2></strong></b></font>
			<!-- ask to signup as alternative -->
			<small><font color="white">Don't have an account? </small><a href="signup.php"><font color="#004d99">Signup</font></a><p></p>
			</center>
			</font>
</div>
	<div class="" style="background-color:#f3fafe">
		<?php include "control/login_error.php"?>
<!-- sign up -->
			<!-- form to login -->
				<form action="" method="post">
						<div class="form-group col-sm-12">
							<label for="username">Username</label>
							<?= input("username", "text") ?>
						</div>
						<div class="form-group col-sm-12">
							<label for="password">Password</label>
							<?= input("password", "password") ?>
						</div>
							<br></br>
						<!-- submit form -->
						<div class="form-group col-sm-12">
							<button value="submit" type="submit" class="btn btn-info">Login</button>
						</div>
				</form>
</div>	
<?php include "footer.php" ?>
