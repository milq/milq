<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Log in and sign up template</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
	  
  <h1>Sign up</h1>

  <?php

	require_once('connect_db.php');

	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if (strlen($username) === 0 || strlen($password) === 0) {
	    echo '<p>Your username and/or password is missing.</p>';
	}
	else {
		$sql = 'INSERT INTO users(username,password,active,role) values(?,?,?,?)';
        $sth = $dbh->prepare($sql);
        $success = $sth->execute(array($username, $password, 'yes', 'user'));
        
        if ($success) {
			echo '<p>Congratulations! You create an username with an user role.</p>';
		}
		else {
			echo '<p>There was an error during registration. Maybe username already exists.</p>';			
		}
	}
  ?>
  
  <a href='index.php'>Back to index.</a>

  </body>
</html>
