<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Log in and sign up template</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
	  
	<h1>User web page</h1>

    <?php
    
        session_start();
    
        if (isset($_SESSION['username'])) {
			echo '<p>Welcome, ' . $_SESSION['username'] . '! <a href=\'log_out.php\'>Log out</a>.</p>';
		}
		else {
			echo '<p>You are not logged in. Please log in and try again.</p>';
		}
    ?>
    <a href='index.php'>Back to index.</a>
  </body>
</html>
