import 'package:flutter/material.dart';

class Sayfaiki extends StatefulWidget {
  final imgpath;

  const Sayfaiki({
    required this.imgpath,
    Key? key,
  }) : super(key: key);

  @override
  _SayfaikiState createState() => _SayfaikiState();
}

class _SayfaikiState extends State<Sayfaiki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: 'assets/images/modelgrid1.jpeg',
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imgpath), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                            image: AssetImage('assets/images/dress.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LAMINATED",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Louis vuitton",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width - 170,
                          child: Text(
                            "One button V-neck sling long-sleeved waist female stitching dress",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\$6500',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 22),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Center(child: Icon(Icons.arrow_forward_ios)),
                          backgroundColor: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        )
      ],
    ));
  }
}
