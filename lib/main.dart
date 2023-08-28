import 'package:flutter/material.dart';
import 'package:test_in_app_brwoser/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thüringer Lokal TV',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyMainPage(),
    );
  }
}


class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  //@override
  //_MyHomePageState createState() => _MyHomePageState();
  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[

    HomePage(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Flexible (
            child:Text(
              'Genaue Details zum Datenschutz finden sich auf den einzelnen Seiten.',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Flexible (
            child:const Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(text: ' Impressum\n ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'GML Mediengesellschaft mbH\nAmtsgasse 2\n04600 Altenburg'),
                  TextSpan(text: ' Telefon: 03447 316595\nTelefax: 03447 375611\nE-Mail: postmaster@gml-mediengesellschaft.de\n'),
                  TextSpan(text: '\nVertreten durch:\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Dipl.-kfm. Mike Langer\n'),
                  TextSpan(text: '\nRegistereintrag:\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Eingetragen im Handelsregister.\nRegistergericht: Jena\nRegisternummer: 503775\n'),
                  TextSpan(text: '\nAufsichtsbehörde:\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Thüringer Landesmedienanstalt\n'),
                  TextSpan(text: '\nVerantwortlich für den Inhalt ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '(gem. § 55 Abs. 2 RStV):\n'),
                  TextSpan(text: 'Redaktionsleitung: Mike Langer\n'),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ),
          /*Text('''
Impressum

GML Mediengesellschaft mbH
Amtsgasse 2
04600 Altenburg

Telefon: 03447 316595
Telefax: 03447 375611
E-Mail: postmaster@gml-mediengesellschaft.de

Vertreten durch:
Dipl.-kfm. Mike Langer

Registereintrag:
Eingetragen im Handelsregister.
Registergericht: Jena
Registernummer: 503775

Aufsichtsbehörde: Thüringer Landesmedienanstalt

Verantwortlich für den Inhalt (gem. § 55 Abs. 2 RStV):
Redaktionsleitung: Mike Langer
        ''',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),*/
        ],
      ),
    ),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFDF011B),
          title: const Text('Thüringer Lokal TV')
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gpp_maybe),
            label: 'Datenschutz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error_outlined),
            label: 'Impressum',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

}