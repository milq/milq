<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Log in and sign up template</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>
  <?php session_start(); ?>
  <body>
    <h1>Admin web page</h1>

    <?php if (isset($_SESSION['username']) === false) { ?>

    <p>You are not logged in. Please log in and try again.</p>

    <?php } else { ?>

    <?php if ($_SESSION['role'] !== 'admin') { ?>

    <p>You do not have permission to access this page, please log in as an administrator.</p>

    <?php } else { ?>

    <!-- Your admin webpage starts here -->

    <p>Welcome, <?= $_SESSION['username'] ?>! <a href='log_out.php'>Log out</a>.</p>

    <!-- Your admin webpage ends here -->

    <?php } } ?>

    <a href='index.php'>Back to index.</a>
  </body>
</html>
