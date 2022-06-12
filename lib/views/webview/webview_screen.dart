import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../utils/utils.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key, required this.url, required this.title})
      : super(key: key);
  static const id = "WebViewScreen";
  final String url;
  final String title;
  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  bool isFound = false;
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.buildAppBar(context, title: widget.title),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            color: AppColors.kColor6,
            height: progress < 100 ? 3 : 0,
            width: progress * 1.sw / 100,
          ),
          Expanded(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: widget.url,
              onProgress: (value) {
                setState(() {
                  progress = value.toDouble();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
