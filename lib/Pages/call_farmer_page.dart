import 'package:cook_me_release/Navigation/drawer.dart';
import 'package:flutter/material.dart';
import '../layout.dart';
import 'keranjang_page.dart';

class CallFarmerPage extends StatefulWidget {
  @override
  _CallFarmerPageState createState() => _CallFarmerPageState();
}

class _CallFarmerPageState extends State<CallFarmerPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: MyDrawer(),
      body: SafeArea(
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 290.0,
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
                        image: AssetImage('assets/wallpapercall.jpg'),
                        fit: BoxFit.fitWidth),
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
                            hintText: 'Belanja apa nih?',
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
                  height: 20.0,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildCard(
                        'Bayam','Rp. 1rb', 'Bandung', 'assets/bayam.jpg', '4,5', 19, 1),
                    _buildCard(
                        'Wortel','Rp. 1rb', 'Cirebon', 'assets/wortel.jpg', '4,3', 9, 2),
                    _buildCard(
                        'Tomat', 'Rp. 2rb','Sumedang', 'assets/tomat.jpeg', '4,4', 34, 3),
                    _buildCard(
                        'Timun', 'Rp. 2rb','Cianjur', 'assets/timun.jpg', '4,0', 15, 4),
                    _buildCard(
                        'Selada', 'Rp. 1,5rb','Bandung', 'assets/selada.jpeg', '4,7', 30, 5),
                    _buildCard('Roti Tawar', 'Rp. 5rb','Bekasi', 'assets/rotitawar.jpg',
                        '4,4', 5, 6),
                    _buildCard('Keju','Rp. 10rb', 'Garut', 'assets/keju.jpg', '4,2', 7, 7),
                    _buildCard('Daging Asap','Rp. 21rb', 'Tasik Malaya',
                        'assets/dagingasap.jpg', '4,5', 3, 8),
                    _buildCard(
                        'Telur','Rp. 12rb', 'Purwakarta', 'assets/telur.jpeg', '4,9', 32, 9),
                    _buildCard('Minyak Goreng','Rp. 23rb', 'Majalengka', 'assets/minyak.jpeg',
                        '4,1', 11, 10),
                    _buildCard(
                        'Mayonnaise','Rp. 7rb', 'Bandung', 'assets/mayo.jpg', '4,2', 50, 11)
                  ],
                )
              ]))
        ]),
      ),
    );
  }

  Widget _buildCard(String name, String price, String origin, String cardImage, String likes,
      int commentCount, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 5.0)
          : EdgeInsets.only(left: 5.0),
      child: Container(
        height: 300.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage(cardImage), fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 11.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        likes,
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Quiksand',
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.chat,
                        color: Colors.grey,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        commentCount.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                left: 110.0,
                top: 102.0,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.lightGreen),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: (){},
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
