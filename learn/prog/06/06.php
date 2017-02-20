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


class Character
{
    private $name;
    private $x = 50;
    private $y = 50;
    private $max_health;
    private $health;
    private $speed = 10;
    private $attack = 8;
    private $defend = 4;

    public function __construct($name, $max_health)
    {
        $this->name = $name;
        $this->max_health = $max_health;
        $this->health = $max_health;
    }

    public function get_name()
    {
        return $this->name;
    }

    public function get_x()
    {
        return $this->x;
    }

    public function get_health()
    {
        return $this->health;
    }

    public function get_attack()
    {
        return $this->attack;
    }

    public function move_right()
    {
        $this->x = $this->x + $this->speed;
    }

    public function move_left()
    {
        $this->x = $this->x - $this->speed;
    }

    public function take_damage($damage)
    {
        $this->health = $this->health - $damage;
    }
}


class Animal
{
    protected $name;
    protected $energy;

    public function __construct($name, $energy)
    {
        $this->name = $name;
        $this->energy = $energy;
    }

    public function get_name()
    {
        return $this->name;
    }

    public function get_energy()
    {
        return $this->energy;
    }

    public function eat()
    {
        $this->energy = $this->energy + 5;
    }

    public function move()
    {
        $this->energy = $this->energy - 5;
    }
}


class Dog extends Animal
{
    private $sound;
    private $breed;

    public function __construct($name, $energy, $sound, $breed)
    {
        $this->name = $name;
        $this->energy = $energy;
        $this->sound = $sound;
        $this->breed = $breed;
    }

    public function get_sound()
    {
        return $this->sound;
    }

    public function get_breed()
    {
        return $this->breed;
    }
}

class Cat extends Animal
{
    private $sound;

    public function __construct($name, $energy)
    {
        $this->name = $name;
        $this->energy = $energy;
        $this->sound = 'Miaow!';
    }

    public function get_sound()
    {
        return $this->sound;
    }

    public function purr()
    {
        $this->sound = 'Purr...';
    }
}



// EXAMPLE WITH CLASS POINT

echo '<p><b>POINTS</b></p>';


$point = new Point(2, 3);    // We create an instance (or object) of class Point.

echo '<p>' . $point->get_x() . ' ' . $point->get_y() . '</p>';

$point->set_x(5);
$point->set_y(-4);

echo '<p>' . $point->get_x() . ' ' . $point->get_y() . '</p>';



// EXAMPLE WITH CLASS CHARACTER

echo '<p><b>WELCOME, PLAYER!</b></p>';


$hero = new Character('Reinwald', 50); // We create an instance (or object) of class Character.
$evil = new Character('Zarosh', 40);   // We create an instance (or object) of class Character.

$hero->move_right();
$hero->move_right();

echo '<p>The current x position of ' . $hero->get_name() . ' is ' . $hero->get_x() . '.</p>';

$evil->take_damage($hero->get_attack());

echo '<p>The current hit points of ' . $evil->get_name() . ' is ', $evil->get_health() . '.</p>';



// EXAMPLE WITH CLASS ANIMAL AND CLASSES DOG AND CAT (inheritance)

echo '<p><b>ANIMALS</b></p>';


$ruperta = new Cat('Ruperta', 100);  // We create an instance (or object) of class Cat.
$chloe = new Cat('Chloe', 75);       // We create an instance (or object) of class Cat.

$ruperta_energy = $ruperta->get_energy();

echo '<p>The energy of ' . $ruperta->get_name() . ' is ' . $ruperta_energy . ' and her sound is ' . $ruperta->get_sound() . '</p>';
echo '<p>The energy of ' . $chloe->get_name() . ' is ' . $chloe->get_energy() . ' and her sound is ' . $chloe->get_sound() . '</p>';

$chloe->move();
$chloe->eat();
$chloe->move();

$ruperta->purr();

echo '<p>Now, the energy of ' . $chloe->get_name() . ' is ' . $chloe->get_energy();
echo '<p>Now, the sound of ' . $ruperta->get_name() . ' is ' . $ruperta->get_sound();


$odessa = new Animal('Odessa', 50);      // We create an instance (or object) of class Animal.

$odessa->move();
$odessa->move();
$odessa->move();

echo '<p>Suddenly, ' . $odessa->get_name() . ' with ', $odessa->get_energy() . ' of energy appeared!</p>';


$toby = new Dog('Toby', 50, 'Woof!', 'Golden Retriever');            // We create an instance (or object) of class Dog.
$akira = new Dog('Akira', 125, 'Woof, woof!', 'Siberian Husky');     // We create an instance (or object) of class Dog.

echo '<p>' . $toby->get_name() . ' is a ' . $toby->get_breed() . ' and his sound is ' . $toby->get_sound() . '</p>';
echo '<p>' . $akira->get_name() . ' is a ' . $akira->get_breed() . ' and his sound is ' . $akira->get_sound() . '</p>';

?>
