<!-- check for signup error and display error message -->
<?php if(!empty($errors)): ?>
	<div class="alert alert-danger">
		<ul>
		<?php foreach ($errors as $value) : ?>
			<li><?= $value ?></li>
		<?php endforeach; ?>
		</ul>
	</div>	
<?php endif;?>
<!-- no error, account created -->
<?php if ($created): ?>
	<div class="alert alert-success">Your account is succefully created, you can login now!</div>
		<?php $created = false; ?>
<?php endif ?>