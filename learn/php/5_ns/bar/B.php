<?php

namespace K;

class X
{
    private $greeting = '';

    public function __construct() {
        $this->greeting = 'Hi! I\'m class X from B.php!' . PHP_EOL;
    }

    public function get_greeting() {
        return $this->greeting;
    }
}

function say_hello() {
    return 'Hello! I\'m from B.php' . PHP_EOL;
}

?>
