import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({Key? key}) : super(key: key);

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: commonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 100.w,
                height: 45,
                color: AppColors.primary,
                child:  Center(
                  child: Text(
                    'Job Posting',
                      style: TextStyles.buildAppBarTexStyle()
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyContainer2)),
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search', border: InputBorder.none,
                            )),
                      ),
                    ),
                    Icon(Icons.search_outlined,
                        color: Colors.grey.withOpacity(0.7)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    'Title',
                    style: TextStyles.SmallTitleTexStyle().copyWith(

                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                      'Writer',
                      style: TextStyles.SmallTitleTexStyle().copyWith(

                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text(
                      'Date',
                      style: TextStyles.SmallTitleTexStyle()
                  ),
                )

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 1.3,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            for (int i = 0; i < 9; i++)
              ExpansionTile(
                leading: SizedBox(
                  width: 35.w,
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Title',
                      style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                        overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal
                      )
                    ),
                  ),
                ),
                textColor: Colors.black,
                iconColor: AppColors.primary,
                title: Row(
                  children: [

                    SizedBox(
                      width: 20.w,
                      child:  Text(
                        'Writer',
                          style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.normal
                          )
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Text(
                      '22.11.09',
                        style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                            fontWeight: FontWeight.normal
                        )
                    )
                  ],
                ),
                children: [
                  SizedBox(
                    width: 90.w,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.grey.withOpacity(0.99),
                            )),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 20.w,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black),
                                              right: BorderSide(
                                                  color: Colors.black))),
                                      child: Center(
                                        child: Text(
                                          'Title',
                                            style: TextStyles.MiddlesmallTitleTexStyle()
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 64.w,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                      )),
                                      child:  Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Recruiting for Designer',
                                            style: TextStyles.MiddlesmallTitleTexStyle()
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 20.w,
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black),
                                          right:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                      child:  Center(
                                        child: Text(
                                          'Writer',
    style: TextStyles.MiddlesmallTitleTexStyle()

                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 64.w,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                      )),
                                      child:  Padding(
                                        padding: EdgeInsets.all( 10),
                                        child: Text(
                                          'abcd company',
    style: TextStyles.MiddlesmallTitleTexStyle()

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 20.w,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black),
                                              right: BorderSide(
                                                  color: Colors.black))),
                                      child:  Center(
                                        child: Text(
                                          'Date',
                                            style: TextStyles.MiddlesmallTitleTexStyle()
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 64.w,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                      )),
                                      child:  Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          '2022.11.09',
    style: TextStyles.MiddlesmallTitleTexStyle(
    ).copyWith(
      fontWeight: FontWeight.normal
    )

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 24.h,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              // bottom: BorderSide(
                                              //     color: Colors.black
                                              // ),
                                              right: BorderSide(
                                                  color: Colors.black))),
                                      child:  Padding(
                                        padding: EdgeInsets.only(left: 14,top: 12),
                                        child: Text(
                                          'Contents',
    style: TextStyles.MiddlesmallTitleTexStyle()

                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 64.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 22.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      AppColors.greyContainer2),
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 8, 0),
                                            child: TextField(
                                              onChanged: (val) {},
                                              maxLines: 4,
                                              showCursor: true,
                                              cursorColor: Colors.grey,
                                              textAlign: TextAlign.start,
                                              textAlignVertical:
                                                  TextAlignVertical.top,
                                              keyboardType: TextInputType.text,
                                              textInputAction:
                                                  TextInputAction.done,
                                              decoration:  InputDecoration(
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                hintText: 'This is content box',

                                                hintStyle:TextStyles.MiddlesmallTitleTexStyle().copyWith(
    color: Colors.black,
                                                  fontWeight: FontWeight.normal
    ),
                                                filled: true,
                                                fillColor: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
