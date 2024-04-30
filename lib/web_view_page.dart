import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
   final WebViewController webViewController = WebViewController();

   initWebView(){
     webViewController..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse("https://vasavicommunications.com"));
     setState(() {});
   }

   @override
  void initState() {
     initWebView();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        top: true,
        bottom: false,
        right: false,
        child: WebViewWidget(
          controller:webViewController,
        ),
      ),
    );
  }
}
