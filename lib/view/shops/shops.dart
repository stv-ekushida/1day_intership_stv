import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_1day_intership/component/loading_view/error_view.dart';
import 'package:flutter_stv_1day_intership/component/loading_view/loading_view.dart';
import 'package:flutter_stv_1day_intership/repository/shops_repository.dart';

import 'component/shops_template.dart';
import 'shops_arguments.dart';

class Shops extends ConsumerWidget {
  final ShopsArguments arguments;

  const Shops({required this.arguments});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.middleArea.name),
      ),
      body: _buildContents(context, watch),
    );
  }

  Widget _buildContents(BuildContext context, ScopedReader watch) {
    final _shops = watch(shopsFutureProvider(arguments.middleArea.code));

    return _shops.when(
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ShopsTemplate(
                shop: data[index],
              ),
              onTap: () {
                //TODO9 : 店舗詳細画面へ遷移
              },
            );
          },
        );
      },
      loading: () => LoadingView(),
      error: (e, _) => ErrorView(
        error: e,
      ),
    );
  }
}
