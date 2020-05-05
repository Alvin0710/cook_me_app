import 'package:cook_me_release/Navigation/drawer.dart';
import 'package:flutter/material.dart';
import '../artikel_page.dart';
import '../layout.dart';
import 'keranjang_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 200.0,
                backgroundColor: Colors.lightGreen,
                actions: <Widget>[
                  IconButton(
                    icon: new Icon(
                      Icons.shopping_cart,
                      size: 23.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return KeranjangPage();
                          }));
                    },
                  ),
                ],
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 250.0,
                            width: double.infinity,
                            color: Colors.lightGreen,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 30.0,
                        right: 90.0,
                        child: Container(
                          height: 350.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            color: Colors.lightGreenAccent.withOpacity(0.1),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15.0),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      120.0),
                              SizedBox(
                                height: 15.0,
                              )
                            ],
                          ),
                          SizedBox(height: 37.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Hai Dewi,",
                              style: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Quicksand'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Makan apa aja hari ini?",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Quicksand'),
                            ),
                          ),
                          SizedBox(
                            height: 17.0,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Material(
                          color: Colors.lightGreen.withOpacity(0.9),
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                  contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 12.0),
                                  hintText: 'Cari apa ya?',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontFamily: 'Quicksand',
                                    fontSize: 19.0,
                                  )),
                              textInputAction: TextInputAction.search
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      InkWell(
                        child: itemCard(
                            '5 Makanan "Sehat" yang Bikin Diet Gagal - CNN Indonesia',
                            'assets/cnn.jpeg'),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return ArtikelPertama();
                              }));
                        },
                      ),
                      itemCard(
                          'Informasi terlengkap tentang makanan sehat | Halodoc.com',
                          'assets/halodoc.jpg'),
                      itemCard(
                          'Tips makanan sehat bagi orang yang sibuk | nanamae.com',
                          'assets/tips.jpg'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  Widget itemCard(String title, String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 5.0, left: 5.0, top: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
              height: 170.0,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )),
          Positioned(
            top: 110.0,
            child: Container(
              height: 60.0,
              width: (SizeConfig.blockHorizontal*97),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  color: Colors.black54,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    (title),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
