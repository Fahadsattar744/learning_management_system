import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tecbeck_projects/screens/home/home_page.dart';
import 'package:tecbeck_projects/screens/job_posting/job_detail_screen.dart';

import '../../screens/about_us/about_us_screen.dart';
import '../../screens/course_screens/course_screen.dart';
import '../../screens/notice/notice_screen.dart';
import '../../screens/project/project_screen.dart';
import '../../screens/user_page/my_page_screen.dart';
import '../../utilities/widgets/page_transition.dart';
import '../colors.dart';

Widget commonDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 100.w,
            color: AppColors.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '홍길동님',
                  style: TextStyle(color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              InkWell(
                onTap: () {
                  // Get.to(()=>NoticeScreen());
                  PageTransition.fadeInNavigation(page: HomePage());
                },
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'See Detail',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'About Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
            children: [
              InkWell(
                onTap: () {
                  // Get.to(()=>AboutUs());
                  PageTransition.fadeInNavigation(page: AboutUs());
                },
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'By LMS',
                            style: TextStyle(
                              fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Curriculum',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'Course List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              InkWell(
                onTap: () {
// Get.to(()=>CategoryPage());
                  PageTransition.fadeInNavigation(page: CategoryPage());
                },
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'Notice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              InkWell(
                onTap: () {
                  // Get.to(()=>NoticeScreen());
                  PageTransition.fadeInNavigation(page: NoticeScreen());
                },
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'List',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'Project',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(()=>ProjectScreen());
                          PageTransition.fadeInNavigation(
                              page: ProjectScreen());
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.greyTextColor),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greyTextColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'Job Posting',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Container(
                color: AppColors.primary.withOpacity(0.1),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.to(()=>JobPostingScreen());
                        PageTransition.fadeInNavigation(
                            page: JobDetailScreen());
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Open Jobs',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
          ExpansionTile(
            textColor: Colors.black,
            iconColor: AppColors.primary,
            title: Text(
              'My page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              InkWell(
                onTap: () {
                  // Get.to(()=>MyPage());
                  PageTransition.fadeInNavigation(page: MyPage());
                },
                child: Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'My Lecture List',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Test',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Certificates',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Attendence',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Project',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.greyTextColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle( fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
