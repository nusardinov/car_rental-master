import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;

  NavigationItem(this.iconData);
}

class Car {
  String brand;
  String model;
  String color = "";
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.color, this.price, this.condition,
      this.images);
}

List<Car> getCarList() {
  return <Car>[
    Car(
      "Ferrari",
      "SF90",
      "Kırmızı",
      15000,
      "Aylık",
      [
        "assets/images/ferrari-sf90-1.jpg",
        "assets/images/ferrari-sf90.webp",
        "assets/images/ferrari-sf90-3.jpg",
      ],
    ),
    Car(
      "Mercedes",
      "Amg gt 63s",
      "Metalik",
      3300,
      "Günlük",
      [
        "assets/images/mercedesamtgt.jpeg",
        "assets/images/mercedesamtgt-1.jpeg",
        "assets/images/mercedesamtgt-2.jpeg",
      ],
    ),
    Car(
      "Porche",
      "Taycan Turbo S",
      "Beyaz",
      3300,
      "Haftalık",
      [
        "assets/images/taycan-1.jpeg",
        "assets/images/taycan.webp",
        "assets/images/taycan-2.jpeg",
      ],
    ),
    Car(
      "Maserati",
      "Ghibli",
      "Siyah",
      1000,
      "Günlük",
      [
        "assets/images/maserati-ghibli-1.webp",
        "assets/images/maserati-ghibli-2.jpeg",
        "assets/images/maserati-ghibli-3.jpeg",
        "assets/images/maserati-ghibli.webp",
      ],
    ),
    Car(
      "Tesla",
      "Model X ",
      "Beyaz",
      3250,
      "Günlük",
      [
        "assets/images/teslax-2.jpeg",
        "assets/images/teslax-1.jpeg",
        "assets/images/teslax.webp",
      ],
    ),
    Car(
      "Porsche",
      "911 Turbo",
      "Metalik",
      2580,
      "Aylik",
      [
        "assets/images/porsche-turbo-s.jpeg",
        "assets/images/porsche-turbo-s-1.jpeg",
        "assets/images/porsche-turbo-s-2.jpeg",
      ],
    ),
    Car(
      "Lamborghini",
      "Huracan",
      "Yeşil",
      2580,
      "Haftalık",
      [
        "assets/images/lamborghini1.png",
      ],
    ),
    Car(
      "Dodge Chellenger",
      "SRT Hellcat",
      "Mat Yeşil",
      4550,
      "Haftalık",
      [
        "assets/images/dodge-challenger.jpg",
        "assets/images/dodge-challenger-1.jpg",
      ],
    ),
    Car(
      "Aston Martin",
      "DB11",
      "Beyaz",
      7580,
      "Haftalık",
      [
        "assets/images/astonmartin.jpg",
        "assets/images/astonmartin-1.jpg",
        "assets/images/astonmartin-2.jpg",
      ],
    ),
    Car(
      "Land Rover",
      "Discovery",
      "Gri",
      2580,
      "Haftalık",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Car(
      "Alfa Romeo",
      "C4",
      "Metalik gri ",
      3580,
      "Aylık",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
    ),
    Car(
      "Nissan",
      "GTR",
      "Gri",
      1100,
      "Günlük",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
    ),
    Car(
      "Acura",
      "MDX 2020",
      "Lacivert",
      2200,
      "Aylık",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
    ),
    Car(
      "Chevrolet",
      "Camaro",
      "Gri",
      3400,
      "Haftalık",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
    ),
    Car(
      "Ferrari",
      "Spider 488",
      "Gri",
      4200,
      "Haftalık",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      "Gri",
      2300,
      "Haftalık",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
    ),
    Car(
      "Fiat",
      "500x",
      "Gri",
      1450,
      "Haftalık",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
    ),
    Car(
      "Honda",
      "Civic",
      "Gri",
      900,
      "Günlük",
      [
        "assets/images/honda_0.png",
      ],
    ),
    Car(
      "Chevrolet",
      "Corvette ",
      "Gri",
      2580,
      "Haftalık",
      [
        "assets/images/chevrolet_corvette.jpeg",
        "assets/images/chevrolet_corvette_1.webp",
        "assets/images/chevrolet_corvette_2.jpeg",
        "assets/images/chevrolet_corvette_3.jpeg",
      ],
    ),
  ];
}

//////////
class Ferrari {
  String brand;
  String model;
  String color;
  double price;
  String condition;
  List<String> images;

  Ferrari(this.brand, this.model, this.color, this.price, this.condition,
      this.images);
}

List<Ferrari> getFerrariList() {
  return <Ferrari>[
    Ferrari(
      "Ferrari",
      "SF90",
      "Kırmızı",
      15000,
      "Aylık",
      [
        "assets/images/ferrari-sf90-1.jpg",
        "assets/images/ferrari-sf90.webp",
        "assets/images/ferrari-sf90-3.jpg",
      ],
    ),
    Ferrari(
      "Ferrari",
      "Spider 488 ",
      "Lacivert",
      2580,
      "Haftalık",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
    ),
  ];
}

///////////
class Tesla {
  String brand;
  String model;
  String color;
  double price;
  String condition;
  List<String> images;

  Tesla(this.brand, this.model, this.color, this.price, this.condition,
      this.images);
}

List<Tesla> getTeslaList() {
  return <Tesla>[
    Tesla(
      "Tesla",
      "Model3 ",
      "Beyaz",
      2580,
      "Haftalık",
      [
        "assets/images/teslamodel3_2.webp",
        "assets/images/teslamodel3.jpeg",
        "assets/images/teslamodel3_1.jpeg",
      ],
    ),
    Tesla(
      "Tesla",
      "Model X ",
      "Beyaz",
      3250,
      "Günlük",
      [
        "assets/images/teslax-2.jpeg",
        "assets/images/teslax-1.jpeg",
        "assets/images/teslax.webp",
      ],
    ),
  ];
}

////////
class RangeRover {
  String brand;
  String model;
  String color;
  double price;
  String condition;
  List<String> images;

  RangeRover(this.brand, this.model, this.color, this.price, this.condition,
      this.images);
}

List<RangeRover> getRangeRoverList() {
  return <RangeRover>[
    RangeRover(
      "Land Rover",
      "Discovery ",
      "Gri",
      2580,
      "Haftalık",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    RangeRover(
      "Land Rover",
      "Range Rover  ",
      "Kırmızı",
      3000,
      "Günlük",
      [
        "assets/images/range-rover-sport-2022.jpeg",
        "assets/images/range-rover-sport-2022-1.jpeg",
        "assets/images/range-rover-sport-2022-2.jpeg",
        "assets/images/range-rover-sport-2022-3.webp",
      ],
    ),
  ];
}

//////////
class Chevrolet {
  String brand;
  String model;
  String color;
  double price;
  String condition;
  List<String> images;

  Chevrolet(this.brand, this.model, this.color, this.price, this.condition,
      this.images);
}

List<Chevrolet> getChevroletList() {
  return <Chevrolet>[
    Chevrolet(
      "Chevrolet",
      "Camaro ",
      "Sarı",
      2580,
      "Günlük",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
    ),
    Chevrolet(
      "Chevrolet",
      "Corvette ",
      "Beyaz",
      2580,
      "Haftalık",
      [
        "assets/images/chevrolet_corvette.jpeg",
        "assets/images/chevrolet_corvette_1.webp",
        "assets/images/chevrolet_corvette_2.jpeg",
        "assets/images/chevrolet_corvette_3.jpeg",
      ],
    ),
  ];
}

//////////
class Dealer {
  String name;
  int offers;
  String image;

  Dealer(this.name, this.offers, this.image);
}

List<Dealer> getDealerList() {
  return <Dealer>[
    Dealer(
      "LandRover",
      126,
      "assets/images/landrover.jpeg",
    ),
    Dealer(
      "Tesla",
      89,
      "assets/images/tesla.png",
    ),
    Dealer(
      "Ferrari",
      174,
      "assets/images/ferrari.png",
    ),
    Dealer(
      "Chevrolet",
      120,
      "assets/images/chevrolet.webp",
    ),
  ];
}

class Filter {
  String name;

  Filter(this.name);
}
