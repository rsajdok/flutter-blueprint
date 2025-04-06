// ignore_for_file: avoid_print

class Animal {
  Animal({required this.age});

  final int age;
  void sleep() {
    print("Animal is Sleeping");
  }
}

class Dog extends Animal {
  Dog({required super.age});
  @override
  void sleep() {
    super.sleep();
    print("Dog is sleeping");
  }
}

abstract class Shape {
  double get area;
}

class Square extends Shape {
  @override
  double get area => 2;
}

class Circle extends Shape {
  @override
  double get area => 5;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final dog = Dog(age: 5);
  dog.sleep();

  final Shape square = Square();
  square.area;

  printArea(square);
}
