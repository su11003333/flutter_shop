import 'package:flutter/material.dart';
import 'package:flutter_shop/page/user/login_page.dart';
// import 'package:flutter_shop/page/category/category_good_list_page.dart';
// import 'package:flutter_shop/page/user/member_page.dart';
// import 'package:flutter_shop/page/user/register_page.dart';
// import 'package:flutter_shop/page/detail/good_detail_page.dart';
// import 'package:flutter_shop/page/order/write_order_page.dart';
// import 'package:flutter_shop/page/order/order_list_page.dart';
// import 'package:flutter_shop/page/order/order_info_page.dart';
// import 'package:flutter_shop/model/order_model.dart';

class RouterUtil {
  static toLoginPage(BuildContext context, String username) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoginPage(
                username: username,
              )),
    );
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
  // static toLoginPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginPage()),
  //   );
  // }
  //
  // static toRegisterPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => RegisterPage()),
  //   );
  // }
  //
  // static toMemberPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => MemberPage()),
  //   );
  // }
  //
  // static toWriteOrderPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => WriteOrderPage()),
  //   );
  // }
  //
  // static toOrderListPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => OrderListPage()),
  //   );
  // }
  //
  // static toOrderInfoPage(BuildContext context, OrderModel orderModel) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => OrderInfoPage(orderModel)),
  //   );
  // }
  //
  // static toGoodDetailPage(BuildContext context, String goodId) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => GoodDetailPage(goodId)),
  //   );
  // }
  //
  // static pop(BuildContext context) {
  //   Navigator.pop(context);
  // }
}
