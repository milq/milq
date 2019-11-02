<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Classroom</title>
    <link rel='stylesheet' type='text/css' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
    <h1>Students</h1>

    <p><a href='form_add.html'>Insert a new student</a>.</p>

    <table title='Table of students'>
      <caption>Students</caption>
      <thead>
        <tr>
          <th scope='col'>ID</th>
          <th scope='col'>First name</th>
          <th scope='col'>Last name</th>
          <th scope='col'>Nickname</th>
          <th scope='col'>Date of birth</th>
          <th scope='col'>Mark</th>
          <th scope='col'>Edit</th>
          <th scope='col'>Delete</th>
        </tr>
      </thead>
      <tbody>
      <?php
      require_once('connect_db.php');

      $sql = 'SELECT * FROM students ORDER BY id';
      $sth = $dbh->prepare($sql);
      $sth->execute();
      $rows = $sth->fetchAll();

      foreach ($rows as &$row) { ?>
        <tr>
          <td><?= $row['id'] ?></td>
          <td><?= $row['first_name'] ?></td>
          <td><?= $row['last_name'] ?></td>
          <td><?= $row['nickname'] ?></td>
          <td><?= $row['date_of_birth'] ?></td>
          <td><?= $row['mark']; ?></td>
          <td><a title='edit_<?= $row['id']; ?>' href='form_edit.php?id=<?= $row['id'] ?>'>Edit</a></td>
          <td><a title='delete_<?= $row['id']; ?>' href='delete.php?id=<?= $row['id'] ?>'>Delete</a></td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
  </body>
</html>
