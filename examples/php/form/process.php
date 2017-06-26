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
    ?>

    <p>Your name is <?php echo $name ?>.</p>
    <p>You are <?php echo $age ?> years old.</p>
    <p>Your gender is <?php echo $gender ?>.</p>

  </body>
</html>
