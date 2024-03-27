import 'package:flutter/material.dart';
import 'package:my_favorite_film/first_screen.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_screen(),
    );
  }
}

class med_query extends StatelessWidget {
  const med_query({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight =
        MediaQuery.of(context).size.height; //full untuk satu layar height
    final MediaQueryWidth =
        MediaQuery.of(context).size.width; //fulluntuk satu layar width

    //dibuat variable function untuk dimasukin ke dalam body height
    final myAppbar = AppBar(
      title: Text("media query"),
      backgroundColor: Colors.blue,
    );

    //tinggi all mediaqueryheight setelah dikurang sama myAppbar dan dikurang padding top (icon jam, baterai dll)
    final bodyHeight = MediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        appBar: myAppbar,
        body: Center(
          child: (isLandscape) //klo landscape ?maka ini
              ? Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.5, //klolandscpae
                      //width: 400, //ini adalah hardcode
                      width: MediaQueryWidth, //width penuh pakai media query
                      color: Colors.amber,
                    ),
                    Container(
                      //height: 300, //hardcode
                      //mediaquery itu panjanganya dari atas device sampai ke bawah device
                      height: bodyHeight * 0.5, //klo landscpae
                      color: Colors.deepOrange,

                      //klo TAMPILANNYA LISTVIEW:
                      // child: ListView.builder(
                      //   itemCount: 100,
                      //   itemBuilder: (context, index) {
                      //     return ListTile(
                      //       //contentPadding: EdgeInsets.all(20),
                      //       title: Text("Fany"),
                      //       subtitle: Text("description of me"),
                      //       leading: CircleAvatar(),
                      //       trailing: Text("10:00 PM"),

                      //       //tileColor: Colors.blueGrey,
                      //     );
                      //   },
                      // ),

                      //KLO TAMPILANNYA GRIDVIEW
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("Fany"),
                            subtitle: Text("description of me"),
                            leading: CircleAvatar(),
                            trailing: Text("10:00 PM"),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Column(
                  //klo lainnya (alias ga landcape) maka ini
                  children: [
                    Container(
                      height: bodyHeight * 0.3,
                      //width: 400, //ini adalah hardcode
                      width: MediaQueryWidth, //width penuh pakai media query
                      color: Colors.amber,
                    ),
                    Container(
                        //height: 300, //hardcode
                        //mediaquery itu panjanganya dari atas device sampai ke bawah device
                        height: bodyHeight * 0.7,
                        color: Colors.deepOrange,
                        child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (context, index) {
                            return ListTile(
                              //contentPadding: EdgeInsets.all(20),
                              title: Text("Fany"),
                              subtitle: Text("description of me"),
                              leading: CircleAvatar(),
                              trailing: Text("10:00 PM"),

                              //tileColor: Colors.blueGrey,
                            );
                          },
                        )),
                  ],
                ),
        ));
  }
}

//LAYOUT BUILDER

class Mylayoutbuilder extends StatelessWidget {
  const Mylayoutbuilder({super.key});

//apa itu constrain? untukmendapatkan parameter-parameter dari parentnya

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppbar =
        AppBar(title: Text("layout builder"), backgroundColor: Colors.amber);
    final heightBody = heightApp - myAppbar.preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: Container(
          width: widthApp * 0.9, //double.infinity, //==> pasang media query
          height: heightBody * 0.4,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //parameter heightApp gaperlu ditulis karena mengikuti constraint height dari extract widget di bawah
              // exwid_container(widthApp, heightApp),
              // exwid_container(widthApp, heightApp),
              // exwid_container(widthApp, heightApp),
              exwid_container(
                widthApp,
              ),
              exwid_container(
                widthApp,
              ),
              exwid_container(
                widthApp,
              )
            ],
          ),
        ),
      ),
    );
  }
}

//type 1:

// class exwid_container extends StatelessWidget {
//   const exwid_container({
//     super.key,
//     required .widthApp;
//      required.heightApp;
//   });
//  final double widthApp;
//  final double heightApp;

//type 2:

// class ExWidContainer extends StatelessWidget {
//   const ExWidContainer({
//     Key? key,
//     required this.widthApp,
//      required this.heightApp,
//   }) : super(key: key);
//  final double widthApp;
//  final double heightApp;

//PENTINGS: about layout builderrrrr:
//supaya pasheight abu2nya berubah ukuran langsung ikutan berubah juga box xontainer amber di dalamnya jadi otomatis gitunahitu pake cara constraint

//cara 1 :manual
// ignore: must_be_immutable
// class exwid_container extends StatelessWidget {
//   // double widthApp;
//   // double heightApp;

//   //karena ini stateless pake final
//   final double widthApp;
//   final double heightApp;
//   exwid_container(this.widthApp, this.heightApp);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       width: widthApp * 0.25,
//       height: heightApp *
//           0.20, //kloheightnya ga ditenuin nanti penuh //materiinvisible and visible widget row
//     );
//   }
// }

//cara 2: otomatis pakai constraint
class exwid_container extends StatelessWidget {
  final double widthApp;
  //final double heightApp; ==> ini gaperlu karena ngikutin constraint height
  //exwid_container(this.widthApp, this.heightApp); //ini this height gaperlu karena ngikutin contrainst height
  exwid_container(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.amber,
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.5,
          //si contsraint itu ngikutin ukuran height yg di atas=>  height: heightBody * 0.4,
          //ngikutin data dariparent container ==> yg ada ukurannya
        );
      },
    );
  }
}
