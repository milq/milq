<?php

require_once('load_xml.php');

if (!isset($_GET['delete'])) {
    $id = $_POST['id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $nickname = $_POST['nickname'];
    $date_of_birth = $_POST['date_of_birth'];
    $mark = $_POST['mark'];

    if($id == null) {
		$nodes = $xml->xpath('/students/student[last()]');
		
		$student = $xml->addChild('student');
		$student->addAttribute('id', $nodes[0]['id'] + 1);
		$student->addChild('first_name', $first_name);
		$student->addChild('last_name', $last_name);
		$student->addChild('nickname', $nickname);
		$student->addChild('date_of_birth', $date_of_birth);
		$student->addChild('mark', $mark);
		
		$xml->saveXML($xml_path);
    }
    else {
		$nodes = $xml->xpath('/students/student[@id=\'' . $id . '\']');
		
		$nodes[0]->first_name = $first_name;
		$nodes[0]->last_name = $last_name;
		$nodes[0]->nickname = $nickname;
		$nodes[0]->date_of_birth = $date_of_birth;
		$nodes[0]->mark = $mark;

		$xml->saveXML($xml_path);
		header('Location:index.php');
    }
}
else {
    $id = $_GET['id'];
    $delete = $_GET['delete'];
     
    if ($delete === 'yes') {
		$nodes = $xml->xpath('/students/student[@id=\'' . $id . '\']');
		unset($nodes[0]->{0});
		$xml->saveXML($xml_path);
	}
}
header('Location:index.php');

?>
