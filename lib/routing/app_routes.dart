import 'package:flutter/material.dart';
import 'package:flutter_stv_1day_intership/view/middle_areas/middle_areas.dart';
import 'package:flutter_stv_1day_intership/view/shop_detail/shop_detail.dart';
import 'package:flutter_stv_1day_intership/view/shop_detail/shop_detail_arguments.dart';
import 'package:flutter_stv_1day_intership/view/shops/shops.dart';
import 'package:flutter_stv_1day_intership/view/shops/shops_arguments.dart';

class AppRoutes {
  static const shops = '/shops';
  static const shopDetail = '/shopDetail';

  static const middleAreas = '/middleAreas';
}

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.shops:
        final ShopsArguments _arguments = settings.arguments as ShopsArguments;
        return _buildRoute(Shops(arguments: _arguments), settings: settings);

      case AppRoutes.shopDetail:
        final ShopDetailArguments _arguments =
            settings.arguments as ShopDetailArguments;
        return _buildRoute(ShopDetail(arguments: _arguments),
            settings: settings);

      case AppRoutes.middleAreas:
        return _buildRoute(MiddleAreas(), settings: settings);

      default:
        return null;
    }
  }
}

Route _buildRoute(Widget child, {RouteSettings? settings}) {
  return MaterialPageRoute(
      builder: (BuildContext context) => child, settings: settings);
}
