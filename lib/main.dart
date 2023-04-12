import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class NewNavBar extends StatelessWidget {
  final List<IconData> navBarIcons;

  NewNavBar(this.navBarIcons);

  void botaoFoiTocado(int index) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      onTap: botaoFoiTocado,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.red,
      backgroundColor: Colors.red,
      items: List.generate(navBarIcons.length, (index) {
        return BottomNavigationBarItem(
          icon: Icon(navBarIcons[index]),
          label: "Início",
        );
      }),
    );
  }
}

class MyBodyContent extends StatelessWidget {
  const MyBodyContent();

  static const List<String> imageUrls = [
    "https://m.media-amazon.com/images/I/61D0neZIgNL._AC_SX522_.jpg",
    "https://m.media-amazon.com/images/I/61mPlkAdz5L._AC_SX679_.jpg",
    "https://m.media-amazon.com/images/I/61gRw-ooKrL._AC_SX679_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images7.alphacoders.com/100/thumb-1920-1009580.png",
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    imageUrls[0],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Headset Gamer Redragon Zeus X RGB USB 7.1 R\$299.00",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    imageUrls[1],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Mouse Gamer Redragon Cobra, Chroma RGB, 10000DPI, 7 Botões, Preto R\$261.00",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    imageUrls[2],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Teclado Gamer Redragon Kumara Mecanico Rgb Switch Azul R\$314.99",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp();

  final navBarIcons = [
    Icons.house,
    Icons.keyboard,
    Icons.mouse,
    Icons.headset,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Melhores Ofertas de Hoje!!",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.center,
          ),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Expanded(
              child: MyBodyContent(),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Confira nossas melhores ofertas para hoje",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NewNavBar(navBarIcons),
      ),
    );
  }
}
