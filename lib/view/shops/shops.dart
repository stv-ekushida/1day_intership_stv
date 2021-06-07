import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            return ShopsTemplate(
              shop: data[index],
            );
          },
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Center(
        child: Text(
          e.toString(),
        ),
      ),
    );
  }
}
