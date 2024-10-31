import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final profil = <String, String>{};

  MainApp({super.key}) {
    profil['name'] = 'McDonald`s';
    profil['email'] = 'mcdonald@gmail.com';
    profil['phone'] = '+621345678910';
    profil['img'] = 'mcd.jpg';
    profil['addr'] =
        'Jl. Pandanaran No.44, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134';
    profil['desc'] =
        'McDonald’s adalah restoran cepat saji yang terkenal dengan menu favorit seperti Big Mac, McChicken, dan kentang goreng. Dengan pelayanan cepat dan harga terjangkau, McDonald’s cocok untuk semua kalangan, dari sarapan hingga makan malam. Nikmati beragam pilihan makanan dan layanan Drive-Thru yang praktis, serta menu lokal yang menghadirkan pengalaman makan memuaskan.';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "McDonald",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "${profil['name']}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow[600],
            ),
          ),
          backgroundColor: const Color.fromRGBO(182, 0, 0, 1),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/${profil["img"] ?? ''}'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  btnContact(
                    Icons.alternate_email,
                    "mailto:${profil['email'] ?? ''}?subject=Tanya%20Seputar%20Resto",
                    "Email",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  btnContact(
                    Icons.phone,
                    "tel:${profil['phone'] ?? ''}",
                    "Telephone",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  btnContact(
                    Icons.location_pin,
                    "https://www.google.com/maps/search/?api=1&query=-6.98242381072008, 110.40909278300879",
                    "Map",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  "${profil['desc']}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    height: 1.4,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.dining,
                            size: 35,
                            color: Color.fromRGBO(182, 0, 0, 1),
                          ),
                          Text(
                            " Menu",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 63, 63),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const BurgerAnimated(title: 'Burger'),
              const DrinkAnimated(title: 'Drink'),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 35,
                            color: Color.fromRGBO(182, 0, 0, 1),
                          ),
                          Text(
                            " Alamat",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 63, 63),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        textAlign: TextAlign.center,
                        "${profil["addr"]}",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            size: 35,
                            color: Color.fromRGBO(182, 0, 0, 1),
                          ),
                          Text(
                            " Jam Buka",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 63, 63),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 60),
                      child: Column(
                        children: [
                          Text(
                            "Senin - Jumat: 09.00 - 23.00",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Sabtu - Minggu: 10.00 - 22.00",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // const AnimatedContainerExample(title: 'RiceBox'),
            ],
          ),
        ),
      ),
    );
  }

  Expanded btnContact(IconData icon, String uri, String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          launch(uri);
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromRGBO(182, 0, 0, 1),
          foregroundColor: Colors.yellow[600],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                wordSpacing: 1.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BurgerAnimated extends StatefulWidget {
  final String title;

  const BurgerAnimated({super.key, required this.title});

  @override
  State<BurgerAnimated> createState() => _BurgerAnimatedState();
}

class _BurgerAnimatedState extends State<BurgerAnimated> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
          // width: selected ? 400.0 : 400.0,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromRGBO(182, 0, 0, 1),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(60, 64, 67, 0.3),
                  blurRadius: 2,
                  spreadRadius: 0,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
                BoxShadow(
                  color: Color.fromRGBO(60, 64, 67, 0.15),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
              ]),
          width: 350.0,
          height: selected ? 300.0 : 50.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[600],
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: selected ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn,
                child: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/burger/BigMac.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "BigMac",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/burger/Cheeseburger.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Cheeseburger",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/burger/Hamburger.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Hamburger",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/burger/McDouble.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "McDouble",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class DrinkAnimated extends StatefulWidget {
  final String title;

  const DrinkAnimated({super.key, required this.title});

  @override
  State<DrinkAnimated> createState() => _DrinkAnimatedState();
}

class _DrinkAnimatedState extends State<DrinkAnimated> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
          // width: selected ? 400.0 : 400.0,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromRGBO(182, 0, 0, 1),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(60, 64, 67, 0.3),
                  blurRadius: 2,
                  spreadRadius: 0,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
                BoxShadow(
                  color: Color.fromRGBO(60, 64, 67, 0.15),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
              ]),
          width: 350.0,
          height: selected ? 200.0 : 50.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[600],
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: selected ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn,
                child: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/Caramel Mocha.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Caramel Mocha",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/Frozen CocaCola.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Frozen CocaCola",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/Dr Pepper.png'),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Dr Pepper",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
