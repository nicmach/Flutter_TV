import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:test_in_app_brwoser/in_app_browser_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key}) : super(key:key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> titles = ["TV-Altenburg", "Jena TV", "Oscar TV", "Rennsteig TV", "Salve", "SRF"];
  final List<String> urls = ["https://www.altenburg.tv/", "https://www.jenatv.de/", "https://www.oscar-am-freitag.de/oaftv/", "https://www.rennsteig.tv/", "https://www.salve.tv/", "https://www.srf-online.de/"];


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(1, 40, 1, 40),
        crossAxisCount: 2,
        children: [
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/ABG_TV.jpg"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAppBrowserPage(
                            text_url: urls[0],
                            text_title: titles[0],
                          )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/Jena_TV.png"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAppBrowserPage(
                            text_url: urls[1],
                            text_title: titles[1],
                          )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/Oscar_TV.jpg"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAppBrowserPage(
                            text_url: urls[2],
                            text_title: titles[2],
                          )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/Rennsteig.jpg"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAppBrowserPage(
                            text_url: urls[3],
                            text_title: titles[3],
                          )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/Salve_TV.jpg"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAppBrowserPage(
                            text_url: urls[4],
                            text_title: titles[4],
                          )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
          Card(
              shadowColor: Colors.black,
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/1.0x/SRF_TV.jpg"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InAppBrowserPage(
                              text_url: urls[5],
                              text_title: titles[5],
                            )),
                        );
                      },
                    ),
                    height: 1500,
                    width: 1500,
                    fit: BoxFit.cover,
                  ),

                ],
              )
          ),
        ],
      )


      /*MediaQuery.of(context).orientation == Orientation.portrait
        ? Container(
            color: Colors.blue,
            child: const Center(child: Text("Portrait")),
          )
        : Container(
            color: Colors.green,
            child: const Center(child: Text("Portrait")),
          )*/
      /*Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Center(child: Text('Content')),
            ),
          ),

        ],
      ),*/
    );



    /*
    return Scaffold(
      appBar: AppBar(
        title: Text("InApp Browser"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InAppBrowserPage())
            );
          },
          child: Center(
            child: Text("Open Website"),
          )
        ),
      )
    );*/
  }
}


