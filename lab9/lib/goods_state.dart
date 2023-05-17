import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'goods_block.dart';

class GoodsState {
  final String title;
  final int quantity;
  final Map<String, int> goodsCount;

  const GoodsState(
      {required this.title, required this.quantity, required this.goodsCount});

  GoodsState copyWith(
      {String? title, int? quantity, Map<String, int>? goodsCount}) {
    return GoodsState(
      title: title ?? this.title,
      quantity: quantity ?? this.quantity,
      goodsCount: goodsCount ?? this.goodsCount,
    );
  }

  Future<GoodsState> loadState(String goodsId) async {
    final prefs = await SharedPreferences.getInstance();
    final title = prefs.getString('$goodsId.title') ?? goodsId;
    final quantity = prefs.getInt('$goodsId.quantity') ?? 0;
    final goodsCountString = prefs.getString('$goodsId.goodsCount') ?? '{}';
    final goodsCount = json.decode(goodsCountString).cast<String, int>();
    final newState =
    GoodsState(title: title, quantity: quantity, goodsCount: goodsCount);
    return newState;
  }

  Future<void> saveState(GoodsState state) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('${state.title}.title', state.title);
    await prefs.setInt('${state.title}.quantity', 1);
    await prefs.setString(
        '${state.title}.goodsCount', json.encode(state.goodsCount));
  }

}