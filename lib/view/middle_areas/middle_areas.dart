import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_1day_intership/model/middle_area/middle_area.dart';
import 'package:flutter_stv_1day_intership/repository/middle_area_repository.dart';
import 'package:flutter_stv_1day_intership/routing/app_routes.dart';
import 'package:flutter_stv_1day_intership/view/shops/shops_arguments.dart';

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

  Widget _buildContents(BuildContext context, ScopedReader watch) {
    final _middleAreas = watch(middleAreaFutureProvider('Z011'));

    return Container(
      child: _middleAreas.when(
          data: (data) => _buildMiddleAreas(data),
          loading: () => _buildLoadingView(),
          error: (error, _) => _buildErrorView(error)),
    );
  }

  /// ローディングビュー
  Widget _buildLoadingView() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  /// エラービュー
  Widget _buildErrorView(Object error) {
    return Center(
      child: Text(
        error.toString(),
      ),
    );
  }

  /// ミドルエリアリストビュー
  Widget _buildMiddleAreas(List<MiddleArea> middleAreas) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(middleAreas[index].name),
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.shops,
              arguments: ShopsArguments(middleArea: middleAreas[index]),
            );
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black12,
        );
      },
      itemCount: middleAreas.length,
    );
  }
}
