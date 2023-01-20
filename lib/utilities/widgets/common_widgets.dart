import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';
import '../theme.dart';

Widget footer() {
  return Container(
    height: 19.h,
    width: 100.w,
    color: Colors.grey.withOpacity(0.2),
    child: Column(
      children: const [
        SizedBox(
          height: 15,
        ),
        Text(
          '서울시 마포구 마포대로 123 LMS \n 사업자 등록번호 : 110-82-123456 \n 대표자 : 홍길동 \n 교육문의 02-123-4567, 33~35   FAX 02-1234-5678 \n LMS. All Rights Reserved. ',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12,
              height: 1.7,
              fontWeight: FontWeight.bold,
              color: AppColors.greyTextColor),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}

Widget termContainer() {
  return Container(
    child: Row(
      children: [
        Container(
          width: 30.w,
          height: 40,
          decoration: BoxDecoration(
              border: Border(
            right: BorderSide(color: AppColors.greyContainerColor, width: 1.5),
          )),
          child: Center(
              child: Text(
            'Term of Use',
            style: TextStyles.VerySmallTitleTexStyle().copyWith(
              color: Colors.grey,
            ),
          )),
        ),
        Container(
          width: 30.w,
          height: 45,
          decoration: BoxDecoration(
              border: Border(
            right: BorderSide(color: AppColors.greyContainerColor, width: 1.5),
          )),
          child: Center(
              child: Text(
            'Privacy Policy',
            style: TextStyles.VerySmallTitleTexStyle().copyWith(
              color: Colors.grey,
            ),
          )),
        ),
        Container(
          width: 38.w,
          height: 45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  'Rejection of Unauthorized e-mail collection',
                  textAlign: TextAlign.center,
                  style: TextStyles.VerySmallTitleTexStyle().copyWith(
                    color: Colors.grey,
                  ),
                ),
              )),
            ],
          ),
        ),
      ],
    ),
  );
}
