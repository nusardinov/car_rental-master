import 'package:car_rental/constants.dart';
import 'package:car_rental/showroom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('Login'),
      // ),
      backgroundColor: mPrimaryColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/welcome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 80.0,
              child: Padding(
                padding: const EdgeInsets.all(mpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 50,
                            ),
                            children: [
                          TextSpan(text: 'Rent Car'),
                        ])),
                    SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(2),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: 'Şifre',
                                labelStyle: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Showroom(),
                        ));
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: kPrimaryColor,
                        child: Image(
                          image: AssetImage('assets/icons/right-arrow.png'),
                          color: Colors.white,
                          height: 50,
                          width: 35,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: mpadding,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: mpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    buildText('Kaydol', 17, Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    buildText('Şifremi unuttum ', 17, Colors.white),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  buildText(String text, double size, Color color) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
      ),
    );
  }
}
