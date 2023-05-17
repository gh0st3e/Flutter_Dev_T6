import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:lab9/goods_state.dart';
import 'package:shared_preferences/shared_preferences.dart';


class GoodsEvent {}

class IncrementEvent extends GoodsEvent {}

class DecrementEvent extends GoodsEvent {}

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

class GoodsBloc extends Bloc<GoodsEvent, GoodsState> {
  final String goodsId;

  GoodsBloc({required this.goodsId})
      : super(
            GoodsState(title: goodsId, quantity: 0, goodsCount: {goodsId: 0})) {
      state.loadState(goodsId).then((newState) {
      emit(newState);
    });
    on<IncrementEvent>((event, emit) {
      final Map<String, int> updatedGoodsCount = state.goodsCount;
      final int currentCount = state.goodsCount[goodsId] ?? 0;
      updatedGoodsCount[goodsId] = currentCount + 1;
      final newState = state.copyWith(
          quantity: state.quantity + 1, goodsCount: updatedGoodsCount);
      state.saveState(newState);
      emit(newState);
    });

    on<DecrementEvent>((event, emit) {
      final Map<String, int> updatedGoodsCount = state.goodsCount;
      if (state.goodsCount[goodsId]! > 0) {
        updatedGoodsCount[goodsId] = state.goodsCount[goodsId]! - 1;
        final newState = state.copyWith(
            quantity: state.quantity - 1, goodsCount: updatedGoodsCount);
        state.saveState(newState);
        emit(newState);
      }
    });
  }
}
