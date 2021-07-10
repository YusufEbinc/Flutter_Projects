import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_moda_uygulamasi/sayfa_iki.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ]),
      ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Moda Uygulaması ',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      //******************************************************************************************************** */
      body: ListView(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                listeElamani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 21,
                ),
                listeElamani(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(
                  width: 21,
                ),
                listeElamani('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(
                  width: 21,
                ),
                listeElamani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 21,
                ),
                listeElamani(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(
                  width: 21,
                ),
                listeElamani('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(
                  width: 21,
                ),
                listeElamani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 21,
                ),
              ],
            ),
          ),

//******************************************************************************************************** */
          Padding(
            padding: EdgeInsets.all(20),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 540,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    //******************************************************************************************************** */
                    Row(
                      children: [
                        Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/model3.jpeg'),
                                    fit: BoxFit.cover))),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '34 mins ago',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //******************************************************************************************************** */
                    Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very temparament and is recommend to friends",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //************************************************************************************************************ */
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => (Sayfaiki(
                                        imgpath:
                                            'assets/images/modelgrid1.jpeg',
                                      ))));
                            },
                            child: Hero(
                              tag: 'assets/images/modelgrid1.jpeg',
                              child: Container(
                                height: 208,
                                width:
                                    (MediaQuery.of(context).size.width - 70) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/modelgrid1.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => (Sayfaiki(
                                                  imgpath:
                                                      'assets/images/modelgrid2.jpeg',
                                                ))));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/modelgrid2.jpeg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => (Sayfaiki(
                                                  imgpath:
                                                      'assets/images/modelgrid3.jpeg',
                                                ))));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/modelgrid3.jpeg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
//******************************************************************************************************** */
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              '# Lois vuitton',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          size: 25,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '1.7k',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.comment,
                          size: 25,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '325',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 330,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 25,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeElamani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover))),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(logoPath), fit: BoxFit.cover))),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
