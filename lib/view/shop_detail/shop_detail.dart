import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stv_1day_intership/view/shop_detail/shop_detail_arguments.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShopDetail extends StatefulWidget {
  final ShopDetailArguments arguments;

  const ShopDetail({required this.arguments});

  @override
  _ShopDetailState createState() => _ShopDetailState();
}

class _ShopDetailState extends State<ShopDetail> {
  bool _loading = false;
  final _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments.shop.name),
      ),
      body: _buildContents,
    );
  }

  /// ウェブビュー
  Widget get _buildContents {
    return Container(
      child: Stack(
        children: [
          WebView(
            initialUrl: widget.arguments.shop.urls.pc,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              _controller.complete(controller);
            },
            onPageStarted: (_) {
              setState(() {
                _loading = true;
              });
            },
            onPageFinished: (_) {
              setState(() {
                _loading = false;
              });
            },
          ),
          _loading ? _buildLoadingView() : Container(),
        ],
      ),
    );
  }

  /// ローディングビュー
  Widget _buildLoadingView() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
