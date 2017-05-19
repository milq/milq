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
  
      $sql = 'SELECT * FROM students';
      $sth = $dbh->prepare($sql);
      $sth->execute();       			
      $rows = $sth->fetchAll();

      foreach ($rows as &$row) {
        echo '<tr>';
        echo '<td>' . $row['id'] . '</td>';
        echo '<td>' . $row['first_name'] . '</td>';
        echo '<td>' . $row['last_name'] . '</td>';
        echo '<td>' . $row['nickname'] . '</td>';
        echo '<td>' . $row['date_of_birth'] . '</td>';
        echo '<td>' . $row['mark'] . '</td>';
        echo "<td><a title='edit_" . $row['id'] . "' href='form.php?id=" . $row['id'] . "'>Edit</a></td>";
        echo "<td><a title='delete_" . $row['id'] . "' href='process.php?delete=yes&id=" . $row['id'] . "'>Delete</a></td>";
        echo '</tr>';
      }
      ?>
      </tbody>
    </table>
  </body>
</html>
