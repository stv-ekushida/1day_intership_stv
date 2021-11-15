import 'package:flutter/material.dart';

//TODO6: 画面に引き渡す引数クラスの作成

class ShopDetail extends StatefulWidget {
  @override
  _ShopDetailState createState() => _ShopDetailState();
}

class _ShopDetailState extends State<ShopDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: _buildContents,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  //TODO10: 店舗詳細画面の作成
  Widget get _buildContents {
    return Container();
  }
}
