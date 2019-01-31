<?php include "../control/includes.php" ?>
<?php include "header.php" ?>
<div class="main"></br></br></br></br></br>
<div class="container tim-container">
<div class="row">
<?php
  if(isset($_GET["q"]) && !empty($_GET["q"])){
      $search_data_ent = trim(addslashes($_GET['q']));
      $search_data_ent = preg_split("/[\s]+/",$search_data_ent);
      foreach ($search_data_ent as $search_data) {
        $search_data = $db->quote($search_data);
        $users = $db->query("SELECT * FROM users WHERE username=$search_data OR first_name=$search_data OR last_name=$search_data ORDER BY first_name ASC");
      }
  }else {
    $users = $db->query("SELECT * FROM users");
  }
 ?>
 <?php include "header_account.php" ?>
 <?php if ($users->rowCount() <= 0): ?>
   <div class="alert alert-danger">
      User  " <strong><?php echo $_GET["q"] ?></strong>" not found!
   </div>
 <?php endif; ?>
 <div class="row">
 <?php foreach ($users as $key => $user): ?>
  <div class="thumbnail col-sm-3">
<div class="caption">
  <h5><a href="profile.php?username=<?php echo $user['username'] ?>"><?php
  $id= $user['id'];
   if(!empty($user["first_name"]))
     {
       echo $user['first_name']." ".$user['last_name']; ;
     } else {
       echo $user['username'];
    }
  ?></a>
  <?php if (is_friends($db,$user["id"],$_SESSION["auth"]["id"]) === 1){ ?>
    <span class="label label-primary pull-right">Friend</span>
  <?php } elseif (is_friends($db,$user["id"],$_SESSION["auth"]["id"]) != 1 && is_friends($db,$user["id"],$_SESSION["auth"]["id"]) != 0 ) { ?>
    <span class="label label-warning pull-right">Pending</span>
  <?php } ?>
</h5>
  <?php echo $user["location"] ?>
</div>
 </div>
 <div class="col-sm-1"></div>
 <?php endforeach; ?>
 </div>
<?php include "footer.php" ?>
