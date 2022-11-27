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
      title: 'Thüringen Lokal TV',
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
          Text("Datenschutz"),
          Icon(Icons.gpp_maybe),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Impressum"),
          Icon(Icons.error_outlined),
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
          title: const Text('Thüringen Lokal TV')
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