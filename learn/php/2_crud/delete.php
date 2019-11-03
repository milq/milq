<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Classroom - Delete a student</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <?php
  require_once('connect_db.php');

  if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (!filter_var($id, FILTER_VALIDATE_INT)) {
      die('Error: the ID is not an integer.');
    }
    $sql = 'DELETE FROM students WHERE id=?';
    $sth = $dbh->prepare($sql);
    $sth->execute(array($id));
  }
  else {
    die('Error: the ID is empty.');
  }
  ?>

  <body>
    <h1>Delete a student</h1>

    <p>The has been deleted successfully.</p>

    <p><a href='index.php'>Back to index</a>.</p>

  </body>
</html>
