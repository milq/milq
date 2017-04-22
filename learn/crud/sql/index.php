<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Classroom</title>
    <link rel='stylesheet' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
	<h1>Students</h1>
	
	<a href='form.php'>Insert a new student</a><br /><br />
	
    <?php
    require_once('connect_db.php');
  
    $sql = 'SELECT * FROM students';
    $sth = $dbh->prepare($sql);
    $sth->execute();       			
    $rows = $sth->fetchAll();

    echo '<table>';
    echo '<tr>';
    echo '<th>ID</th>';
    echo '<th>First name</th>';
    echo '<th>Last name</th>';
    echo '<th>Nickname</th>';
    echo '<th>Date of birth</th>';
    echo '<th>Mark</th>';
    echo '<th>Edit</th>';
    echo '<th>Delete</th>';
    echo '</tr>';

    foreach ($rows as &$row) {
	  echo '<tr>';
      echo '<td>' . $row['id'] . '</td>';
      echo '<td>' . $row['first_name'] . '</td>';
      echo '<td>' . $row['last_name'] . '</td>';
      echo '<td>' . $row['nickname'] . '</td>';
      echo '<td>' . $row['date_of_birth'] . '</td>';
      echo '<td>' . $row['mark'] . '</td>';
      echo '<td><a href=\'form.php?id=' . $row['id'] . '\'>Edit</a></td>';
      echo '<td><a href=\'process.php?delete=yes&id=' . $row['id'] . '\'>Delete</a></td>';
      echo '</tr>';
    }
    ?>
  </body>
</html>
