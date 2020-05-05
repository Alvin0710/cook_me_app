import 'package:cook_me_release/Pages/keranjang_page.dart';
import 'package:flutter/material.dart';

import '../dialogs.dart';

class SaladPage extends StatefulWidget {
  @override
  _SaladPageState createState() => _SaladPageState();
}

class _SaladPageState extends State<SaladPage> {
  Dialogs dialogs = new Dialogs();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 120.0,
                backgroundColor: Colors.lightGreen,
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                      ),
                      onPressed: () {
                        dialogs.information(
                            context, 'Kandungan Gizi (Per Porsi)','assets/datasalad.png');
                      }),
                ],
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4.5, left: 25.0),
                    child: Text(
                      'Salad',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  background: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/salad.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        color: Colors.black45,
                      )
                    ],
                  ),
                )),
            SliverFillRemaining(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Bahan - bahan yang di butuhkan',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    bahanResep('  1 potong melon besar'),
                    bahanResep('  2 potong semangka sedang'),
                    bahanResep('  1 buah jeruk'),
                    bahanResep('  1 buah apel'),
                    bahanResep('  10 buah anggur'),
                    bahanResep('  3/4 sachet susu kental manis'),
                    bahanResep('  5 sdm mayonnaise'),
                    bahanResep('  1/4 gelas yoghurt plan'),
                    bahanResep('  1 potong kecil keju cheddar'),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.lightGreen,
                          color: Colors.lightGreen,
                          elevation: 7.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (BuildContext context) {
                                return KeranjangPage();
                              }));
                            },
                            child: Center(
                              child: Text(
                                'Beli bahan - bahan dulu',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.brown,
                                style: BorderStyle.solid,
                                width: 2.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context) {
                                  return LangkahPembuatan();
                                }));
                          },
                          child: Center(
                            child: Text('Lanjut ke langkah pembuatan',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget bahanResep(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Icon(Icons.arrow_right),
              ),
              Container(
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LangkahPembuatan extends StatefulWidget {
  @override
  _LangkahPembuatanState createState() => _LangkahPembuatanState();
}

class _LangkahPembuatanState extends State<LangkahPembuatan> {
  Dialogs dialogs = new Dialogs();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 150.0,
                backgroundColor: Colors.lightGreen,
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                      ),
                      onPressed: () {
                        dialogs.information(
                            context, 'Kandungan Gizi','assets/datasalad.png');
                      }),
                ],
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4.5, left: 30.0),
                    child: Text(
                      'Salad',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  background: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/salad.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        color: Colors.black45,
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          'Langkah - langkah membuatnya.',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    langkahPembuatan('1',
                        'Langkah pertama, potong buah berbentuk dadu. Belah buah anggur menjadi dua, lalu buang bijinya. Buang biji dari buah jeruk kemuadian pisahkan setiap bagiannya.'),
                    langkahPembuatan('2',
                        'Campurkan semua buah menjadi satu ke dalam wadah besar, lalu bagi buah ke dalam masing - masing cup (cup kecil, cup besar) pilihan.'),
                    langkahPembuatan('3',
                        'Di wadah yang lain, buat sauce creamy dengan mencampur susu kental manis, yoghurt, dan mayonnaise, lalu aduk hingga merata merata.'),
                    langkahPembuatan('4',
                        'Selanjutnya siramkan sauce creamy tersebut ke atas buah - buah tadi.'),
                    langkahPembuatan('5', 'Kemudian parut keju diatasnya.'),
                    langkahPembuatan('6', 'Setelah itu, simpan dalam kulkas.'),
                    langkahPembuatan('7', 'Sajikan setelah dingin.'),
                    SizedBox(
                      height: 20.0,
                    ),
                  ]))
            ],
          )),
    );
  }

  Widget langkahPembuatan(String title, String title2) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        leading: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
            color: Colors.lightGreen,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
              ),
            ),
          ),
        ),
        title: Text(
          title2,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.brown,
            fontWeight: FontWeight.w700,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
    );
  }
}
