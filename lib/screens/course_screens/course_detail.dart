import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import '../course_screens/course_screen.dart';

class CourseInformation extends StatefulWidget {
  const CourseInformation({Key? key}) : super(key: key);

  @override
  State<CourseInformation> createState() => _CourseInformationState();
}

class _CourseInformationState extends State<CourseInformation> {
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
                    'Course List',
                      style: TextStyles.buildAppBarTexStyle()
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  // Get.to(()=>CategoryPage());
                  PageTransition.fadeInNavigation(page: const CategoryPage());
                },
                child: Row(
                  children: const [
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
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 70.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.textBlackish.withOpacity(0.3))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children:  [
                          Text(
                            'HR/JOB PLATFORM Web/Hybrid App Development',
                              style: TextStyles.SmallTitleTexStyle()
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 11.h,
                        width: 90.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 9.h,
                                  width: 25.w,
                                  child: Image.asset(
                                    'assets/images/support1.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Development design | Web Application Publishing | Establishment of HR/JOB platform',overflow: TextOverflow.ellipsis,maxLines: 4,
                                          style: TextStyle(
                                            height: 1.5,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color:
                                                  Colors.grey.withOpacity(0.9)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                          Text(
                            'Recruitment Deadline   :',
                              style: TextStyles.LargeTitleTexStyle()
                          ),
                          Text(
                            '2022-12-05',
                              style: TextStyles.LargeTitleTexStyle()
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      Container(
                        height: 35.h,
                        width: 92.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyContainer2),
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(2)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text('Content',style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                            ],
                          )
                          // TextField(
                          //   onChanged: (val) {},
                          //   maxLines: 4,
                          //   showCursor: true,
                          //   cursorColor: Colors.grey,
                          //   textAlign: TextAlign.start,
                          //   textAlignVertical: TextAlignVertical.top,
                          //   keyboardType: TextInputType.text,
                          //   textInputAction: TextInputAction.done,
                          //   decoration: const InputDecoration(
                          //     enabledBorder: InputBorder.none,
                          //     focusedBorder: InputBorder.none,
                          //     hintText: 'Content',
                          //     hintStyle: TextStyle(
                          //       color: Colors.grey,
                          //       fontSize: 13,
                          //     ),
                          //     filled: true,
                          //     fillColor: Colors.transparent,
                          //   ),
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(100.w, 2.h),
                        ),
                        onPressed: () async {},
                        child: const Center(
                          child: Text(
                            'Apply Class',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
