<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Log in and sign up template</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>

    <?php
        session_start();
    ?>

    <h1>Log in and sign up template</h1>

    <?php
        if (isset($_SESSION['username'])) {
            echo '<p>Welcome, ' . $_SESSION['username'] . "! <a href='log_out.php'>Log out</a>.</p>";
        }
        else {
            echo '<p>Welcome, guest. Please log in or sign up.</p>';
        }
    ?>

    <p><a href='web_admin.php'>Example of an admin web page.</a></p>
    <p><a href='web_user.php'>Example of an user web page.</a></p>

    <form action='log_in.php' method='post'>
      <fieldset><legend>Log in</legend>
      Username: <input type='text' placeholder='Your username' name='username' title='Username' required='required' /><br />
      Password: <input type='password' name='password' title='Password' required='required' /><br />
      <input type='submit' value='Log in' />
      </fieldset>
    </form>

    <form action='sign_up.php' method='post'>
      <fieldset><legend>Sign up</legend>
      Username: <input type='text' name='username' title='Username'  /><br />
      Password: <input type='password' name='password' title='Password' /><br />
      <input type='submit' value='Create an account' />
      </fieldset>
    </form>

  </body>
</html>
