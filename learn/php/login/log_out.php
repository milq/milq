<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Log in and sign up template</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
	  
  <h1>Log in</h1>

  <?php
  
    session_start();
    
    session_destroy();

	echo '<p>You have successfully logged out.</p>';
	
  ?>

  <a href='index.php'>Back to index.</a>

  </body>
</html>
