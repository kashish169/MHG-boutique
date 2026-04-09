import 'package:flutter/material.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewShow extends StatefulWidget {
  const WebViewShow({super.key, required this.url});
  final String url;

  @override
  State<WebViewShow> createState() => _WebViewShowState();
}

class _WebViewShowState extends State<WebViewShow> {
  late final WebViewController webViewController;

  @override
  void initState() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000));
    webViewController.loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, fontSize: 15, title: 'Tabby'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}
