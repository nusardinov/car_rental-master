import 'package:car_rental/marka/Chevrolet.dart';
import 'package:car_rental/marka/RangeRover.dart';
import 'package:car_rental/marka/ferrari.dart';
import 'package:car_rental/marka/tesla.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/data.dart';
import 'package:get/get.dart';

var markaList = [RangeRoverPage(), TeslaPage(), FerrariPage(), ChevroletPage()];

Widget buildDealer(Dealer dealer, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          onPressed: () => Get.to(markaList[index]),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(dealer.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            height: 60,
            width: 60,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          dealer.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          dealer.offers.toString() + " kiralama",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
