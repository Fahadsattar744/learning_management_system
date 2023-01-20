import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import 'project_detail.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int activeIndex = 0;
  int pressed = 0;
  List<String> projectbuttons = [
    'ALL',
    'Design',
    'Academics',
    'Health & Fitness',
  ];

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
                    'Project',
                      style: TextStyles.buildAppBarTexStyle(),
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
                                hintText: 'Search', border: InputBorder.none)),
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 5.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i < projectbuttons.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 25,
                            child: InkWell(
                              onTap: () async {
                                setState(() {
                                  pressed = i;
                                });
                                setState(() {});

                                setState(() {});
                              },
                              child: Container(
                                height: 6.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: (pressed == i)
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(0.2)
                                    // border: Border.all(color: Colors.grey)
                                    ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 5, bottom: 5),
                                    child: Text(
                                      projectbuttons[i],


                                      style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                          color: (pressed == i)
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                // ListView.builder(
                //     physics: NeverScrollableScrollPhysics(),
                //     shrinkWrap: true,
                //     itemCount: categoryList.length,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (BuildContext context, int listIndex) {
                //       return ClipRRect(
                //         borderRadius: BorderRadius.circular(15),
                //         child: Container(
                //           height: 2.h,
                //           alignment: Alignment.center,
                //           decoration: BoxDecoration(
                //               // color: primary,
                //               ),
                //           child: Text(categoryList[listIndex].category1,
                //               style: TextStyle(
                //                   color: secondary,
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 15)),
                //         ),
                //       );
                //     }),
              ),
            ),
            Divider(thickness: 1.3,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(
              height: 5
            ),
            for (int i = 0; i < 5; i++)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: InkWell(
                      onTap: () {
                        // Get.to(()=>ProjectDetail());
                        PageTransition.fadeInNavigation(
                            page: const ProjectDetail());
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.greenContainer,
                              ),
                              child:  Padding(
                                padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                                child: Text(
                                  'New',
                                  style: TextStyles.VerySmallTitleTexStyle().copyWith( color: Colors.white,)



                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                             Text(
                              'HR/JOB PLATFORM Web/Hybrid App Development 200,000,000',
                                style: TextStyles.MiddlesmallTitleTexStyle()

                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'development design | Web Application Publishing | Establishment of HR/JOB platform',
                                style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                  color: Colors.grey.withOpacity(0.7),
                                )
                            ),
                            SizedBox(height: 5,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(thickness: 1.3,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
