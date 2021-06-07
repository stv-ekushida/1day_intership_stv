import 'package:flutter/material.dart';
import 'package:flutter_stv_1day_intership/common/app_theme.dart';
import 'package:flutter_stv_1day_intership/model/shops/shop.dart';

class ShopsTemplate extends StatelessWidget {
  final Shop shop;

  const ShopsTemplate({required this.shop});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _genreNameLabel,
            _shopNameLabel,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(flex: 1, child: Image.network(shop.photo.mobile.l)),
                Flexible(flex: 2, child: _detailContents),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget get _genreNameLabel {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        shop.genre.name,
        style: AppTheme.genreStyle,
      ),
    );
  }

  Widget get _shopNameLabel {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        shop.name,
        style: AppTheme.shopStyle,
      ),
    );
  }

  Widget get _detailContents {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text(
              shop.budget.name,
              style: AppTheme.overlineStyle,
            ),
          ),
          ListTile(
            title: Text(
              shop.open,
              style: AppTheme.overlineStyle,
            ),
          ),
          ListTile(
            title: Text(
              shop.access,
              style: AppTheme.overlineStyle,
            ),
          ),
          ListTile(
            title: Text(
              shop.address,
              style: AppTheme.overlineStyle,
            ),
          ),
        ],
      ),
    );
  }
}
