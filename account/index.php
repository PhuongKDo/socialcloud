<!doctype html>
<?php include "../control/includes.php" ?>
<?php include "header_account.php" ?>
<?php include "header.php" ?>
<!-- dont remove this, it'll break for the menu bar for some reason -->
<html lang="en">
<head>
	<meta charset="utf-8" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
	
    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap3/css/font-awesome.css" rel="stylesheet" />
    
	<link href="assets/css/gsdk.css" rel="stylesheet" />   
    <link href="assets/css/demo.css" rel="stylesheet" /> 

    <!--     Font Awesome     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
  
</head>

<body>

<!--Start code---------------------->

<div class="main">
<div class="container tim-container">
<div class="row">
  <div class="col-sm-8" >
    <div class="page-header" style="background-color:#f3fafe; width:500px">
	<div class="" style="background-color:#70bad9">
				<font color="white">
				<center><b><strong><h4><?php echo $_SESSION['auth']['username'] ?>
				</h4></strong></b></font></div>
	<!-- make a form to post current user status-->
    <form class="" action="posts.php" method="post">
      <div class="form-group">
        <textarea name="post_content" rows="4" cols="20" style="resize:none;" class="form-control" placeholder="how was your day?"></textarea>
      </div>
      <div class="form-group">
        <button type="submit" name="submit" class="btn btn-primary"><span class="glyphicon glyphicon-bullhorn"></span> Post status</button>
      </div>
    </form>
	
	<!-- end form-->
    </div>
	
    <!-- showing the posting messages -->
    <?php if (isset($_SESSION["post_error"])): ?>
      <div class="alert alert-danger" style="width:500px">
        invalid post content
      </div>
    <?php unset($_SESSION["post_error"]) ?>
    <?php endif; ?>
    <?php if (isset($_SESSION["post_success"])): ?>
      <div class="alert alert-success"  style="width:500px">
        status successfully posted
      </div>
    <?php unset($_SESSION["post_success"]) ?>
    <?php endif; ?>
    <!-- showing the deleting messages -->
    <?php if (isset($_SESSION["delete_error"])): ?>
      <div class="alert alert-danger"  style="width:500px">
        something went wrong while deleting the status
      </div>
    <?php unset($_SESSION["delete_error"]) ?>
    <?php endif; ?>
    <?php if (isset($_SESSION["delete_success"])): ?>
      <div class="alert alert-success"  style="width:500px">
        status successfully deleted
      </div>
    <?php unset($_SESSION["delete_success"]) ?>
	<?php endif; ?>
	<!-- end posting status-->

	
      <!-- showing the posts -->
    <?php
        $user_id = $_SESSION["auth"]["id"];
		
        // adding the replies
        if (isset($_POST["reply"]) && !empty($_POST["reply"])) {
            $post_to_reply = $db->quote($_POST["submit_reply"]);
            $reply_content = $db->quote($_POST["reply"]);
            $db->query("INSERT INTO replies SET owner_id=$user_id, post_reply_id=$post_to_reply, reply_content=$reply_content");
            ("location: index.php?");
        }
        $select = $db->query("SELECT posts.content, posts.created_at, posts.owner_id,posts.id AS post_id,
                                    users.first_name, users.last_name, users.username
                        FROM posts INNER JOIN users ON
                        posts.owner_id = users.id ORDER BY posts.created_at DESC
                        ");
       $replies = $db->query("SELECT replies.owner_id, replies.post_reply_id, replies.reply_content,replies.created_at,
                          users.first_name, users.last_name, users.username
                           FROM replies LEFT JOIN users ON
                           replies.owner_id = users.id ORDER BY replies.created_at DESC
                           ");
       $count_likes = $db->query("SELECT * FROM likes_control");

        if ($select->rowCount() >= 1) {
            $posts = $select->fetchAll();
        if ($count_likes->rowCount() >= 1) {
          $count_likes = $count_likes->fetchAll();
        }
		
        if ($replies->rowCount() >= 1) {
          $replies = $replies->fetchAll();
        }
          foreach ($posts as $post) {
            if (is_friends($db, $post["owner_id"], $user_id) == 1 || $post["owner_id"] == $user_id) {
              ?>
              <div class="media" style="background-color:#f3fafe; width:500px;">
                <div class="media-body">
                  <h4 class="media-heading">
				  <span class="glyphicon glyphicon-triangle-right"></span><a href="profile.php?username=<?php echo $post['username'] ?>"><?php
                  if(!empty($post["first_name"]) && !empty($post["last_name"])){
                    echo $post["first_name"]." ".$post["last_name"];
                  }else {
                    echo $post["username"];
                  }?>
                </a></h4>
                <blockquote class="blockquote-reverse">
                  <p><?php echo $post["content"] ?></p>
                  <footer>posted : <?php echo $post["created_at"] ?></footer>
                </blockquote >
						<!-- retweet-->	
		<form class="" action="posts.php" method="post">
			  <div class="form-group"  style="visibility: hidden; display:inline;" >
				<textarea name="post_content" rows="1" cols="1" style="resize:none;" class="form-control">Repost: 
				User: <?php echo $post["username"]?> 
				Feed: <?php echo $post["content"] ?> 
				Posted: <?php echo $post["created_at"] ?>
				</textarea>
			  </div>
			  <div class="form-group">
				 <button type="submit" name="submit" class="badge">share</button>
			  </div>
		</form>
		<!-- retweet-->	
		
                <div class="media">
                    <div class="media-body">
                      <p class="media-heading">
                           <?php if ($post["owner_id"] == $user_id): ?>
                            <a class="text-center" href="status.php?stri=<?php echo $post['post_id'] ?>"><span class="glyphicon glyphicon-trash"></span></a> /
                           <?php endif; ?>
                           <span class="label label-info"><?php if ($post["owner_id"] != $user_id && !is_liked($db , $user_id, $post["post_id"])): ?></span>
                             <a class="text-center" href="status.php?stli=<?php echo $post['post_id'] ?>"><span class="glyphicon glyphicon-thumbs-up"></span></a> /
                           <?php endif; ?> <?php
                           $like_count = 0;
                            foreach ($count_likes as $like) {
                              if ($post["post_id"] == $like["like_post_id"]) {
                                $like_count += 1;
                              }
                            }
                            echo "$like_count : likes / ";
                              $reply_count = 0;
                              foreach ($replies as $reply) {
                                if ($post["post_id"] == $reply["post_reply_id"] ) {
                                  $reply_count += 1;
                                }
                              }
                              echo "$reply_count : replies";
                            ?>
                     <!-- showing the replies -->
                      <?php
                          foreach ($replies as $reply) {
                            if ($post["post_id"] === $reply["post_reply_id"]) {
                              ?>
                              <div class="media">
                                <div class="media-body">
                                  <p class="media-heading"><span class="glyphicon glyphicon-triangle-right"></span><a href="profile.php?username=<?php echo $reply['username'] ?>"><?php
                                  if(!empty($reply["first_name"]) && !empty($reply["last_name"])){
                                    echo $reply["first_name"]." ".$reply["last_name"];
                                  }else {
                                    echo $reply["username"];
                                  }?>
                                </a></p>
                                   <?php echo $reply["reply_content"] ?>
                                </div>
                              </div>
                              <div class="" style="height : 10px;"></div>
                              <?php
                            }
                          }
                       ?>
                        <form class="rpl-form" action="" method="post">
                          <div class="form-group">
                            <textarea name="reply" style="resize:none;" class="form-control" rows="2" cols="40" placeholder="reply"></textarea>
                          </div>
                          <div class="form-goup">
                            <button type="submit" class="btn btn-primary" name="submit_reply" value="<?php echo $post["post_id"] ?>">Reply</button>
                          </div>
                        </form>
                    </div>
                </div>
              </div>
            </div>
            <?php
            }
          }
        }else {
          ?>
            <h5>no posts in your time line !!!</h5>
          <?php
        }
    ?>
  </div>
</div>

<?php include "footer.php" ?>
