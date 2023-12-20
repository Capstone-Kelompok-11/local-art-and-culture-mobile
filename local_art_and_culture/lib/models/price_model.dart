import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class PriceCalculationModel extends ChangeNotifier {
  int _quantity = 1;
  int _productPrice = 0;
  int _shippingPrice = 12000;
  int _serviceFee = 2000;
  int _applicationService = 1000;

  int get quantity => _quantity;
  int get productPrice => _productPrice;
  int get shippingPrice => _shippingPrice;
  int get serviceFee => _serviceFee;
  int get applicationService => _applicationService;

  void setProductPrice(int price) {
    _productPrice = price;
    notifyListeners();
  }

  void setShippingPrice(int price) {
    _shippingPrice = price;
    notifyListeners();
  }

  void setServiceFee(int fee) {
    _serviceFee = fee;
    notifyListeners();
  }

  void setApplicationService(int fee) {
    _applicationService = fee;
    notifyListeners();
  }

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }

  int getTotalPrice() {
    return _productPrice * _quantity;
  }

  int getTotalPayment() {
    return getTotalPrice() + _shippingPrice + _serviceFee + _applicationService;
  }

  String getTotalPriceFormatted() {
    final formatter = NumberFormat('#,###');
    return 'Rp ${formatter.format(getTotalPrice())}';
  }
}
