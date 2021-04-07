import 'package:flutter/material.dart';
import 'package:flutter_electronic_commerce/responsive_layout.dart';

import 'e_commerce/e_com_drawer.dart';
import 'e_commerce/e_com_item_description.dart';
import 'e_commerce/e_com_items.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: ECommerceItems(),
        ipad: Row(
          children: [
            Expanded(
              flex: 9,
              child: ECommerceItems(),
            ),
            Expanded(
              flex: 9,
              child: ECommerceItemDescription(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ECommerceItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: ECommerceItemDescription(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: ECommerceDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}
