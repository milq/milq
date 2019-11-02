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

  $username_regex = '/^[A-Za-z][A-Za-z0-9]{3,31}$/';

  // https://www.coding.academy/blog/how-to-use-regular-expressions-to-check-password-strength
  $password_regex = '/^(?=.*[!@#$%^&*-])(?=.*[0-9])(?=.*[A-Z]).{8,20}$/';

  if (preg_match($username_regex, $username) === 0) { ?>

  <p>Your username:</p>

  <ul>
    <li>Must start with letter.</li>
    <li>It contains 4-32 characters.</li>
    <li>Letters and numbers only.</li>
  </ul>

  <?php } elseif (preg_match($password_regex, $password) === 0) { ?>

  <p>Your password:</p>

  <ul>
    <li>Must be a minimum of 8 characters.</li>
    <li>Must contain at least 1 number.</li>
    <li>Must contain at least one uppercase character.</li>
    <li>Must contain at least one one of the following special characters: <code>!@#$%^&amp;*-</code>.</li>
  </ul>

  <?php } else {

  $sql = 'INSERT INTO users(username,password,active,role) values(?,?,?,?)';
  $sth = $dbh->prepare($sql);
  $success = $sth->execute(array($username, $password, 'yes', 'user'));

  if ($success) { ?>

  <p>Congratulations! You create an username with an user role.</p>

  <?php } else { ?>

  <p>There was an error during registration. Maybe username already exists.</p>

  <?php } } ?>

  <a href='index.php'>Back to index.</a>

  </body>
</html>
