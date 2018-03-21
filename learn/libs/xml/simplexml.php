<?php

////////////////////////
// SIMPLE XML LIBRARY //
////////////////////////

// Reference: http://php.net/manual/en/book.simplexml.php


// CONVERT A WELL-FORMED XML FILE INTO AN OBJECT

// Obtain an XML file from internet
$xml_string = file_get_contents('https://raw.githubusercontent.com/milq/milq/master/learn/xml/students.xml');
file_put_contents('students.xml', $xml_string);

// Load and convert
$xml = simplexml_load_file('students.xml');

// Print the object of the class SimpleXMLElement
print_r($xml); 



// SHOW THE CHILDRENS OF THE ROOT ELEMENT

foreach($xml->children() as $student) {
  echo $student['id'] . '. ';
  echo $student->first_name . ' ';
  echo $student->last_name . ' ';
  echo '- ' . $student->nickname . ' ';
  echo '- ' . $student->date_of_birth . ' ';
  echo '- Mark: ' . $student->mark . PHP_EOL;
}



// OBTAINING THE LAST STUDENT ID USING XPATH

// XPath tutorial: http://w3schools.com/xml/xpath_intro.asp

$xpath = '/students/student[last()]';
$nodes = $xml->xpath($xpath); // 'xpath()' returns an array of objects, even if only one element matches.
$last_id = $nodes[0]['id']; // Result: 421.



// APPEND A NEW STUDENT

echo 'Appending a new student' . PHP_EOL;

$student = $xml->addChild('student');
$student->addAttribute('id', $last_id + 1);
$student->addChild('first_name', 'Marc');
$student->addChild('last_name', 'Hannigan');
$student->addChild('nickname', 'Marky');
$student->addChild('date_of_birth', '1985-05-12');
$student->addChild('mark', '8');



// MODIFY A NODE USING XPATH

$id = '174';
$xpath = '/students/student[@id=\'' . $id . '\']';

echo 'Modifying a node using XPath: ' . $xpath . PHP_EOL;

$nodes = $xml->xpath($xpath);
$nodes[0]->first_name = 'Christine';
$nodes[0]->last_name = 'McLean';
$nodes[0]->nickname = 'Chris';
$nodes[0]->date_of_birth = '1984-12-20';
$nodes[0]->mark = '10';



// DELETE A NODE USING XPATH

$id = '32';
$xpath = '/students/student[@id=\'' . $id . '\']';

echo 'Deleting a node using XPath: ' . $xpath . PHP_EOL;

$nodes = $xml->xpath($xpath);
unset($nodes[0][0]);  



// SAVE THE CHANGES

$xml_new_path = 'new_students.xml';
$xml->saveXML($xml_new_path);

?>
