import 'package:flutter/material.dart';

class yesterday extends StatefulWidget {
  const yesterday({super.key});

  @override
  State<yesterday> createState() => _yesterdayState();
}

class _yesterdayState extends State<yesterday> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQueryHeight * 0.3,
                width: MediaQueryWidth,
                child: Image.asset(
                  "assets/japan/sample6_only.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ),
            ],
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
                    child: Text("Only Yesterday"),
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
                    "Taeko, wanita berusia dua puluh tujuh tahun yang pergi ke pedesaan untuk liburan. Ditengah perjalanan, dia teringat kembali kehidupanya sepuluh tahun kebelakang dan dia merindukannya.",
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
