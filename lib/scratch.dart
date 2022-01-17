void keywords() {
  // Dynamic: This keyword lets Flutter know that even though name
  // contains a value of type String, it can be allowed to change to
  // a value of a different data type.

  // Final: This keyword lets Flutter know that this variable cannot
  // be changed later on making the variable immutable. Final is
  // initialized at run-time meaning that every time the state of
  // the app reloads, so do the variables marked final.

  // Const: This is similar to the final keyword. Const is initialized
  // at compile-time so when the code compiles, the variable is
  // initialized and is never reinitialized again.

  final String? something = "something";
  print(something);
}

void collections(){
  // Many programming languages include some form of collections.
  // While Swift has arrays, Dart, similar to Python, has lists.
  // To create a list, set a variable equal to a multiple objects
  // of the same data type wrapped in square brackets and separated
  // by commas.

  var hobbies = <String>['coding', 'biking', 'reading'];
}

void argumentFunctions() {
  void showInfo({String? name, int? age}) {
    print("My name is $name and I am $age years old");
  }

  showInfo(age: 27, name: 'James');
}

void main() {
  argumentFunctions();
}