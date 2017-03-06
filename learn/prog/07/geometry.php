<?php

class Point
{
    private $x;
    private $y;

    public function __construct($x, $y)
    {
        $this->x = $x;
        $this->y = $y;
    }

    public function get_x()
    {
        return $this->x;
    }

    public function set_x($x)
    {
        $this->x = $x;
    }

    public function get_y()
    {
        return $this->y;
    }

    public function set_y($y)
    {
        $this->y = $y;
    }
}

function euclidean_distance($a, $b)
{

    $ax = $a->get_x();
    $ay = $a->get_y();
    $bx = $b->get_x();
    $by = $b->get_y();

    $dist = (($ax - $bx) ** 2 + ($ay - $by) ** 2) ** 0.5;

    return $dist;
}

?>
