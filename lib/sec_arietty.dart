import 'package:flutter/material.dart';

class arietty extends StatelessWidget {
  const arietty({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: MediaQueryHeight * 0.3,
            width: MediaQueryWidth,
            child: Image.asset(
              "assets/japan/sample4_arri.jpg",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    width: MediaQueryWidth * 0.5,
                    // color: Color.fromARGB(255, 255, 255, 255),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.black, // warna border
                          width: 1.0, // lebar border
                        ),
                      ),
                    ),
                    child: Text("The Secret World of Arriety"),
                  ),
                  Container(
                    width: MediaQueryWidth * 0.4,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Center(child: Text("(2010)")),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    width: MediaQueryWidth * 0.5,
                    //color: Color.fromARGB(255, 255, 255, 255),
                    child: Text("2h 49m"),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.black, // warna border
                          width: 1.0, // lebar border
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQueryWidth * 0.4,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Center(child: Text("Fantasy, Mystery")),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Plot",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // height: MediaQueryHeight * 0.4,
                  // width: MediaQueryWidth * 0.4,
                  child: Text(
                    "Seorang remaja dari bangsa The Borrowers yang memiliki tubuh sangat kecil, bahkan tidak lebih dari 10 cm. Arrietty dan keluarganya, Pod dan Homily, adalah keluarga dari bangsa The Borrowers yang tinggal secara anonim di rumah keluarga lain dan meminjam barang-barang sederhana untuk membuat rumah.", // Deskripsi film (maksimal 3 baris)
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
