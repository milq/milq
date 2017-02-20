'use strict'

class Point
{
    constructor(x, y)
    {
        this._x = x
        this._y = y
    }

    get x()
    {
        return this._x
    }

    set x(x)
    {
        this._x = x
    }

    get y()
    {
        return this._y
    }

    set y(y)
    {
        this._y = y
    }
}





class Character
{
    constructor(name, max_health)
    {
            this._name = name
            this._x = 50
            this._y = 50
            this._max_health = max_health
            this._health = max_health
            this._speed = 10
            this._attack = 8
            this._defend = 4
    }

    get name()
    {
        return this._name
    }

    get x()
    {
        return this._x
    }

    get health()
    {
        return this._health
    }

    get attack()
    {
        return this._attack
    }

    move_right()
    {
        this._x = this._x + this._speed
    }

    move_left()
    {
        this._x = this._x - this._speed
    }

    take_damage(damage)
    {
        this._health = this._health - damage
    }
}






class Animal
{
    constructor(name, energy)
    {
        this._name = name
        this._energy = energy
    }

    get name()
    {
        return this._name
    }

    get energy()
    {
        return this._energy
    }

    eat()
    {
        this._energy = this._energy + 5
    }

    move()
    {
        this._energy = this._energy - 5
    }
}





class Dog extends Animal
{
    constructor(name, energy, sound, breed)
    {
        super(name, energy)
        this._sound = sound
        this._breed = breed
    }

    get sound()
    {
        return this._sound
    }

    get breed()
    {
        return this._breed
    }
}





class Cat extends Animal
{
    constructor(name, energy)
    {
        super(name, energy)
        this._sound = 'Miaow!'
    }

    get sound()
    {
        return this._sound
    }

    purr()
    {
        this._sound = 'Purr...'
    }
}






// EXAMPLE WITH CLASS POINT
console.log(' ')
console.log('POINTS')
console.log('------')

var point = new Point(2, 3)    // We create an instance (or object) of class Point.

console.log(point.x, point.y)

point.x = 5
point.y = -4

console.log(point.x, point.y)



// EXAMPLE WITH CLASS CHARACTER
console.log(' ')
console.log('WELCOME, PLAYER!')
console.log('----------------')

var hero = new Character('Reinwald', 50) // We create an instance (or object) of class Character.
var evil = new Character('Zarosh', 40)   // We create an instance (or object) of class Character.

hero.move_right()
hero.move_right()

console.log('The current x position of', hero.name, 'is', hero.x)

evil.take_damage(hero.attack)

console.log('The current hit points of', evil.name, 'is', evil.health)



// EXAMPLE WITH CLASS ANIMAL AND CLASSES DOG AND CAT (inheritance)
console.log(' ')
console.log('ANIMALS')
console.log('-------')

var ruperta = new Cat('Ruperta', 100)      // We create an instance (or object) of class Cat.
var chloe = new Cat('Chloe', 75)       // We create an instance (or object) of class Cat.

var ruperta_energy = ruperta.energy

console.log('The energy of', ruperta.name, 'is', ruperta_energy, 'and her sound is', ruperta.sound)
console.log('The energy of', chloe.name, 'is', chloe.energy, 'and her sound is', chloe.sound)

chloe.move()
chloe.eat()
chloe.move()

ruperta.purr()

console.log('Now, the energy of', chloe.name, 'is', chloe.energy)
console.log('Now, the sound of', ruperta.name, 'is', ruperta.sound)


var odessa = new Animal('Odessa', 50)      // We create an instance (or object) of class Animal.

odessa.move()
odessa.move()
odessa.move()

console.log('Suddenly,', odessa.name, 'with', odessa.energy, 'of energy appeared!')


var toby = new Dog('Toby', 50, 'Woof!', 'Golden Retriever')            // We create an instance (or object) of class Dog.
var akira = new Dog('Akira', 125, 'Woof, woof!', 'Siberian Husky')     // We create an instance (or object) of class Dog.

console.log(toby.name, 'is a', toby.breed, 'and his sound is', toby.sound)
console.log(akira.name, 'is a', akira.breed, 'and his sound is', akira.sound)
console.log(' ')

