import 'package:cook_me_release/Navigation/drawer.dart';
import 'package:cook_me_release/Resep/salad_page.dart';
import 'package:cook_me_release/Resep/sandwich_page.dart';
import 'package:flutter/material.dart';
import '../layout.dart';
import 'keranjang_page.dart';

class ResepPage extends StatefulWidget {
  @override
  _ResepPageState createState() => _ResepPageState();
}

class _ResepPageState extends State<ResepPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: MyDrawer(),
      body: SafeArea(
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 300.0,
              backgroundColor: Colors.white,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.lightGreen,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: new Icon(
                    Icons.shopping_cart,
                    size: 23.0,
                    color: Colors.lightGreen,
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
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/wallpaper.jpg'),fit: BoxFit.cover),
                  ),
                ),
              )),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: (SizeConfig.blockVertical * 2)),
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
                            contentPadding: EdgeInsets.only(left: 15.0, top: 12.0),
                            hintText: 'Makan apa ya?',
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'Quicksand',
                              fontSize: 19.0,
                            )),
                        textInputAction: TextInputAction.search
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext context) {
                        return SandwichPage();
                      }));
                    },
                    child: itemCard(
                      'Sandwich',
                      'assets/sandwich.jpg',
                    )),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext context) {
                        return SaladPage();
                      }));
                    },
                    child: itemCard('Salad', 'assets/salad.jpg')),
                SizedBox(
                  height: 10.0,
                ),
                itemCard('Cap Cay', 'assets/capcay.jpg'),
                SizedBox(
                  height: 10.0,
                ),
                itemCard('Sup ayam', 'assets/soup.jpg'),
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Material(
                      child: Container(
                        height: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ]))
        ]),
      ),
    );
  }

  Widget itemCard(String title, String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 5.0, left: 5.0),
      child: Stack(
        children: <Widget>[
          Container(
              height: (SizeConfig.blockVertical * 23),
              width: double.infinity,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )),
          Positioned(
            top: (SizeConfig.blockVertical * 11.3),
            right: (SizeConfig.blockHorizontal * 0),
            child: Container(
              height: 75.0,
              width: 200.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  color: Colors.black45,
                ),
                child: Center(
                  child: Text(
                    (title),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
