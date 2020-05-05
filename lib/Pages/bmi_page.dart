import 'dart:math';
import 'package:cook_me_release/Navigation/drawer.dart';
import 'package:flutter/material.dart';
import '../dialogs.dart';
import '../icon_bmi_icons.dart';
import 'keranjang_page.dart';

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _calculation;
  String _calcResult;
  String _result;
  double _idealWeight;
  String _weightResult;

  TextEditingController _ageFieldController = new TextEditingController();
  TextEditingController _heightFieldController = new TextEditingController();
  TextEditingController _weightFieldController = new TextEditingController();

  void _calculateBMI() {
    double height = double.parse(_heightFieldController.text);
    double weight = double.parse(_weightFieldController.text);

    if (height != null && weight != null) {
      setState(() {
        _calculation = (weight / pow(height / 100, 2));
        _calcResult = _calculation.toStringAsFixed(1);
        if (_calculation < 18.5) {
          _result = '"Kamu harus tambah porsi makan kamu nih!"';
        } else if (_calculation >= 18.5 && _calculation <= 24.9) {
          _result = '"Badan kamu sudah ideal, pertahankan!"';
        } else if (_calculation >= 25.0 && _calculation <= 29.9) {
          _result = '"Makan makanan yang sehat yuk!"';
        } else {
          _result = "Waktunya olahraga dan diet sehat!";
        }
      });
    }
  }

  void _calculateWeight() {
    double height = double.parse(_heightFieldController.text);

    if (isSelected) {
      setState(() {
        _idealWeight = ((height - 100) - (((height - 100) * 10) / 100));
        _weightResult = _idealWeight.toString();
      });
    } else if (!isSelected) {
      setState(() {
        _idealWeight = ((height - 100) - (((height - 100) * 15) / 100));
        _weightResult = _idealWeight.toString();
      });
    }
  }

  var isSelected = true;

  @override
  Widget build(BuildContext context) {
    Dialogs dialogs = new Dialogs();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(
            child: Text(
              'BMI',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: new Icon(
                Icons.shopping_cart,
                size: 23.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return KeranjangPage();
                }));
              },
            ),
          ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        child:
                            choiceChip(IconBmi.male, 'Laki - laki', isSelected),
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: choiceChip(
                            IconBmi.female, 'Perempuan', !isSelected),
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  isiData('Umur (tahun)', _ageFieldController),
                  SizedBox(height: 20.0),
                  isiData('Tinggi Badan (cm)', _heightFieldController),
                  SizedBox(height: 20.0),
                  isiData('Berat Badan (kg)', _weightFieldController),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      _calculateBMI();
                      _calculateWeight();
                    },
                    child: Container(
                      height: 40.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.lightGreen,
                      ),
                      child: Center(
                        child: Text(
                          'Cek!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Hasil',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.brown),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.info_outline,
                            color: Colors.brown,
                          ),
                          onPressed: () {
                            dialogs.information(context, 'Keterangan BMI',
                                'assets/databmi.png');
                          })
                    ],
                  ),
                  Container(
                    height: 275.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border:
                            Border.all(color: Colors.lightGreen, width: 10.0)),
                    child: Column(
                      children: <Widget>[
                        subTitle('BMI'),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Text(
                            _calcResult != null ? '$_calcResult' : '',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 70.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 10.0, top: 10.0),
                          child: new Text(
                            _result != null ? _result : '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: Colors.lightGreen, width: 10.0)),
                      child: Column(
                        children: <Widget>[
                          subTitle('Berat Badan Ideal'),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 5.0, left: 10.0, top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  _weightResult != null ? _weightResult : '',
                                  style: TextStyle(
                                    fontSize: 70.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    color: Colors.brown,
                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Quicksand',
                                      fontSize: 25.0),
                                )
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget choiceChip(IconData icon, String title, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.lightGreen.withOpacity(0.6),
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            icon,
            size: 15.0,
            color: Colors.brown,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.brown,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand'),
          )
        ],
      ),
    );
  }

  Widget isiData(String title, TextEditingController controll) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen.withOpacity(0.9)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown, width: 2.5)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown, width: 1.0),
        ),
      ),
      controller: controll,
      keyboardType: TextInputType.number,
      cursorColor: Colors.lightGreen,
    );
  }

  Widget subTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.lightGreen,
            fontFamily: 'Quicksand',
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
