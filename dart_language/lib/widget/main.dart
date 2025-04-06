// ignore_for_file: avoid_print

abstract class Widget {}

class Text extends Widget {
  Text(this.text);
  final String text;
}

class Button extends Widget {
  Button({required this.child, this.onPressed});
  final Function? onPressed;
  final Widget child;
}

abstract class Base {
  void foo();
  void bar() => print('bar');
}

class Subclass extends Base {
  @override
  void foo() {
    print('foo');
  }
}

class SubclassB implements Base {
  @override
  void foo() {
    print('foo');
  }

  @override
  void bar() {
    print('bar');
  }
}

abstract interface class Base2 {
  void foo();
  void bar() => print('bar');
}

void main() {
  final button = Button(child: Text('hello'), onPressed: () => print('hello'));
  button.onPressed?.call();
}
