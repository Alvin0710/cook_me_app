import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Center(
              child: Text(
                'Keranjang Saya',
                style: TextStyle(fontFamily: 'Quicksand', color: Colors.white),
              ),
            ),
            actions: <Widget>[
              Container(color: Colors.lightGreen,width: 35.0,)
            ],
          ),
          body: ListView(
            children: <Widget>[
              cardKeranjang('Bayam', 'assets/bayam.jpg', 'Rp1.000'),
              cardKeranjang('Wortel', 'assets/wortel.jpg', 'Rp1.000'),
              cardKeranjang('Tomat', 'assets/tomat.jpeg', 'Rp2.000'),
              cardKeranjang('Timun', 'assets/timun.jpg', 'Rp2.000'),
              cardKeranjang('Selada', 'assets/selada.jpeg', 'Rp1.500'),
              cardKeranjang('Roti Tawar', 'assets/rotitawar.jpg', 'Rp5.000'),
              cardKeranjang('Keju', 'assets/keju.jpg', 'Rp10.000'),
              cardKeranjang('Daging Asap', 'assets/dagingasap.jpg', 'Rp21.000'),
              cardKeranjang('Telur', 'assets/telur.jpeg', 'Rp12.000'),
              cardKeranjang('Minyak Goreng', 'assets/minyak.jpeg', 'Rp23.000'),
              cardKeranjang('Mayonnaise', 'assets/mayo.jpg','Rp7.000'),
              Container(
                height: 100.0,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('SUBTOTAL',style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Rp83.500', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand'
                          ),),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.lightGreen,
                              ),
                              child: Center(child: Text('Bayar',style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white
                              ),)),
                            ),
                          )
                        ],
                      ),
                      Text('Belum termasuk ongkir',style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                          fontFamily: 'Quicksand'
                      ),)
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
  Widget cardKeranjang (String title, String image, String harga,){
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2)),)),
      padding: EdgeInsets.only(left: 20.0, top: 5.0),
      height: 125.0,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          style: BorderStyle.solid,
                          width: 1.0),
                      image: DecorationImage(
                        image: AssetImage(image),fit: BoxFit.cover,
                      )),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                harga,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.5), style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      color: Colors.grey.withOpacity(0.2),
                      child: Center(child: Text('-',style: TextStyle(fontSize: 17.0),)),
                    ),
                    Container(
                      height: 30.0,
                      width: 35.0,
                      color: Colors.white,
                      child: Center(child: Text('1',style: TextStyle(fontSize: 13.0),)),
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      color: Colors.grey.withOpacity(0.2),
                      child: Center(child: Text('+',style: TextStyle(fontSize: 17.0),)),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
