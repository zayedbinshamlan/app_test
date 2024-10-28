import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/features/menu/data/carousol_list.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.h,
      margin: EdgeInsets.only(left: 12.w, top: 8.h),
      child: CarouselView(
          itemExtent: MediaQuery.of(context).size.width - 32,
          itemSnapping: true,
          children: List.generate(
            carousolList.length,
            (index) {
              return Image.asset(carousolList[index], fit: BoxFit.fill);
            },
          )),
    );
  }
}
