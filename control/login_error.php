<!-- if password or username is wrong -->
<?php if ($connected === false): ?>
	<div class="alert alert-danger">Invalid username or password!</div>
		<?php $connected = null; ?>
<?php endif; ?>