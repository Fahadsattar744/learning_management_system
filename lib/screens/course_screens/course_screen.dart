import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import 'course_detail.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int count = 4;
  List<bool> courseSelected = [];
  String? selectedValue;
  final List<String> genderItems = [
    '1',
    '2',
    '3',
    '4',
    '5',
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
                    'Course List',
                      style: TextStyles.buildAppBarTexStyle(),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 6.h,
              width: 90.w,
              child: DropdownButtonFormField2(
                buttonDecoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyContainer2)),
                decoration: InputDecoration(
                  iconColor: Colors.grey,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                isExpanded: true,
                hint: Text(
                  'All (20)',
                    style: TextStyles.LargeTitleTexStyle()
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only( right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          onTap: () {
                            setState(() {});
                          },
                          value: item,
                          child: Center(
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return '';
                  }
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
            ),
            const SizedBox(
              height: 30,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int index = 0; index < 6; index++)
                  InkWell(
                    onTap: () {
                      PageTransition.fadeInNavigation(
                          page: const CourseInformation());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10.h,
                                width: 25.w,
                                child: Image.asset(
                                  'assets/images/support1.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 46.w,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              '[Common > Remuneration]',
                                              style: TextStyle(
                                                  color: AppColors.primary,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                         Text(
                                          'Excellent skill to organize thoughts, visual thinking lifestyle',
                                            style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                              height: 1.5
                                            )
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Application period: 22.10.17~22.11.20',

                                          style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                            fontSize: 9,
                                            color: Colors.grey
                                                .withOpacity(0.6),
                                          )
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Training period: 22.11.21~22.11.27',
                                                style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                                  fontSize: 9,
                                                  color: Colors.grey
                                                      .withOpacity(0.6),
                                                )
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              index == 1
                                  ? Container(

                                      decoration: const BoxDecoration(
                                          color: Color(0xFFC5C1BC)),
                                      child:  Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Cancel',
                                              style: TextStyles.SmallTitleTexStyle().copyWith(
                                                color: Colors.white,
                                              )


                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(

                                      decoration: const BoxDecoration(
                                          color: Color(0xFFFF9F00)),
                                      child:  Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Apply',
                                              style: TextStyles.SmallTitleTexStyle().copyWith(
                                                color: Colors.white,
                                              )
                                          ),
                                        ),
                                      ),
                                    )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
