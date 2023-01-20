import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: commonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
              width: 100.w,
              child: Image.asset(
                'assets/images/vedio.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              color: Colors.grey.withOpacity(0.15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                            child:  Text(
                              'Lesson',

                              style: TextStyles.SmallTitleTexStyle().copyWith(
                                color: AppColors
                                    .primary,
                                overflow:
                                TextOverflow
                                    .ellipsis,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 45.w,
                                child:  Text(
                                  'Title',
                                  style: TextStyles.SmallTitleTexStyle().copyWith(
                                    color: AppColors
                                        .primary,
                                    overflow:
                                    TextOverflow
                                        .ellipsis,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                               Text(
                                'Play',
                                style: TextStyles.SmallTitleTexStyle().copyWith(
                                  color: AppColors
                                      .primary,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            for (int i = 0; i < 8; i++)
              ListTile(
                leading:  Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Lesson 1',
                      style: TextStyles.MiddlesmallTitleTexStyle()
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    width: 50.w,
                    child:  Text(
                      'Auto ATC CAD 1',
                      overflow: TextOverflow.ellipsis,

                      style: TextStyles.MiddlesmallTitleTexStyle()
                    ),
                  ),
                ),
                trailing: InkWell(
                    onTap: () {
                      // Get.to(()=>VedioPlayerScreen());
                      PageTransition.fadeInNavigation(
                          page: const VideoPlayerScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.play_circle,
                        color: AppColors.primary,
                      ),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
