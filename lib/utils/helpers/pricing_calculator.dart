import 'dart:core';


class TPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxrate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxrate;

    double shippingCoast = getShippingCoast(location);

    double totalPrice = productPrice + taxAmount + shippingCoast;
    return totalPrice;
  }

  // calculate shipping coast
  static String calculateShippingCoast(double productPrice, String location) {
    double shippingCoast = getShippingCoast(location);
    return shippingCoast.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
     double taxAmount = productPrice * taxRate;
     return taxAmount.toStringAsFixed(2);
  }

 static double getTaxRateForLocation(String location) {
  return 0.10;
 }

 static double getShippingCoast(String location) {
  return 5.00;
 }


 /// sum all cart values and return total amount
  //  static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //  }
}