import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import '../project/apply_for_project.dart';
import 'project_screen.dart';

class ProjectDetail extends StatefulWidget {
  const ProjectDetail({Key? key}) : super(key: key);

  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
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
              child: const Center(
                child: Text(
                  'Project',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                // Get.to(()=>ProjectScreen());
                PageTransition.fadeInNavigation(page: const ProjectScreen());
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
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(thickness: 1.3,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 90.w,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyContainer2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 2,bottom: 10,top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.greenContainer,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10,right: 10,bottom: 4,top: 4),
                            child: Text(
                              'New',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'HR/JOB PLATFORM Web/Hybrid App Development 200,000,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'development design | Web Application Publishing | Establishment of HR/JOB platform',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$ 200,000,000',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 12
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Registered  :  ',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 12
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              '2022-12-05',
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 12
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Contents',
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 12
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.2),
                        child: const Icon(
                          Icons.file_present_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                       Text(
                        'Attach File 1',
                          style: TextStyles.SmallTitleTexStyle()


                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.2),
                        child: const Icon(
                          Icons.file_present_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                       Text(
                        'Attach File 2',

                          style: TextStyles.SmallTitleTexStyle()

                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 2.h),
                    ),
                    onPressed: () async {
                      // Get.to(()=>ApplyForProject());
                      PageTransition.fadeInNavigation(
                          page: const ApplyForProject());
                    },
                    child: const Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
