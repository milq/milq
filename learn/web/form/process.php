<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Basic form in PHP</title>
  </head>

  <body>
    <h1>Formulario básico - Salida de datos</h1>
    <?php
      $nombre = $_POST['nombre'];
      $edad = $_POST['edad'];
      $genero = $_POST['genero'];

      echo '<p>Tu nombre es ' . $nombre . '.</p>';
      echo '<p>Tienes ' . $edad . ' años.</p>';
      echo '<p>Tu género es ' . $genero . '.</p>';
    ?>
  </body>
</html>
