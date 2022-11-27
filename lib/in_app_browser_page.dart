import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppBrowserPage extends StatefulWidget {
  // const InAppBrowserPage ({ Key? key}) : super(key: key);

  var text_title;
  var text_url;
  InAppBrowserPage({Key? mykey, this.text_url, this.text_title}) : super(key: mykey);

  @override
  _InAppBrowserPageState createState() => _InAppBrowserPageState();
}

class _InAppBrowserPageState extends State<InAppBrowserPage> {
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // Title and url missing

  arrowBack() async {
    if (await webView.canGoBack()) {
      await webView.goBack();
    }
  }

  arrowForward() async {
    if (await webView.canGoForward()) {
      await webView.goForward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFDF011B),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "${widget.text_title}",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: arrowBack,
              icon: Icon(Icons.arrow_back),
          ),
          /*SizedBox(
              width: MediaQuery.of(context).size.width*0.75,
          ),*/
          IconButton(
            onPressed: arrowForward,
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("${widget.text_url}"),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged: (InAppWebViewController controller, int progress) {
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          _progress < 1 ? SizedBox( // If progress is smaller then 1 do...
            height: 3,
            child: LinearProgressIndicator(
              value: _progress,
              backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            ),
            // Else if progress is bigger or equal to 1 do...
          ) : SizedBox()
        ],
      ),
    );
  }
}

