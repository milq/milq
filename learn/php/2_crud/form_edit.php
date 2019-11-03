<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Classroom - Edit a student</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <?php
  require_once('connect_db.php');

  if (isset($_GET['id'])) {
    $id = $_GET['id'];
  }

  $sql = 'SELECT * FROM students WHERE id=?';
  $sth = $dbh->prepare($sql);
  $sth->execute(array($id));
  $result = $sth->fetch();
  ?>

  <body>
    <h1>Edit a student</h1>
    <form action='edit.php' method='post'>
      <input type='hidden' name='id' value='<?= $id ?>' />
      First name: <input type='text' name='first_name' title='First name' required='required' value='<?= $result['first_name'] ?>'/><br />
      Last name: <input type='text' name='last_name' title='Last name' required='required' value='<?= $result['last_name'] ?>'/><br />
      Nickname: <input type='text' name='nickname' title='Nickname' required='required' value='<?= $result['nickname'] ?>'/><br />
      Date of birth: <input type='date' name='date_of_birth' title='Date of birth' required='required' value='<?= $result['date_of_birth'] ?>'/><br />
      Mark: <input type='number' name='mark' title='Mark' required='required' value='<?= $result['mark'] ?>'/><br />
      <input type='submit' />
    </form>

    <p><a href='index.php'>Back to index</a>.</p>

  </body>
</html>
