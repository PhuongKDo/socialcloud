<!doctype html>
<?php include "../control/includes.php" ?>
<?php include "header_account.php" ?>
<?php include "header.php" ?>


<body>

<!--Start code---------------------->
<div class="main"></br></br></br></br></br>
<div class="container tim-container">
<div class="row">
	<div class="" style="background-color:#d9e1e4">
		<font color="white">
		<center><b><strong><h4> <span class="glyphicon glyphicon-envelope"></span>  Friend Requests</h4></strong></b></font>
          <?php
            $id = $db->quote($_SESSION["auth"]["id"]);
            $friend_id = null;
            $sender_id = null;
            $reciever_id = null;
            //showing friends requests
            $requests_info = $db->query("SELECT * FROM friends_control WHERE req_rec_id = $id OR req_sen_id = $id");
            if ($requests_info->rowCount() >= 1) { ?>
              <?php
              $requests_info = $requests_info->fetchAll();
              foreach ($requests_info as $request_info) {
                if (!$request_info["status"]) {
                  $sender_id = $request_info["req_sen_id"];
                  $reciever_id = $request_info["req_rec_id"];
                  ?>
                  <div class="thumbnail col-sm-2">
                    <?php if ($sender_id != $_SESSION["auth"]["id"]): ?>
                    <?php $request_owner = get_by_id($db, $sender_id); ?>
                        <div class="caption">
                          <h5><a href="profile.php?username=<?php echo $request_owner['username'] ?>">
                          <?php if(empty($request_owner["first_name"]) && !empty($request_owner["last_name"])){
                            echo $request_owner["username"];
                            }else {
                            echo $request_owner["first_name"]." ".$request_owner["last_name"];
                            } ?></a></h5>
                          <p>
                            <?php echo $request_owner["location"] ?>
                          </p>
                            <p>
                              <div class="row">
                                <form class="col-sm-6" action="cancel_request.php" method="post"><!--if the the status is pending show the cancel request button-->
                                  <button type="submit" class="btn btn-warning" value="<?php echo $request_owner['id'] ?>" name="remove_request">cancel</button>
                                </form>
                                <form class="col-sm-6" action="accept_request.php" method="post"><!--if the the status is pending show the accept request button-->
                                  <button type="submit" class="btn btn-success" value="<?php echo $request_owner['id'] ?>" name="accept_friend">accept</button>
                                </form>
                              </div>
                            </p>
                          <?php endif; ?>
                          <?php if ($sender_id === $_SESSION["auth"]["id"]): ?>
                          <?php $request_owner = get_by_id($db, $reciever_id); ?>
                            <div class="caption">
                              <h5><a href="profile.php?username=<?php echo $request_owner['username'] ?>">
                              <?php if(empty($request_owner["first_name"]) && !empty($request_owner["last_name"])){
                                echo $request_owner["username"];
                              }else {
                                echo $request_owner["first_name"]." ".$request_owner["last_name"];
                              } ?></a></h5>
                              <p>
									<center><?php echo $request_owner['username']?></center>
                              </p>
                            <p>
                            <div class="row">
                              <form class="col-sm-12" action="cancel_request.php" method="post"><!--if the the status is pending show the cancel request button-->
                                <button type="submit" class="btn btn-warning col-sm-12" value="<?php echo $request_owner['id'] ?>" name="remove_request"> cancel request </button>
                              </form>
                          </div>
                          </p>
                          <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-1"></div><!--styling div-->
                  <?php
                }
              }
              ?>
			  </div>
              </div>
            <?php
            }else {
              ?>
              <p class="text-center">
                You have no friends requests.
              </p>
              <?php
            }
           ?>
           <div class="row">	   
				<div class="" style="background-color:#70bad9">
				<font color="white">
				<center><b><strong><h4> <span class="glyphicon glyphicon-heart"></span>  Your Friends</h4></strong></b></font>
			<!-- ask to signup as alternative -->
			</center>
			</font>
			</div>
           <?php
            //showing friends
            $friends_info = $db->query("SELECT * FROM friends_control WHERE (req_rec_id = $id OR req_sen_id = $id) AND status = 1");
            if ($friends_info->rowCount() >= 1) {
              $friends_info = $friends_info->fetchAll();
              ?>
              <?php
              foreach ($friends_info as $friend_info) {
                if ($_SESSION["auth"]["id"] === $friend_info["req_sen_id"]) {
                    $friend_id = $friend_info["req_rec_id"];
                }else {
                    $friend_id = $friend_info["req_sen_id"];
                }
                $friend = get_by_id($db, $friend_id);
                ?>
                  <div class="thumbnail col-sm-2">
				  <center><?php echo $friend['username'] ?></center>
                        <div class="caption">
                          <h5><a href="profile.php?username=<?php echo $friend['username'] ?>">
                          <?php if(empty($friend["first_name"]) && !empty($friend["last_name"])){
                            echo $friend["username"];
                          }else {
                            echo $friend["first_name"]." ".$friend["last_name"];
                          } ?></a></h5>
                          <p>
                            <?php echo $friend["location"] ?>
                          </p>
                          <p>
                            <div class="row">
                              <form role="button" class="col-sm-12" action="delete_friend.php" method="post">
                                <button role="button" type="submit" class="btn btn-danger col-sm-12" name="delete_friend" value="<?php echo $friend['id'] ?>">delete</button>
                              </form>
                            </div>
                          </p>
                        </div>
                    </div>
                    <div class="col-sm-1"></div><!--styling div-->
                      <?php
                    }
                    ?>
                  </div>
              <?php
            }else {
              ?>
                <p class="text-center">
                  You have no friends...
                </p>
              <?php
            }
           ?>

<!--Start code---------------------->
</div>
</div>
<!-- end main -->

</body>

    <script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

	<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="assets/js/gsdk-checkbox.js"></script>
	<script src="assets/js/gsdk-radio.js"></script>
	<script src="assets/js/gsdk-bootstrapswitch.js"></script>
	<script src="assets/js/get-shit-done.js"></script>
	
    <script src="assets/js/custom.js"></script>

</html>
<?php include "footer.php" ?>
