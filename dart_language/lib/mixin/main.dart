// ignore_for_file: avoid_print

mixin Swimming {
  void swim() {
    print('Swimming');
  }
}

class Animal with Swimming {}

void main() {
  print('mixin');
  final animal = Animal();
  animal.swim();
}
