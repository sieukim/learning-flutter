class Car {
  int maxSpeed;
  num price;
  String name;

  // 생성자
  Car(this.maxSpeed, this.price, this.name);

  // 메소드
  num saleCar() {
    price = price * 0.9;
    return price;
  }
}

void main() {
  Car bmw = Car(320, 100000, 'BMW');
  Car benz = Car(250, 70000, 'BENZ');
  Car ford = Car(200, 80000, 'FORD');

  bmw.saleCar();
  bmw.saleCar();
  bmw.saleCar();

  // 3번의 할인 후 BMW 가격 출력
  print(bmw.price);

}
