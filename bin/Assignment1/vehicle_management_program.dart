import 'dart:io';

abstract class Vehicle {
  //protected variable with default value 0
  var _speed = 0;

  move(); //abstract method

  //non abstract method

  setSpeed(int speed) {
    _speed = speed;
  }

  //getter method for speed to allow read access while preventing direct access
  int get speed {
    return _speed;
  }
}

class car extends Vehicle {
  @override
  move() {
    //move method implement90
    // with protected speed
    print("The car is moving at $_speed km/h");
  }
}

main() {
  // car object created
  car mycar = car();

  // set car speed from user
  mycar.setSpeed(int.parse(stdin.readLineSync()!));

  // final call after set the car speed
  mycar.move();
}
