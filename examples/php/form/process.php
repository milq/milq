<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Basic form in PHP</title>
  </head>

  <body>
    <h1>Basic form - Processing data</h1>
    <?php
      $name = $_POST['name'];
      $age = $_POST['age'];
      $gender = $_POST['gender'];
      $hobbies_array = [];

      if (isset($_POST['hobbies'])) {
        $hobbies_array = $_POST['hobbies'];
      }
    ?>

    <p>Your name is <?php echo $name; ?>.</p>
    <p>You are <?php echo $age; ?> years old.</p>
    <p>Your gender is <?php echo $gender; ?>.</p>
    <p>Your hobbies are:</p>
    <ul>
    <?php for($i = 0; $i < count($hobbies_array); $i++) { ?>
      <li><?php echo $hobbies_array[$i]; ?></li>
    <?php } ?>
    </ul>

  </body>
</html>
