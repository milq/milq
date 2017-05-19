<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
  <head>
    <meta charset='utf-8' />
    <title>Classroom</title>
    <link rel='stylesheet' href='src/css/style.css' />
    <script type='text/javascript' src='src/js/app.js'></script>
  </head>

  <body>
	
    <?php
    require_once('load_xml.php');
    
    if (isset($_GET['id'])) {
		echo '<h1>Edit student</h1>';
		
		$id = $_GET['id'];
		
		$nodes = $xml->xpath('/students/student[@id="' . $id . '"]');
	}
	else {
		echo '<h1>Insert a new student</h1>';
		
		$id = null;
        
        $node = new stdClass;
        $node->first_name = '';
		$node->last_name = '';
		$node->nickname = '';
		$node->date_of_birth = '';
		$node->mark = '';

		$nodes = [$node];
	}
    ?>  

    <form action='process.php' method='post'>
	  <input type='hidden' name='id' value='<?php echo $id; ?>' />
      First name: <input type='text' name='first_name' title='First name' required='required' value='<?php echo $nodes[0]->first_name; ?>'/><br />
      Last name: <input type='text' name='last_name' title='Last name' required='required' value='<?php echo $nodes[0]->last_name; ?>'/><br />
      Nickname: <input type='text' name='nickname' title='Nickname' required='required' value='<?php echo $nodes[0]->nickname; ?>'/><br />
      Date of birth: <input type='date' name='date_of_birth' title='Date of birth' required='required' value='<?php echo $nodes[0]->date_of_birth; ?>'/><br />
      Mark: <input type='number' name='mark' title='Mark' required='required' value='<?php echo $nodes[0]->mark; ?>'/><br />
      <input type='submit' />
    </form>
    
  </body>
</html>

