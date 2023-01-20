import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';

class ViewProjectsHistory extends StatefulWidget {
  const ViewProjectsHistory({Key? key}) : super(key: key);

  @override
  State<ViewProjectsHistory> createState() => _ViewProjectsHistoryState();
}

class _ViewProjectsHistoryState extends State<ViewProjectsHistory> {
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
                child: Center(
                  child: Text(
                    'Project',
                    style: TextStyles.buildAppBarTexStyle(),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.textBlackish,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Back to List',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textBlackish,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 90.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 42.h,
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
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        right:
                                        BorderSide(color: Colors.black))),
                                child: Center(
                                  child: Text(
                                      'Title',
                                      style: TextStyles.SmallTitleTexStyle()
                                  ),
                                ),
                              ),
                              Container(
                                height: 5.h,
                                width: 64.w,
                                decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.5))),
                                    ),
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
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                      'File Upload',
                                      style: TextStyles.SmallTitleTexStyle()
                                  ),
                                ),
                              ),
                              Container(
                                height: 10.h,
                                width: 64.w,
                                decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                    'Attach File 1',
                                                    style: TextStyles.MiddlesmallTitleTexStyle()
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'Upload',

                                                        style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                                            color: Colors.black.withOpacity(0.4)
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                    'Attach File 2',

                                                    style: TextStyles.MiddlesmallTitleTexStyle()
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'Upload',

                                                        style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                                            color: Colors.black.withOpacity(0.4)
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'Attach File 1',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'Upload',
                                                        style:
                                                        TextStyle(fontSize: 12),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        right:
                                        BorderSide(color: Colors.black))),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                        'Name',
                                        style: TextStyles.SmallTitleTexStyle()
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 5.h,
                                width: 64.w,
                                decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.5))),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                height: 21.5.h,
                                decoration: BoxDecoration(
                                    border: Border(
                                      // bottom: BorderSide(
                                      //     color: Colors.black
                                      // ),
                                        right:
                                        BorderSide(color: Colors.black))),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12, top: 20),
                                  child: Text(
                                      'Contents',
                                      style: TextStyles.SmallTitleTexStyle()
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 64.w,
                                //
                                // decoration: BoxDecoration(
                                //     border: Border(
                                //       bottom: BorderSide(
                                //           color: Colors.black
                                //       ),
                                //     )
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 18.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.greyContainer2),
                                        color: Colors.grey.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: TextField(
                                        onChanged: (val) {},
                                        maxLines: 4,
                                        showCursor: true,
                                        cursorColor: Colors.grey,
                                        textAlign: TextAlign.start,
                                        textAlignVertical:
                                        TextAlignVertical.top,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'Comment here',

                                          hintStyle:
                                          TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                            color: Colors.black,
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
      ),
    );
  }
}
