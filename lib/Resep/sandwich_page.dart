import 'package:cook_me_release/Pages/keranjang_page.dart';
import 'package:flutter/material.dart';
import '../dialogs.dart';
import '../layout.dart';

class SandwichPage extends StatefulWidget {
  @override
  _SandwichPageState createState() => _SandwichPageState();
}

class _SandwichPageState extends State<SandwichPage> {
  Dialogs dialogs = new Dialogs();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 130.0,
                backgroundColor: Colors.lightGreen,
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                      ),
                      onPressed: () {
                        dialogs.information(
                            context, 'Kandungan Gizi','assets/datasandwich.png');
                      }),
                ],
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4.5, right: 8.0),
                    child: Text(
                      'Sandwich',
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
                              image: AssetImage('assets/sandwich.jpg'),
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
                    bahanResep('  6 - 8 lembar roti tawar'),
                    bahanResep('  2 - 4 lembar keju'),
                    bahanResep('  2 - 4 lembar daging asap'),
                    bahanResep('  2 butir telur'),
                    bahanResep('  1/2 buah tomat'),
                    bahanResep('  1/2 buah timun'),
                    bahanResep('  4 lembar selada'),
                    bahanResep('  4 sdm mayonnaise'),
                    bahanResep('  2 sdt minyak'),
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
        children: <Widget>[
          Container(
            child: Icon(
              Icons.arrow_right,
              color: Colors.lightGreen,
            ),
          ),
          Container(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.brown,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0),
            ),
          )
        ],
      ),
    );
  }
}

class LangkahPembuatan extends StatefulWidget {
  LangkahPembuatan({Key key, this.title}) : super(key: key);
  final String title;

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
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                      ),
                      onPressed: () {
                        dialogs.information(
                            context, 'Kandungan Gizi','assets/datasandwich.png');
                      }),
                ],
                expandedHeight: 150.0,
                backgroundColor: Colors.lightGreen,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4.5, right: 8.0),
                    child: Text(
                      'Sandwich',
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
                              image: AssetImage('assets/sandwich.jpg'),
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
                    langkahPembuatan(
                        '1', 'Goreng telur bentuk mata sapi satu persatu.'),
                    langkahPembuatan('2',
                        'Masak daging asap tanpa menggunakan minyak, lalu sisihkan.'),
                    langkahPembuatan('3',
                        'Ambil roti tawar, selanjutnya tumpuk dengan irisan tomat, selada, keju lembaran, daging asap, telur dan mayonnaise. Jika ingin tebal, lakukan langkah ini sampai dua kali.'),
                    langkahPembuatan('4', 'Tumpuk kembali menggunakan roti tawar.'),
                    langkahPembuatan(
                        '5', 'Potong kulit pinggiran roti tawar sesuai selera.'),
                    langkahPembuatan('6',
                        'Potong roti hingga membentuk segitiga menggunakan pisau tajam agar potongannya menjadi rapi.'),
                    langkahPembuatan(
                        '7', 'Sajian sandwich telah siap untuk dinikmati.'),
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
