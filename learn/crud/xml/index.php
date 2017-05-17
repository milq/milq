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
      require_once('load_xml.php');

      foreach($xml->children() as $student) {
        echo '<tr>';
        echo '<td>' . $student['id'] . '</td>';
        echo '<td>' . $student->first_name . '</td>';
        echo '<td>' . $student->last_name . '</td>';
        echo '<td>' . $student->nickname . '</td>';
        echo '<td>' . $student->date_of_birth . '</td>';
        echo '<td>' . $student->mark . '</td>';
        echo "<td><a title='edit_" . $student['id'] . "' href='form.php?id=" . $student['id'] . "'>Edit</a></td>";
        echo "<td><a title='delete_" . $student['id'] . "' href='process.php?delete=yes&id=" . $student['id'] . "'>Delete</a></td>";
        echo '</tr>';
      }
      ?>
      </tbody>
    </table>
  </body>
</html>
