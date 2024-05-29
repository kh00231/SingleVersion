import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommencementSystemView extends StatelessWidget {
  const CommencementSystemView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
    //..loadRequest(Uri.parse('https://portal.chailease.com.kh/#/login?redirectPath=%2F'));
      ..loadRequest(Uri.parse('https://contractsearch.chailease.com.kh/#/'));


    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Commencement System",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: WebViewWidget(controller: controller));
  }

  //=> GetBody
  Widget getBody() {
    debugPrint("getBody function");
    return Container();
  }
}