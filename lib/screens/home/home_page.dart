import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/common_widgets.dart';
import '../../utilities/widgets/custom_dialog.dart';
import '../../utilities/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                height: 65,
                color: AppColors.primary,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Container(
                      height: 37,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle:
                                      TextStyle(color: Color(0xFFBABABA)),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.search_sharp,
                                    color: Color(0xFFBABABA),
                                    size: 25,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: InkWell(
                          onTap: () {
                            CustomDialogBox.confirmationDialog(
                              title: 'Are you sure? ',
                              context: context,
                              btnYesPressed: () {
                                print('Yes Pressed');
                                Get.back();
                              },
                              btnNoPressed: () {
                                print('No Pressed');
                                Get.back();
                              },
                            );
                          },
                          child:  Text(
                            'BEST lectures',
                              style: TextStyles.LargeTitleTexStyle()
                          ),
                        ),
                      ),
                      Container(
                        height: 27,
                        width: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyContainerColor,
                            ),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'More',
                              style: TextStyles.SmallTitleTexStyle().copyWith(
                                  color: Colors.grey.withOpacity(0.9)
                              )
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 13, color: Colors.grey.withOpacity(0.6))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 4; i++)
                  Container(
                    height: 90,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.greyContainerColor)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 75.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                'Clinical Trial Basic Statistical Theory_Common...',
                                overflow: TextOverflow.ellipsis,
                            style: TextStyles.SmallTitleTexStyle().copyWith(
                              color: Colors.black,
                            )

                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children:  [
                                  Text(
                                    '2022-10-03 ~ 2022-10-03',
                                style: TextStyles.SmallTitleTexStyle().copyWith(
                                  color: AppColors.hintcolor,
                                )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.grey.withOpacity(0.4),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.primary)),
                  child: Center(
                    child: Text(
                      'See more courses',

                    style: TextStyles.LargeTitleTexStyle().copyWith(
    color: AppColors.primary,
    )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/home1.png', width: 90.w),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children:  [
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Category',
                        style: TextStyles.LargeTitleTexStyle()

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(width: 2,
                                  color: AppColors.greyContainerColor))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/design.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Design',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(width: 2,
                                color: AppColors.greyContainerColor)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/health.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Health&Fitness',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                          // border:Border(
                          //     right: BorderSide(color: AppColors.greyContainerColor)
                          // )
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/lifestyle.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Lifestyle',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(width: 2,
                                  color: AppColors.greyContainerColor),
                              top: BorderSide(width: 2,
                                  color: AppColors.greyContainerColor))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/marketing.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Marketing',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 2,
                                    color: AppColors.greyContainerColor),
                            top: BorderSide(
                                width: 2,
                                color: AppColors.greyContainerColor)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/marketing.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Marketing',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 2,
                                color: AppColors.greyContainerColor)),
                        // border:Border(
                        //     right: BorderSide(color: AppColors.greyContainerColor)
                        // )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/marketing.png',
                            height: 6.h,
                            width: 9.w,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            'Marketing',
                              style: TextStyles.MiddlesmallTitleTexStyle()
                          )
                        ],
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 13,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child:  Text(
                          'e-Class',
                            style: TextStyles.LargeTitleTexStyle()
                        ),
                      ),
                      Container(
                        height: 27,
                        width: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyContainerColor,
                            ),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'More',
    style: TextStyles.SmallTitleTexStyle().copyWith(
    color: Colors.grey.withOpacity(0.9)
    )
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 14, color: Colors.grey.withOpacity(0.6))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 4; i++)
                  Container(
                    height: 90,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: AppColors.greyContainerColor)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 75.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                'Clinical Trial Basic Statistical Theory_Common...',
                                overflow: TextOverflow.ellipsis,
                            style: TextStyles.SmallTitleTexStyle().copyWith(
                              color: Colors.black,
                            )
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children:  [
                                  Text(
                                    '2022-10-03 ~ 2022-10-03',
                                  style: TextStyles.SmallTitleTexStyle().copyWith(
    color: AppColors.hintcolor,
    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.grey.withOpacity(0.4),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 13,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child:  Text(
                          'Notices',
                        style: TextStyles.LargeTitleTexStyle().copyWith(
    color: AppColors.hintcolor,
    )
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyContainerColor,
                            ),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'More',
    style: TextStyles.SmallTitleTexStyle().copyWith(
    color: Colors.grey.withOpacity(0.9),
    )
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 14, color: Colors.grey.withOpacity(0.6))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFF9B1B),
                                  borderRadius: BorderRadius.circular(2)),
                              child:  Center(
                                child: Text(
                                  'N',
                                    style: TextStyles.SmallTitleTexStyle().copyWith(
                                        color: Colors.white,
                                    )
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                width: 80.w,
                                child:  Text(
                                  'Python business data analysis and..',
                                  overflow: TextOverflow.ellipsis,
                                    style: TextStyles.LargeTitleTexStyle()


                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Divider(
                          height: 1.5,
                          color: Colors.grey.withOpacity(0.4),
                        )
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 12.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 50.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Guide to signing an agreement',
                                    style: TextStyles.LargeTitleTexStyle().copyWith(
                                      color: Colors.white,
                                    )
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             Text(
                              'With excellent domestic companies We are signing an agreement.',
                                style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                  color: Colors.white
                                ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/hand.png',
                            height: 8.h,
                            width: 16.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 12.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFB9D0F),
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 60.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hall of Honor',
                                    style: TextStyles.LargeTitleTexStyle().copyWith(
                                      color: Colors.white,
                                    )

                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             Text(
                              'Hall of Fame and Professionals Introducing the status of the certification system.',
                                style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                  color: Colors.white,
                                )
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/honor.png',
                            height: 8.h,
                            width: 16.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                footer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
