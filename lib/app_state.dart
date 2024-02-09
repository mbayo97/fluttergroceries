import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _cartTotal = 0.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double _value) {
    _cartTotal = _value;
  }

  final _productsManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> products({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _productsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductsCache() => _productsManager.clear();
  void clearProductsCacheKey(String? uniqueKey) =>
      _productsManager.clearRequest(uniqueKey);
}
