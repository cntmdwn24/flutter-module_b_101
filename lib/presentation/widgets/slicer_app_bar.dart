import 'package:flutter/material.dart';

class HdstSliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 56;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Image.asset('assets/images/LLSB_BI.png'),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
