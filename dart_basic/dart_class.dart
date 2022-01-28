void main() {
  Car bmw = new Car(320, 100000, 'BMW');
  Car benz = new Car(250, 80000, 'BENZ');
  Car ford = new Car(200, 50000, 'FORD');

  bmw.saleCar();
  bmw.saleCar();
  bmw.saleCar();
  print(bmw.price); //실행결과: 72900.0
}

class Car {
  int maxSpeed = 0;
  num price = 0;
  String name = '';

  Car(int maxSpeed, num price, String name) {
    this.maxSpeed = maxSpeed;
    this.price = price;
    this.name = name;
  } 
  num saleCar() {
    price = price * 0.9;
    return price;
  }
}
 