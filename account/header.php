<html lang="en">
<!-- dont remove this, it'll break for the menu bar for some reason -->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />	
	<link rel="icon" href="image/icon.png">		
    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap3/css/font-awesome.css" rel="stylesheet" />    
	<link href="assets/css/gsdk.css" rel="stylesheet" />   
    <link href="assets/css/demo.css" rel="stylesheet" /> 
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
  	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	
<!-- navigation -->
 <nav class="nav navbar-nav" role="navigation">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
		</br>
		  <li><a href="index.php"><b><span class="glyphicon glyphicon-cloud"></span> Social Cloud</b></a></li>
		  <li><li><a href="<?= ACC_SCRIPTROOT ?>profile.php?username=<?php echo $_SESSION['auth']['username'] ?>"><span class="label label-success">Profile</span></a></li>
		  <li><a href="edit_profile.php"><span class="label label-default">Update Profile</span></a></li>
		  <li><a href="friends.php"><span class="label label-default">Friends</span></a></li>  
		  <li><a href="index.php"><span class="label label-default">Feeds</span></a></li>
		  <li><a href="<?= SCRIPTROOT ?>logout.php"><span class="label label-danger"><span class="glyphicon glyphicon-log-in"></span> Logout</span></a></li>
			<!-- search bar --->
			<form action="search.php" method="get" class="navbar-form navbar-left">
              <div class="form-group">
                <input type="text" name="q" class="form-control" placeholder="find friends">
              </div>
              <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Search</button>
            </form>
	</ul>
  </div>
</nav>

