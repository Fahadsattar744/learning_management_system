import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import 'notice_screen.dart';

class NoticeDetail extends StatefulWidget {
  const NoticeDetail({Key? key}) : super(key: key);

  @override
  State<NoticeDetail> createState() => _NoticeDetailState();
}

class _NoticeDetailState extends State<NoticeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: commonDrawer(),
      body: Column(
        children: [
          Container(
              width: 100.w,
              height: 45,
              color: AppColors.primary,
              child:  Center(
                child: Text(
                  'Notice',

                  style: TextStyles.buildAppBarTexStyle(),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                // Get.to(()=>NoticeScreen());
                PageTransition.fadeInNavigation(page: const NoticeScreen());
              },
              child: Row(
                children:  [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.textBlackish,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Back to list',
                    style: TextStyles.LargeTitleTexStyle().copyWith(
                      color: AppColors.textBlackish,
                    ),

                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              height: 2,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 90.7.w,
            decoration:
                BoxDecoration(border: Border.all(color: AppColors.hintcolor)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          border: const Border(
                              bottom: BorderSide(color: Colors.black))),
                      child:  Center(
                        child: Text(
                          'Title',
                          style: TextStyles.SmallTitleTexStyle().copyWith(

                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 65.w,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children:  [
                            Text(
                              'Title of notice',
                              style: TextStyles.SmallTitleTexStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          border: const Border(
                              bottom: BorderSide(color: Colors.black))),
                      child:  Center(
                        child: Text(
                          'File',
                          style: TextStyles.SmallTitleTexStyle().copyWith(
                            color: AppColors.textBlackish,
                          ),

                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 65.w,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.grey.withOpacity(0.2),
                              child: const Icon(
                                Icons.file_present_sharp,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                             Text(
                              'Notice.docs',
                              style: TextStyles.LargeTitleTexStyle().copyWith(
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          border: const Border(
                              bottom: BorderSide(color: Colors.black))),
                      child:  Center(
                        child: Text(
                          'Date',
                          style: TextStyles.LargeTitleTexStyle(),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 65.w,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children:  [
                            Text(
                              '2022.11.09',
                              style: TextStyles.LargeTitleTexStyle()

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 51.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Contents',
                              style: TextStyles.LargeTitleTexStyle()

                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 52.h,
                      width: 65.w,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Padding(
                              padding: EdgeInsets.only(top: 10,right: 20),
                              child: Text(
                                'Contents is here. This is about contents. Contents is here. This is about contents.  Contents is here. This is about contents. ',

                                style: TextStyles.LargeTitleTexStyle().copyWith(
                                  height: 1.7,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
