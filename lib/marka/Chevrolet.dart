import 'package:car_rental/carwidget/book_chevrolet.dart';
import 'package:car_rental/carwidget/chevrolet_widget.dart';
import 'package:car_rental/data.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';

class ChevroletPage extends StatefulWidget {
  const ChevroletPage({Key key}) : super(key: key);

  @override
  State<ChevroletPage> createState() => _ChevroletPageState();
}

class _ChevroletPageState extends State<ChevroletPage> {
  List<Chevrolet> cars = getChevroletList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mevcut Chevrolet (" + getChevroletList().length.toString() + ")",
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
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 1 / 1.55,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: getChevroletList().map((item) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BookChevrolet(chevrolet: item)),
                          );
                        },
                        child: buildChevrolet(item, null));
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
