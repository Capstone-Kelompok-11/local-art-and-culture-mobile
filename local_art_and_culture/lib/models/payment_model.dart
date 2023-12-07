import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentModel extends ChangeNotifier {
  int quantity = 1;
  int productPrice = 180000;
  int shippingPrice = 12000;
  int serviceFee = 1000;
  int applicationService = 2000;

  int get totalPurchase => productPrice * quantity + shippingPrice;
  int get totalPayment => totalPurchase + serviceFee + applicationService;

  String formatNumber(int number) {
    final formatter = NumberFormat('#,###');
    return formatter.format(number);
  }

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
    notifyListeners();
  }
}
