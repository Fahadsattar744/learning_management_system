import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/common_widgets.dart';
import '../../utilities/widgets/drawer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                      'About Us',style: TextStyles.buildAppBarTexStyle(),
                    ),
                  )),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  bottom: const TabBar(
                    indicatorColor: AppColors.primary,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.textBlackish,
                    splashBorderRadius: BorderRadius.all(Radius.circular(20)),
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 26.0),
                    tabs: [
                      Tab(
                        child: Text('By LMS',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Tab(
                        child: Text('Curriculum',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 63.h,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children:  [
                              Text(
                                'By LMS',
                                  style: TextStyles.LargeTitleTexStyle()
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            '임상시험전문인력의 양성을 통해 한국 임상시험 인프라 업그레이드 및 글로벌 신뢰성을 확보하고, 나아가 한국 임상시험 산업의 글로벌 경쟁력을 강화하고자 합니다.',
                            style: TextStyle(height: 2.2,
                                color:Color(0xFFA9A9A9),
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey.withOpacity(0.8),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children:  [
                              Text(
                                'Curriculum',
                                  style: TextStyles.LargeTitleTexStyle()
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '임상시험전문인력의 양성을 통해 한국 임상시험 인프라 업그레이드 및 글로벌 신뢰성을 확보하고, 나아가 한국 임상시험 산업의 글로벌 경쟁력을 강화하고자 합니다.',
                            style: TextStyle(
                              height: 2.2, color:Color(0xFFA9A9A9),
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey.withOpacity(0.8),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
