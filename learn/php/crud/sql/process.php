<?php

require_once('connect_db.php');

if (!isset($_GET['delete'])) {
  $id = $_POST['id'];
  $first_name = $_POST['first_name'];
  $last_name = $_POST['last_name'];
  $nickname = $_POST['nickname'];
  $date_of_birth = $_POST['date_of_birth'];
  $mark = $_POST['mark'];

  if($id == null) {
    $sql = 'INSERT INTO students(first_name,last_name,nickname,date_of_birth,mark) values(?,?,?,?,?)';
    $sth = $dbh->prepare($sql);
    $sth->execute(array($first_name, $last_name, $nickname, $date_of_birth, $mark));
  }
  else {
    $sql = 'UPDATE students SET first_name=?, last_name=?, nickname=?, date_of_birth=?, mark=? WHERE id=?';
    $sth = $dbh->prepare($sql);
    $sth->execute(array($first_name, $last_name, $nickname, $date_of_birth, $mark, $id));
  }
}
else {
  $id = $_GET['id'];
  $delete = $_GET['delete'];

  if ($delete === 'yes') {
    $sql = 'DELETE FROM students WHERE id=?';
    $sth = $dbh->prepare($sql);
    $sth->execute(array($id));
  }
}

header('Location:index.php');

?>
