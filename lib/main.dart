import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astronomy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _image = 'images/moon.jpg';
  String _title = 'The Moon';
  String _description =
      "The Moon is Earth's only natural satellite. It orbits at an average distance of 384,400 km, about 30 times the diameter of Earth. Tidal forces between Earth and the Moon have synchronized the Moon's orbital period with its rotation period at 29.5 Earth days, causing the same side of the Moon to always face Earth.";

  void changeData(String image, String title, String description) {
    setState(
      () {
        _image = image;
        _title = title;
        _description = description;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Astronomy',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                _image,
                height: 400,
                width: 400,
              ),
              Text(
                _title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Astronomy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  // SizedBox({20, 20}),
                  Text(
                    'Arham Sayyed 139 SYIT B',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('Moon'),
              onTap: () {
                changeData('images/moon.jpg', 'The Moon',
                    "The Moon is Earth's only natural satellite. It orbits at an average distance of 384,400 km, about 30 times the diameter of Earth. Tidal forces between Earth and the Moon have synchronized the Moon's orbital period with its rotation period at 29.5 Earth days, causing the same side of the Moon to always face Earth.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sun'),
              onTap: () {
                changeData('images/sun.jpg', 'The Sun',
                    "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, radiating energy primarily through nuclear fusion. The Sun provides energy to Earth, making life possible.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Mercury'),
              onTap: () {
                changeData('images/mercury.jpg', 'Mercury',
                    "Mercury is the smallest and innermost planet in the Solar System. It has an extremely thin atmosphere and is the fastest planet to orbit the Sun, taking only 88 Earth days.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Venus'),
              onTap: () {
                changeData('images/venus.jpg', 'Venus',
                    "Venus is the second planet from the Sun and has a thick, toxic atmosphere filled with carbon dioxide. It has the hottest surface of any planet in the Solar System.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Earth'),
              onTap: () {
                changeData('images/earth.jpg', 'Earth',
                    "Earth is the third planet from the Sun and the only astronomical object known to harbor life. It has a diverse atmosphere and is the densest planet in the Solar System.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Mars'),
              onTap: () {
                changeData('images/mars.jpg', 'Mars',
                    "Mars is the fourth planet from the Sun. Known as the Red Planet due to its reddish appearance, it has the largest volcano and canyon in the Solar System.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jupiter'),
              onTap: () {
                changeData('images/jupiter.jpg', 'Jupiter',
                    "Jupiter is the largest planet in the Solar System, primarily made of hydrogen and helium. It has the most massive and complex system of moons, including Ganymede, the largest moon.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Saturn'),
              onTap: () {
                changeData('images/saturn.jpg', 'Saturn',
                    "Saturn is the sixth planet from the Sun, famous for its prominent ring system. It is a gas giant with an average radius nine times that of Earth.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Uranus'),
              onTap: () {
                changeData('images/uranus.jpg', 'Uranus',
                    "Uranus is the seventh planet from the Sun. It has the coldest atmosphere of any planet in the Solar System and orbits on its side, causing extreme seasons.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Neptune'),
              onTap: () {
                changeData('images/neptune.jpg', 'Neptune',
                    "Neptune is the eighth and farthest-known planet from the Sun. It has strong winds, with speeds reaching up to 2,100 km/h, and it is the most distant planet in the Solar System.");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
