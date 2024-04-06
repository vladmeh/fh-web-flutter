import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import './navigation_controls.dart';
import './web_view_stack.dart';

class LkWebPage extends StatefulWidget {
  const LkWebPage({super.key});

  @override
  State<LkWebPage> createState() => _LkWebPageState();
}

class _LkWebPageState extends State<LkWebPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://lk.fitnesshouse.ru'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LK FitnessHouse'),
        actions: [
          NavigationControls(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
