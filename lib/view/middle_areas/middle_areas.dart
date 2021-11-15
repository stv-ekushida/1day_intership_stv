import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_1day_intership/model/middle_area/middle_area.dart';

class MiddleAreas extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: Text('エリア検索'),
      ),
      body: _buildContents(context, watch),
    );
  }

  //TODO4 : エリア検索画面の作成 (Z011 : 東京）
  Widget _buildContents(
    BuildContext context,
    ScopedReader watch,
  ) {
    return Container();
  }

  //TODO5: 店舗一覧画面へ遷移
  Widget _buildMiddleAreas(List<MiddleArea> middleAreas) {
    return Container();
  }
}
