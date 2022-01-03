import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Softglass',
      home: SafeArea(child: SoftglassWebView()),
    );
  }
}

class SoftglassWebView extends StatefulWidget {
  const SoftglassWebView({Key? key}) : super(key: key);

  @override
  SoftglassWebViewState createState() => SoftglassWebViewState();
}

class SoftglassWebViewState extends State<SoftglassWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://softglass.org/',
    );
  }
}
