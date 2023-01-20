import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/common_widgets.dart';
import '../../utilities/widgets/drawer.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool selectedoption1 = false;
  bool selectedoption2 = false;
  bool selectedoption3 = false;
  bool selectedoption4 = false;

  // Map<int, String> multi = {
  //   1: 'Apple',
  //   2: 'Banana',
  //   3: 'Grapes',
  //   4: 'Cake',
  // };
  List<String> question = [
    'Test  Content 1',
    'Test  Content 2',
    'Test  Content 3',
    'Test  Content 4',
  ];
  List<String> answers = [
    'Apple',
    'Bear',
    'Lemon',
    'people',
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
                    'Test',
                      style: TextStyles.buildAppBarTexStyle(
                      )
                  ),
                )),
            const SizedBox(
              height: 15,
            ),

            Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  border: Border(
                      top: BorderSide(
                          color: Colors.black
                      )
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      'Test',
                        style: TextStyles.SmallTitleTexStyle(
                        ).copyWith(color: AppColors.primary)
                    ),
                    Row(
                      children: [
                         Text(
                          'Time Limit   ',
                            style: TextStyles.SmallTitleTexStyle(
                            ).copyWith(color: AppColors.primary)
                        ),
                         Text(
                          '26 : 14',
                            style: TextStyles.SmallTitleTexStyle(
                            ).copyWith(color: Colors.black)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (int i = 0; i < question.length; i++)
              Column(
                children: [
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyContainer2)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('${i + 1}. ' + question[i],
                                  style: TextStyles.SmallTitleTexStyle(
                                  )
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          for (int b = 0; b < answers.length; b++)
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 2.h,
                                          width: 2.h,
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: Colors.black),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Text(
                                              '${b + 1}',
                                                style: TextStyles.VerySmallTitleTexStyle(
                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('  ' + answers[b],style: TextStyles.SmallTitleTexStyle(
                                      )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                ],
              ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(60.w, 6.h)
              ),
              onPressed: () async {

              },
              child:  Center(
                child: Text(
                    'Submit',
                    style: TextStyles.buildAppBarTexStyle(
                    )
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
                height: 13,
                width: 100.w,
                color: AppColors.greyContainer3),
            termContainer(),
            footer()
          ],
        ),
      ),
    );
  }
}
