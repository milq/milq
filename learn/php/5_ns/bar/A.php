<?php

namespace J;

class X
{
    private $greeting = '';

    public function __construct() {
        $this->greeting = 'Hi! I\'m class X from A.php!' . PHP_EOL;
    }

    public function get_greeting() {
        return $this->greeting;
    }
}

?>
