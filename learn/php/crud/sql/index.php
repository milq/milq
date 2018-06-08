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

    <a href='form.php'>Insert a new student</a><br /><br />

    <table title='student_table'>
      <thead>
        <tr>
          <th>ID</th>
          <th>First name</th>
          <th>Last name</th>
          <th>Nickname</th>
          <th>Date of birth</th>
          <th>Mark</th>
          <th>Edit</th>
          <th>Delete</th>
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
          <td><?php echo $row['id']; ?></td>
          <td><?php echo $row['first_name']; ?></td>
          <td><?php echo $row['last_name']; ?></td>
          <td><?php echo $row['nickname']; ?></td>
          <td><?php echo $row['date_of_birth']; ?></td>
          <td><?php echo $row['mark']; ?></td>
          <td><a title='edit_<?php echo $row['id']; ?>' href='form.php?id=<?php echo $row['id']; ?>'>Edit</a></td>
          <td><a title='delete_<?php echo $row['id']; ?>' href='process.php?delete=yes&id=<?php echo $row['id']; ?>'>Delete</a></td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
  </body>
</html>
