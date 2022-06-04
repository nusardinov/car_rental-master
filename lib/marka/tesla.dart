import 'package:car_rental/carwidget/book_tesla.dart';
import 'package:car_rental/carwidget/tesla_widget.dart';
import 'package:car_rental/constants.dart';
import 'package:car_rental/data.dart';
import 'package:flutter/material.dart';

class TeslaPage extends StatefulWidget {
  const TeslaPage({Key key}) : super(key: key);

  @override
  State<TeslaPage> createState() => _TeslaPageState();
}

class _TeslaPageState extends State<TeslaPage> {
  List<Tesla> cars = getTeslaList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mevcut Tesla (" + getTeslaList().length.toString() + ")",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          //width: double.infinity,
          //padding: EdgeInsets.all(16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 16,
              // ),
              // Text(
              //   "Available Cars (" + getCarList().length.toString() + ")",
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 36,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(
              //   height: 16,
              // ),
              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 1 / 1.55,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: getTeslaList().map((item) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookTesla(tesla: item)),
                          );
                        },
                        child: buildTesla(item, null));
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            buildFilterIcon(),
            Row(),
          ],
        ),
      ),
    );
  }

  Widget buildFilterIcon() {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.filter_list,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
