import 'package:flutter/material.dart';
import 'package:my_favorite_film/fourth_only.dart';
import 'package:my_favorite_film/third_spiritted.dart';
//123
import 'sec_arietty.dart';

class first_screen extends StatelessWidget {
  const first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight =
        MediaQuery.of(context).size.height; //full untuk satu layar height
    final MediaQueryWidth =
        MediaQuery.of(context).size.width; //fulluntuk satu layar width

    final bodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.amber,
                  width: MediaQueryWidth,
                  height: bodyHeight * 0.1,
                  child: Center(
                    child: Text(
                      "My Favorite Film",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PatrickHand"),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: MediaQueryWidth,
                  height: bodyHeight * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/japan/loveletter.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/indonesia/aadc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/korea/tarc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/japan/loveletter.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/indonesia/aadc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/korea/tarc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/japan/loveletter.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/indonesia/aadc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              "assets/korea/tarc.jpg",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.amber,
                  width: MediaQueryWidth,
                  height: bodyHeight * 0.1,
                  child: Center(
                    child: Text(
                      "Rekomendasi Film",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PatrickHand"),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 253, 253, 253),
                  width: MediaQueryWidth,
                  height: bodyHeight * 0.9,
                  child: ListView(
                    padding: EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQueryWidth * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                image: AssetImage("assets/japan/sample1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            height: 140,
                            width: MediaQueryWidth * 0.6,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Secret World of Arrietty ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize:
                                        20, // Sesuaikan dengan ukuran teks yang diinginkan
                                    fontWeight: FontWeight
                                        .bold, // Atur gaya teks jika perlu
                                    color: const Color.fromARGB(255, 105, 58,
                                        58), // Sesuaikan dengan warna teks yang diinginkan
                                  ),
                                ),
                                Text(
                                  "Seorang remaja dari bangsa The Borrowers yang memiliki tubuh sangat kecil, bahkan tidak lebih dari 10 cm. Arrietty dan keluarganya, Pod dan Homily, adalah keluarga dari bangsa The Borrowers yang tinggal secara anonim di rumah keluarga lain dan meminjam barang-barang sederhana untuk membuat rumah.", // Deskripsi film (maksimal 3 baris)

                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize:
                                        16, // Sesuaikan dengan ukuran teks yang diinginkan
                                    color: Color.fromARGB(255, 133, 45,
                                        45), // Sesuaikan dengan warna teks yang diinginkan
                                  ),
                                  maxLines: 1, // Batasi maksimal 3 baris
                                  overflow: TextOverflow
                                      .ellipsis, // Tampilkan elipsis (...) jika lebih dari 3 baris
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return arietty();
                                        }));
                                      },
                                      child: Text(
                                        "Read More...",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQueryWidth * 0.3,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              image: DecorationImage(
                                image: AssetImage("assets/japan/sample.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 5, top: 5),
                              height: 140,
                              width: MediaQueryWidth * 0.6,
                              color: const Color.fromARGB(255, 252, 252, 252),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Spirited Away",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize:
                                            20, // Sesuaikan dengan ukuran teks yang diinginkan
                                        fontWeight: FontWeight
                                            .bold, // Atur gaya teks jika perlu
                                        color: const Color.fromARGB(
                                            255,
                                            105,
                                            58,
                                            58), // Sesuaikan dengan warna teks yang diinginkan
                                      ),
                                    ),
                                    Text(
                                      "Seorang gadis berumur 10 tahun bernama Chihiro dan kedua orangtuanya yang masuk ke sebuah tempat yang terlihat sebagai sebuah taman hiburan yang terabaikan. Setelah kedua orangtuanya berubah menjadi babi raksasa, Chihiro bertemu dengan sosok misterius Haku yang menjelaskan kepadanya bahwa tempat mereka berada adalah sebuah resort di mana makhluk supernatural berisitrahat dari alam duniawi. Untuk dapat membebaskan kedua orangtuanya, Chihiro harus bekerja di sebuah bath house yang dikepalai oleh penyihir bernama Yubaba.", // Deskripsi film (maksimal 3 baris)
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: "PatrickHand",
                                        fontSize:
                                            16, // Sesuaikan dengan ukuran teks yang diinginkan
                                        color: Color.fromARGB(255, 133, 45,
                                            45), // Sesuaikan dengan warna teks yang diinginkan
                                      ),
                                      maxLines: 1, // Batasi maksimal 3 baris
                                      overflow: TextOverflow
                                          .ellipsis, // Tampilkan elipsis (...) jika lebih dari 3 baris
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return spiritted();
                                            }));
                                          },
                                          child: Text(
                                            "Read More...",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ])),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQueryWidth * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/japan/sample5_yes.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            height: 140,
                            width: MediaQueryWidth * 0.6,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Only Yesterday",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize:
                                        20, // Sesuaikan dengan ukuran teks yang diinginkan
                                    fontWeight: FontWeight
                                        .bold, // Atur gaya teks jika perlu
                                    color: const Color.fromARGB(255, 105, 58,
                                        58), // Sesuaikan dengan warna teks yang diinginkan
                                  ),
                                ),
                                Text(
                                  "Taeko, wanita berusia dua puluh tujuh tahun yang pergi ke pedesaan untuk liburan. Ditengah perjalanan, dia teringat kembali kehidupanya sepuluh tahun kebelakang dan dia merindukannya.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize:
                                        16, // Sesuaikan dengan ukuran teks yang diinginkan
                                    color: Color.fromARGB(255, 133, 45,
                                        45), // Sesuaikan dengan warna teks yang diinginkan
                                  ),
                                  maxLines: 1, // Batasi maksimal 3 baris
                                  overflow: TextOverflow
                                      .ellipsis, // Tampilkan elipsis (...) jika lebih dari 3 baris
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return yesterday();
                                            },
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Read More...",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
