import 'dart:io';

// Interface definition
abstract class Animal {
  void speak();
}

// Base class
class Pet {
  String name;

  Pet(this.name);
}

// Class that implements an interface and extends a base class
class Dog extends Pet implements Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print('$name says Woof!');
  }

  void fetch() {
    print('$name is fetching.');
  }
}

void main() {
  var currentDirectory = Directory.current;
  print('Current working directory: $currentDirectory');

  // Initializing an instance of Dog with data from a file
  var file = File('C:/Users/Jo/Documents/.dart/dog_names.txt');
  var names = file.readAsLinesSync();
  var dog = Dog(names[0]);

  // Demonstrating the use of a loop
  for (var i = 0; i < 3; i++) {
    dog.fetch();
  }

  // Overriding an inherited method
  dog.speak();
}
