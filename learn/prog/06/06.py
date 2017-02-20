

class Point(object):

    def __init__(self, x, y):
        self._x = x
        self._y = y

    def get_x(self):
        return self._x

    def set_x(self, x):
        self._x = x

    def get_y(self):
        return self._y

    def set_y(self, y):
        self._y = y
















class Character(object):

    def __init__(self, name, max_health):
        self._name = name
        self._x = 50
        self._y = 50
        self._max_health = max_health
        self._health = max_health
        self._speed = 10
        self._attack = 8
        self._defend = 4

    def get_name(self):
        return self._name

    def get_x(self):
        return self._x

    def get_health(self):
        return self._health

    def get_attack(self):
        return self._attack

    def move_right(self):
        self._x = self._x + self._speed

    def move_left(self):
        self._x = self._x - self._speed

    def take_damage(self, damage):
        self._health = self._health - damage























class Animal(object):

    def __init__(self, name, energy):
        self._name = name
        self._energy = energy

    def get_name(self):
        return self._name

    def get_energy(self):
        return self._energy

    def eat(self):
        self._energy = self._energy + 5

    def move(self):
        self._energy = self._energy - 5
















class Dog(Animal):

    def __init__(self, name, energy, sound, breed):
        Animal.__init__(self, name, energy)
        self._sound = sound
        self._breed = breed

    def get_sound(self):
        return self._sound

    def get_breed(self):
        return self._breed












class Cat(Animal):

    def __init__(self, name, energy):
        Animal.__init__(self, name, energy)
        self._sound = 'Miaow!';

    def get_sound(self):
        return self._sound

    def purr(self):
        self._sound = 'Purr...'













# EXAMPLE WITH CLASS POINT
print(' ')
print('POINTS')
print('------')

point = Point(2, 3)     # We create an instance (or object) of class Point.

print(point.get_x(), point.get_y());

point.set_x(5)
point.set_y(-4)

print(point.get_x(), point.get_y());



# EXAMPLE WITH CLASS CHARACTER
print(' ')
print('WELCOME, PLAYER!')
print('----------------')

hero = Character('Reinwald', 50)  # We create an instance (or object) of class Character.
evil = Character('Zarosh', 40)    # We create an instance (or object) of class Character.

hero.move_right()
hero.move_right()

print('The current x position of', hero.get_name(), 'is', hero.get_x())

evil.take_damage(hero.get_attack())

print('The current hit points of', evil.get_name(), 'is', evil.get_health())



# EXAMPLE WITH CLASS ANIMAL AND CLASSES DOG AND CAT (inheritance)
print(' ');
print('ANIMALS')
print('-------')

ruperta = Cat('Ruperta', 100);      # We create an instance (or object) of class Cat.
chloe = Cat('Chloe', 75);       # We create an instance (or object) of class Cat.

ruperta_energy = ruperta.get_energy()

print('The energy of', ruperta.get_name(), 'is', ruperta_energy, 'and her sound is', ruperta.get_sound())
print('The energy of', chloe.get_name(), 'is', chloe.get_energy(), 'and her sound is', chloe.get_sound())

chloe.move()
chloe.eat()
chloe.move()

ruperta.purr()

print('Now, the energy of', chloe.get_name(), 'is', chloe.get_energy())
print('Now, the sound of', ruperta.get_name(), 'is', ruperta.get_sound())


odessa = Animal('Odessa', 50)      # We create an instance (or object) of class Animal.

odessa.move()
odessa.move()
odessa.move()

print('Suddenly,', odessa.get_name(), 'with', odessa.get_energy(), 'of energy appeared!')


toby = Dog('Toby', 50, 'Woof!', 'Golden Retriever');            # We create an instance (or object) of class Dog.
akira = Dog('Akira', 125, 'Woof, woof!', 'Siberian Husky');     # We create an instance (or object) of class Dog.

print(toby.get_name(), 'is a', toby.get_breed(), 'and his sound is', toby.get_sound())
print(akira.get_name(), 'is a', akira.get_breed(), 'and his sound is', akira.get_sound())
print(' ')

