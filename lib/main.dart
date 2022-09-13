import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => BlankPage()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Find Your',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Inspiration',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Promo Today',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/cooper_1_seater.jpg'),
                          promoCard('assets/pexels-photo-1866149.webp'),
                          promoCard('assets/photo-1555041469-a586c61ea9bc.jpg'),
                          promoCard(
                              'pillow-sofa-decoration-interior-living-room-area_74190-12634.webp'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/photo-1586023492125-27b2c045efd7.jpg')),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: const [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return GestureDetector(
      onTap: () {
        debugPrint('dsadadas');
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ProductScreen()));
      },
      child: AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: const EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: const [
                      0.1,
                      0.9
                    ],
                    colors: [
                      Colors.red.withOpacity(.8),
                      Colors.black.withOpacity(.1)
                    ])),
          ),
        ),
      ),
    );
  }
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'cooper_1_seater.jpg',
              height: 400,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                              child: Image.asset(
                                  'photo-1564564244660-5d73c057f2d2.jpg',
                                  width: 80,
                                  height: 100)),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joshua',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                                height: 0,
                              ),
                              Text(
                                'Designer',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [Icon(Icons.bookmark), Text('123')],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.face),
                          Text('863'),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.linked_camera_outlined),
                          Text('117'),
                          SizedBox(
                            width: 225,
                          ),
                          Icon(Icons.ac_unit_outlined),
                          Text('609'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                              child: Text(
                            'Awesome story',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          child: Text(
                        'Once i was drawing a perfect chair for myself but could not finish her design so i bought her',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      )),
                      SizedBox(
                        width: 10,
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            fillColor: Colors.grey.withOpacity(0.3),
                            filled: true,
                            hintText: 'Type Something'),
                      ),
                    ],
                  ),
                ),
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Column(
            //       children: [
            //         Text('best furniture', style: TextStyle(fontSize: 40)),
            //         SizedBox(height: 10),
            //         Container(
            //             child: Row(
            //           children: [
            //             Container(
            //               constraints: BoxConstraints(
            //                 maxWidth: MediaQuery.of(context).size.width / 2,
            //               ),
            //               child: const Text(
            //                 'BEST COMFORTABLE FURNITURE WITH REASONABLE PRICE',
            //                 style: TextStyle(
            //                   fontSize: 40,
            //                 ),
            //                 maxLines: 4,
            //               ),
            //             ),
            //             SizedBox(height: 20),
            //
            //           ],
            //         ))
            //       ],
            //     ),
            //   ],
            // )
          ],
        ));
  }
}

class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'photo-1564564244660-5d73c057f2d2.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Joshua',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                        width: 5,
                      ),
                      Text(
                        'Designer',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'cooper_1_seater.jpg',
                      height: 130,
                      width: 150,
                    ),
                    SizedBox(
                      height: 27,
                      width: 27,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Imported 1',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(Icons.add_a_photo_sharp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Text('RS 15,000'),
                          SizedBox(
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            '\$32',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'pexels-photo-1866149.webp',
                      height: 130,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 27,
                    width: 27,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Imported 2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Icon(Icons.add_a_photo_sharp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Text('RS 19,000'),
                        SizedBox(
                          height: 15,
                          width: 15,
                        ),
                        Text(
                          '\$31a',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'pillow-sofa-decoration-interior-living-room-area_74190-12634.webp',
                    height: 130,
                    width: 150,
                  ),
                  SizedBox(
                    height: 27,
                    width: 27,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Imported 3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Icon(Icons.add_a_photo_sharp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Text('RS 15,000'),
                        SizedBox(
                          height: 15,
                          width: 15,
                        ),
                        Text(
                          '\$32',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Card(
            //     child: Row(
            //   children: [
            //     SizedBox(
            //       height: 10,
            //       width: 10,
            //     ),
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(10),
            //       child: Image.asset(
            //         'pexels-photo-1866149.webp',
            //         height: 130,
            //         width: 150,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 20,
            //       width: 20,
            //     ),
            //     Column(
            //       children: [
            //         Text(
            //           'Title',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //
            //         SizedBox(
            //           height: 10,
            //           width: 10,
            //         ),
            //         Text('RS 10,000'),
            //         SizedBox(
            //           height: 15,
            //           width: 15,
            //         ),
            //         Text(
            //           '\$45',
            //           style: TextStyle(color: Colors.grey),
            //         )
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         SizedBox(
            //           width: 188,
            //         ),
            //         Icon(Icons.camera_alt_sharp)
            //       ],
            //     )
            //   ],
            // )),
            // Card(
            //     child: Row(
            //   children: [
            //     SizedBox(
            //       height: 10,
            //       width: 10,
            //     ),
            //     Image.asset(
            //       'supreme-plus_1__1_3.webp',
            //       height: 130,
            //       width: 150,
            //     ),
            //     SizedBox(
            //       height: 20,
            //       width: 20,
            //     ),
            //     Column(
            //       children: [
            //         Text(
            //           'Aside',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(
            //           height: 10,
            //           width: 10,
            //         ),
            //         Text('RS 20,000'),
            //         SizedBox(
            //           height: 15,
            //           width: 15,
            //         ),
            //         Text(
            //           '\$58',
            //           style: TextStyle(color: Colors.grey),
            //         )
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         SizedBox(
            //           width: 188,
            //         ),
            //         Icon(Icons.camera_alt_rounded)
            //       ],
            //     )
            //   ],
            // )),
            // Card(
            //     child: Row(children: [
            //   SizedBox(
            //     height: 10,
            //     width: 10,
            //   ),
            //   Image.asset(
            //     'pillow-sofa-decoration-interior-living-room-area_74190-12634.webp',
            //     height: 130,
            //     width: 150,
            //   ),
            //   SizedBox(
            //     height: 20,
            //     width: 20,
            //   ),
            //   Column(
            //     children: [
            //       Text(
            //         'Footer',
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(
            //         height: 10,
            //         width: 10,
            //       ),
            //       Text('RS 30,000'),
            //       SizedBox(
            //         height: 15,
            //         width: 15,
            //       ),
            //       Text(
            //         '\$73',
            //         style: TextStyle(color: Colors.grey),
            //       )
            //     ],
            //   ),
            //   Row(
            //     children: [
            //       SizedBox(
            //         width: 188,
            //       ),
            //       Icon(Icons.camera_enhance_sharp)
            //     ],
            //   )
            // ])),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFFa2a3ff),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text('Total'),
                    Text(
                      "\$576",
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Text(
                          "CONFIRM",
                          textAlign: TextAlign.right,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
