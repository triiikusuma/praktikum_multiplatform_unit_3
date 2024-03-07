import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Layout Praktikum',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
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
var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
switch (selectedIndex) {
  case 0:
    page = HomePage();
    break;
  case 1:
    page = PageOne();
    break;
  case 2:
    page = PageTwo();
    break;
  default:
    throw UnimplementedError('no widget for $selectedIndex');
}
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.perm_identity),
                      label: Text('Identity Tri'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.perm_identity),
                      label: Text('Identity Kirana'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlue,
                  child: page,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text('BIODATA MAHASISWA'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

  body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(padding: EdgeInsets.all(8.6),
      child:  Image(image: NetworkImage("https://media.istockphoto.com/id/1154987560/id/vektor/kartu-identitas-mahasiswa-universitas-sekolah-kartu-identitas-perguruan-tinggi-ilustrasi.jpg?s=612x612&w=0&k=20&c=pgTTLR_n_Z0DSwtfWMII5w2kSL8kkqZz_4mwWGHwImE=")),
      ),
      Card(
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(15.15),
            child: Text("SELAMAT DATANG DI BIODATA MAHASISWA"),
          )
      ),

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Padding(
      padding: EdgeInsets.all(8.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageOne()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue, // Atur warna sesuai kebutuhan
        ),
         child: Text(
          "Identity Tri",
          style: TextStyle(
            color: Colors.white, // Atur warna teks sesuai kebutuhan
            fontSize: 16, // Atur ukuran font sesuai kebutuhan
            fontWeight: FontWeight.bold, // Atur gaya font sesuai kebutuhan
          ),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageTwo()),
          );
        },
         style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
         ),
         child: Text(
          "Identity Kirana",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16, 
            fontWeight: FontWeight.bold,
          ),
      ),
    ),
    )
  ],
)
    ]
  ),
  )
);
}
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIODATA DIRI'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      
      body:ListView(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(8.6),
            child: Image.network("https://t3.ftcdn.net/jpg/06/87/80/96/360_F_687809694_8wvi3jo9ANyjZPLEVUD2ufRPiLHpR1ad.jpg"),
          ),
          const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.home),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.school),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.settings),
          ),
          ],
          ),

        const ListTile(
          title: Text("Tri Kusuma",),
          subtitle: Text("Nama"),
        ),
        const ListTile(
          title: Text("Fakultas Teknik dan Informatika"),
          subtitle: Text("Fakultas"),
        ),
        const ListTile(
          title: Text("Teknologi Informasi"),
          subtitle: Text("Program Studi"),
        ),
        const ListTile(
          title: Text("421313252"),
          subtitle: Text("NIM"),
        ),
        const ListTile(
          title: Text("Jalan pratama No.33 Wn"),
          subtitle: Text("Alamat"),
        ),
        const ListTile(
          title: Text("Teknologi Informasi (TI) merujuk pada penggunaan komputer dan perangkat lunak untuk mengumpulkan, menyimpan, mengolah, dan menyebarkan informasi. Ini mencakup berbagai macam teknologi dan sistem yang digunakan untuk mengelola dan mengirimkan data dalam berbagai bentuk. Teknologi Informasi juga mencakup infrastruktur teknologi yang mendukung proses ini, seperti jaringan komputer, server, dan perangkat keras dan perangkat lunak lainnya."),
        )
        ]
      )
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIODATA DIRI'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      
      body:ListView(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(8.6),
            child: Image.network("https://t3.ftcdn.net/jpg/06/87/80/96/360_F_687809694_8wvi3jo9ANyjZPLEVUD2ufRPiLHpR1ad.jpg"),
          ),
          const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.home),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.school),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.settings),
          ),
          ],
          ),

        const ListTile(
          title: Text("Kirana",),
          subtitle: Text("Nama"),
        ),
        const ListTile(
          title: Text("Fakultas Psikologi"),
          subtitle: Text("Fakultas"),
        ),
        const ListTile(
          title: Text("Psikologi"),
          subtitle: Text("Program Studi"),
        ),
        const ListTile(
          title: Text("421313252"),
          subtitle: Text("NIM"),
        ),
        const ListTile(
          title: Text("Jalan Mekar, Pemogan"),
          subtitle: Text("Alamat"),
        ),
        const ListTile(
          title: Text("Jurusan Psikologi adalah salah satu cabang ilmu di bidang ilmu sosial yang mempelajari perilaku manusia dan proses mentalnya. Jurusan ini mempelajari berbagai aspek psikologi, termasuk tetapi tidak terbatas pada perkembangan manusia, kejiwaan, interaksi sosial, kognisi, emosi, dan psikopatologi."),
        )
        ]
      )
    );
  }
}