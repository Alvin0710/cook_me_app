import 'package:cook_me_release/Navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomPadding: false,
          body: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'assets/cookme.jpeg',
                            width: 180.0,
                            height: 180.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      padding:
                      EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightGreen),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown))),
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightGreen),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown))),
                            cursorColor: Colors.black,
                            obscureText: true,
                            textInputAction: TextInputAction.go,
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.brown,
                              color: Colors.brown,
                              elevation: 7.0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BottomNavigation(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Or',
                              style: TextStyle(
                                  height: 1.8,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              loginButton('assets/facebook.png', 'Facebook'),
                              loginButton('assets/google.jpg', '  Google  '),
                            ],
                          )
                        ],
                      )),
                  SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New Member ?',
                        style: TextStyle(fontFamily: 'Montserrat', color: Colors.brown),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return SignupPage();
                              }));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.lightGreen,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50.0,
                  ),

                ],
              ),
            ],
          )),
    );
  }
  Widget loginButton (String imgPath, String title){
    return Container(
      height: 40.0,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) {
                      return BottomNavigation();
                    }));
          },
          child: Row(
            children: <Widget>[
              SizedBox(width: 25.0),
              Center(
                child: ImageIcon(
                    AssetImage(imgPath)),
              ),
              SizedBox(width: 10.0),
              Center(
                child: Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat')),
              ),
              SizedBox(width: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}
