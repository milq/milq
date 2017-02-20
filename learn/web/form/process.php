<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Basic form in PHP</title>
  </head>

  <body>
    <h1>Basic form - Output data</h1>
    <?php
      $name = $_POST['name'];
      $age = $_POST['age'];
      $gender = $_POST['gender'];

      echo '<p>Your name is ' . $name . '.</p>';
      echo '<p>You are ' . $age . ' years old.</p>';
      echo '<p>Your gender is ' . $gender . '.</p>';
    ?>
  </body>
</html>
