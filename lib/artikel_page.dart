import 'package:flutter/material.dart';

class ArtikelPertama extends StatefulWidget {
  @override
  _ArtikelPertamaState createState() => _ArtikelPertamaState();
}

class _ArtikelPertamaState extends State<ArtikelPertama> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: new IconThemeData(color: Colors.green),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Text(
                  '5 Makanan "Sehat" yang Bikin Diet Gagal',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Tim, CNN Indonesia | Kamis, 18/07/2019 18:13 WIB',
                  style: TextStyle(fontSize: 12.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Image.asset('assets/cnn.jpeg')),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '             Jakarta, CNN Indonesia -- Makanan-makanan dengan klaim "sehat" tengah digandrungi. Diet sehat dengan mengonsumsi makanan-makanan bernutrisi tengah diikuti banyak orang. Namun, perlu diketahui, tak semua makanan yang disebut sehat bakal benar-benar menyehatkan. Anda perlu jeli, sebab bisa saja makanan yang dianggap sehat justru mengandung banyak gula dan zat-zat berbahaya lainnya. Alhasil, berat badan yang diinginkan pun tak terpenuhi.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Berikut mengutip Daily Star beberapa jenis makanan yang sebaiknya dikurangi.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '1. Keripik Sayur',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '               Para ahli menyarankan untuk menyertakan sayuran sebagai menu makanan harian. Salah satu olahan sayur yang digemari adalah keripik. Meski lebih menyehatkan daripada keripik lain, namun bukan berarti keripik sayur baik untuk tubuh. "Kenyataannya keripik sayur punya nilai gizi sama seperti keripik kentang karena hanya memiliki sedikit kandungan sayur," kata ahli diet Terri-Ann Nunns. ',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '2. Hummus',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '               Sajian khas Timur Tengah dan kawasan Mediterania ini umumnya terbuat dari kacang-kacangan yang ditumbuk halus. Hal itu membuat hummus memiliki banyak kandungan protein. Kendati demikian, Anda perlu berhati-hati mengonsumsi hummus siap saji yang dijual di pasaran. "Studi terakhir menemukan beberapa tipe hummus mengandung lebih banyak garam daripada empat kantong keripik asin," kata Nunns. ',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '3. Yoghurt Beku',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '               Dibanding es krim, yogurt jelas lebih sehat. Namun, fakta ini sebaiknya tak diikuti dengan konsumsi segelas besar yogurt. Nuuns mengatakan, yogurt beku umumnya mengandung jumlah gula yang sama dengan es krim. ',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '4. Alpukat',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '               Kandungan asam lemak tak jenuh membuat alpukat jadi salah satu sumber lemak sehat. Alpukat juga bisa diolah jadi beragam jenis makanan. Namun, Anda disarankan untuk mengontrol konsumsi alpukat lantaran kandungan kalorinya yang tinggi. "Kenyataannya bahwa sebenarnya alpukat tinggi kalori," ujar Nuuns. Setiap satu buah alpukat mengandung 340 kalori. ',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0,),
                Text(
                  '5. Jus Buah',
                  textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0,),
                Text(
                  '               Bosan dengan buah potong? Jus buah bisa jadi solusi. Namun, akan lebih baik jika Anda mengontrol konsumsi jus buah lantaran kandungan tinggi gula di dalamnya. "Kadang kita bisa dibodohi dengan pemikiran bahwa minum segelas jus buah adalah cara sempurna untuk melengkapi kebutuhan nutrisi, tetapi kenyataannya mereka tinggi gula," jelas Nunns. ',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )),
    );
  }
}
