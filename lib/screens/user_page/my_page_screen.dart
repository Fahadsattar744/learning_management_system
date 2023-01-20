import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tecbeck_projects/screens/user_page/test_result.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/widgets/app_bar_widget.dart';
import '../../../utilities/widgets/common_widgets.dart';
import '../../../utilities/widgets/drawer.dart';
import '../../../utilities/widgets/page_transition.dart';
import '../../utilities/theme.dart';
import '../project/project_selected.dart';
import '../project/project_waiting_failed.dart';
import 'test_screen.dart';
import 'vedio_player_screen.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int pressed = 0;
  int state = 0;
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
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
                width: 100.w,
                height: 45,
                color: AppColors.primary,
                child: const Center(
                  child: Text(
                    'My page',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
              isScrollable: true,
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.hintcolor,
              splashBorderRadius: BorderRadius.all(Radius.circular(20)),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 26.0),
              tabs: [
                Tab(
                    child: Text('My Lecture List',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)
                  // text: 'My Lecture List',
                ),
                Tab(
                    child: Text('Test',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                        
                ),
                Tab(
                    child: Text('Certificates',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                  
              
                ),
                Tab(
                    child: Text('Attendence',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                  
                 
                ),
                Tab(
                    child: Text('Project',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                  
                
                ),
                Tab(
                    child: Text('Setting',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                        
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //My Lecture List
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        for (int i = 0; i < 4; i++)
                          Column(
                            children: [
                              ExpansionTile(
                                textColor: Colors.black,
                                iconColor: AppColors.primary,
                                title: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        padding: const EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.primary),
                                            shape: BoxShape.circle),
                                        child: Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ),
                                     Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        'Auto ATC CAD Master Level 1',
                                        style: TextStyles.LargeTitleTexStyle()
                                      ),
                                    ),
                                  ],
                                ),
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12),
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
                                        for (int i = 0; i < 5; i++)
                                          ListTile(
                                            leading:  Padding(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Lesson 1',
                                                  style: TextStyles.MiddlesmallTitleTexStyle()
                                              ),
                                            ),
                                            title: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 24),
                                              child: SizedBox(
                                                width: 50.w,
                                                child:  Text(
                                                  'Auto ATC CAD 1',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                    style: TextStyles.MiddlesmallTitleTexStyle()
                                                ),
                                              ),
                                            ),
                                            trailing: InkWell(
                                                onTap: () {
                                                  // Get.to(()=>VedioPlayerScreen());
                                                  PageTransition.fadeInNavigation(
                                                      page:
                                                          const VideoPlayerScreen());
                                                },
                                                child:  Padding(
                                                  padding: const EdgeInsets.only(right: 12),
                                                  child: Icon(
                                                    Icons.play_circle,
                                                    color: AppColors.primary,
                                                  ),
                                                )),
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 30.w,
                                                        child: const Text(
                                                          'No',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            color: AppColors
                                                                .primary,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 34.w,
                                                            child: const Text(
                                                              'Title',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: AppColors
                                                                      .primary,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 20,
                                                          ),
                                                          const Text(
                                                            'File Download',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: AppColors
                                                                    .primary,
                                                                fontSize: 12),
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
                                        for (int i = 0; i < 2; i++)
                                          ListTile(
                                            leading:  Padding(
                                              padding: EdgeInsets.only(top: 8,left: 10),
                                              child: Text(
                                                '1',
    style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
      color: AppColors.subtitle,
    )
                                              ),
                                            ),
                                            title: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: SizedBox(
                                                width: 50.w,
                                                child:  Text(
                                                  'Symposia11-18 lecture material .PDF',
                                                  overflow:
                                                      TextOverflow.ellipsis,

    style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
    color: AppColors.subtitle,
    )
                                                ),
                                              ),
                                            ),
                                            trailing:  Padding(
                                              padding: const EdgeInsets.only(right: 12),
                                              child: Icon(
                                                Icons.file_present,
                                                color: AppColors.subtitle,
                                                  size:20
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                color: Colors.black,
                              )
                            ],
                          ),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        termContainer(),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        footer(),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
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
                                        width: 6.w,
                                        child:  Center(
                                          child: Text(
                                            'No.',
                                            style: TextStyles.SmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.primary,
                                            )


                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 27.w,
                                        child:  Center(
                                          child: Text(
                                            'Test subjects',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                        child:  Center(
                                          child: Text(
                                            'Score',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                        child:  Center(
                                          child: Text(
                                            'Time',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                        child:  Center(
                                          child: Text(
                                            'Status',

                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                        child:  Center(
                                          child: Text(
                                            'Exam',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        for (int i = 0; i < 8; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 6.w,
                                      child:  Center(


                                        child: Text(
                                          '1.',
                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                          ).copyWith(
                                            overflow: TextOverflow.ellipsis,

                                          )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 27.w,
                                      child:  Center(
                                        child: Text(
                                          'Biotech 152 Exam',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                      child:  Center(
                                        child: Text(
                                          '22',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                      child:  Center(
                                        child: Text(
                                          '30 min',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                      child:  Center(
                                        child: Text(
                                          '30 min',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    i == 1 || i == 2 || i == 5
                                        ? InkWell(
                                            onTap: () {
                                              // Get.to(()=>TestScreen());
                                              PageTransition.fadeInNavigation(
                                                  page: const TestScreen());
                                            },
                                            child: Container(

                                              color: AppColors.yellowContainer,
                                              child:  Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 12,right:12,top:5,bottom:5),
                                                  child: Text(
                                                    'Exam',
                                                      style: TextStyles.MiddlesmallTitleTexStyle(
                                                      ).copyWith(
                                                        overflow: TextOverflow.ellipsis,
                                                        color: Colors.white

                                                      )
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              // Get.to(()=>TestResult());
                                              PageTransition.fadeInNavigation(
                                                  page:  TestResult());
                                            },
                                            child: Container(

                                              color: AppColors.primary,
                                              child:  Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 10,right:10,top:5,bottom:5),
                                                  child: Text(
                                                    'Result',
                                                      style: TextStyles.MiddlesmallTitleTexStyle(
                                                      ).copyWith(
                                                          overflow: TextOverflow.ellipsis,
                                                          color: Colors.white

                                                      )
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        termContainer(),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        footer(),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
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
                                        width: 10.w,
                                        child:  Center(
                                          child: Text(
                                            'No.',
                                            style: TextStyles.SmallTitleTexStyle(
                                            ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                            )


                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 32.w,
                                        child:  Center(
                                          child: Text(
                                            'Courses',
                                            style: TextStyles.SmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.primary,
                                            )

                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                        child:  Center(
                                          child: Text(
                                            'Status',
                                            style: TextStyles.SmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.primary,
                                            )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                        child:  Center(
                                          child: Text(
                                            'Certificate',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        for (int i = 0; i < 8; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                      child:  Center(
                                        child: Text(
                                          '1.',
                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                          ).copyWith(
                                            overflow: TextOverflow.ellipsis,

                                          )

                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 35.w,
                                      child:  Center(
                                        child: Text(
                                          'Biotech 152 Exam',


                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                      child:  Center(
                                        child: Text(
                                          'Complete',

                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,

                                            )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 20.w,
                                      color: AppColors.yellowContainer,
                                      child:  Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Downloads',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.white,
                                            )
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        termContainer(),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        footer(),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 5.h,
                                width: 75.w,
                                child:
                                    //
                                    DropdownButtonFormField2(
                                  buttonDecoration: BoxDecoration(
                                      border: Border.all(width: 1.3,
                                          color: Colors.black.withOpacity(0.2))),
                                  decoration: InputDecoration(
                                   

                                    //Add isDense true and zero Padding.
                                    //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                    isDense: true,
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    //Add more decoration as you want here
                                    //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                                  ),
                                  isExpanded: true,
                                  hint:  Text(
                                    'Auto ATC CAD Master Level 1',
                                      style: TextStyles.LargeTitleTexStyle(
                                      ).copyWith(
                                        color:Colors.black,
                                                                                    
                                                                                    overflow: TextOverflow.ellipsis,

                                      )
                                  ),
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  iconSize: 30,
                                  buttonHeight: 60,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 20, right: 10),
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
                                  onChanged: (value) {
                                    //Do something when changing the item if you want.
                                  },
                                  onSaved: (value) {
                                    selectedValue = value.toString();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                                        width: 10.w,
                                        child:  Center(
                                          child: Text(
                                            'No.',
                                            style: TextStyles.SmallTitleTexStyle(
                                            ).copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.primary,
                                            )

                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 35.w,
                                        child:  Center(
                                          child: Text(
                                            'Name',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                        child:  Center(
                                          child: Text(
                                            'Date',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                        child:  Center(
                                          child: Text(
                                            'Attendance',
                                              style: TextStyles.SmallTitleTexStyle(
                                              ).copyWith(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.primary,
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        for (int i = 0; i < 8; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                      child:  Center(
                                        child: Text(
                                          '1.',
                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                          ).copyWith(
                                            overflow: TextOverflow.ellipsis,

                                          ),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 35.w,
                                      child:  Center(
                                        child: Text(
                                          'Angelina',
                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                          ).copyWith(
                                            overflow: TextOverflow.ellipsis,

                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                      child:   Center(
                                        child: Text(
                                          '2022-11-03',
                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                          ).copyWith(
                                            overflow: TextOverflow.ellipsis,

                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    i == 1 || i == 3
                                        ? SizedBox(
                                            width: 20.w,
                                            child: const Center(
                                              child: Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                                size: 18,
                                              ),
                                            ),
                                          )
                                        : SizedBox(
                                            width: 20.w,
                                            child: const Center(
                                              child: Icon(size: 18,
                                                Icons.check_circle,
                                                color: Colors.red,

                                              ),
                                            ),
                                          )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        termContainer(),
                        Container(
                          color: AppColors.greyContainerColor.withOpacity(0.7),
                          height: 15,
                        ),
                        footer(),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 6.h,
                              width: 28.w,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    pressed = 0;
                                    state = 0;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: (pressed == 0)
                                          ? AppColors.primary
                                          : AppColors.greyContainer2.withOpacity(0.5)
                                      // border: Border.all(color: Colors.grey)
                                      ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Waiting (3)',
                                        style: TextStyles.SmallTitleTexStyle(
                                        ).copyWith(
                                          color: (pressed == 0)
                                              ? Colors.white
                                              : Colors.black.withOpacity(0.4),

                                        ),
                                        
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                              width: 28.w,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    pressed = 1;
                                    state = 1;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: (pressed == 1)
                                          ? AppColors.primary
                                          : AppColors.greyContainer2.withOpacity(0.5)
                                      // border: Border.all(color: Colors.grey)
                                      ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Chosen (2)',
                                        style: TextStyles.SmallTitleTexStyle(
                                        ).copyWith(
                                          color: (pressed == 1)
                                              ? Colors.white
                                              : Colors.black.withOpacity(0.4),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                              width: 28.w,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    pressed = 2;
                                    state = 2;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: (pressed == 2)
                                          ? AppColors.primary
                                          : AppColors.greyContainer2.withOpacity(0.5)
                                      // border: Border.all(color: Colors.grey)
                                      ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Failed (2)',

                                        style: TextStyles.SmallTitleTexStyle(
                                        ).copyWith(
                                          color: (pressed == 2)
                                              ? Colors.white
                                              : Colors.black.withOpacity(0.4),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        state == 0
                            ? Column(
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 73.w,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: AppColors
                                                                .greenContainer,
                                                          ),
                                                          child:  Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                top:5,bottom:5,left:10,right:10
                                                                ),
                                                            child: Text(
                                                              'New',



                                                              style: TextStyles.VerySmallTitleTexStyle(
                                                              ).copyWith(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                         Text(
                                                          'HR/JOB PLATFORM Web/Hybrid App Development 200,000,000',
                                                          style: TextStyles.MiddlesmallTitleTexStyle(
                                                          )
                                                           
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          'development design | Web Application Publishing | Establishment of HR/JOB platform',
                                                            style: TextStyles.VerySmallTitleTexStyle(
                                                            ).copyWith(
                                                              color:Colors.black.withOpacity(0.3),
                                                            )
                                                         
                                                         
                                                          
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          // Get.to(()=>ProjectWaitingOrFailed());
                                                          PageTransition
                                                              .fadeInNavigation(
                                                                  page:
                                                                      const ProjectWaitingOrFailed());
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: AppColors
                                                                .greenContainer,
                                                          ),
                                                          child:  Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10.0),
                                                            child: Text(
                                                              'View',
                                                                style: TextStyles.MiddlesmallTitleTexStyle(
                                                                ).copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                )

                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Divider(
                                              color:
                                                  Colors.grey.withOpacity(0.6),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              )
                            : state == 1
                                ? Column(
                                    children: [
                                      for (int i = 0; i < 2; i++)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: InkWell(
                                            onTap: () {},
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 73.w,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                              const BoxDecoration(
                                                                color: AppColors
                                                                    .greenContainer,
                                                              ),
                                                              child:  Padding(
                                                                padding:
                                                                EdgeInsets.only(
                                                                    top:5,bottom:5,left:10,right:10
                                                                ),
                                                                child: Text(
                                                                  'New',



                                                                  style: TextStyles.VerySmallTitleTexStyle(
                                                                  ).copyWith(
                                                                      color: Colors.white
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                                'HR/JOB PLATFORM Web/Hybrid App Development 200,000,000',
                                                                style: TextStyles.MiddlesmallTitleTexStyle(
                                                                )

                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                                'development design | Web Application Publishing | Establishment of HR/JOB platform',
                                                                style: TextStyles.VerySmallTitleTexStyle(
                                                                ).copyWith(
                                                                  color:Colors.black.withOpacity(0.3),
                                                                )



                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              // Get.to(()=>ProjectWaitingOrFailed());
                                                              PageTransition
                                                                  .fadeInNavigation(
                                                                  page:
                                                                  const ProjectSelected());
                                                            },
                                                            child: Container(
                                                              decoration:
                                                              const BoxDecoration(
                                                                color: AppColors
                                                                    .greenContainer,
                                                              ),
                                                              child:  Padding(
                                                                padding:
                                                                EdgeInsets.all(
                                                                    10.0),
                                                                child: Text(
                                                                    'View',
                                                                    style: TextStyles.MiddlesmallTitleTexStyle(
                                                                    ).copyWith(
                                                                      color: Colors
                                                                          .white,
                                                                    )

                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Divider(
                                                  color:
                                                  Colors.grey.withOpacity(0.6),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  )
                                : state == 2
                                    ? Column(
                                        children: [
                                          for (int i = 0; i < 2; i++)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25, right: 25),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 73.w,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                  const BoxDecoration(
                                                                    color: AppColors
                                                                        .greenContainer,
                                                                  ),
                                                                  child:  Padding(
                                                                    padding:
                                                                    EdgeInsets.only(
                                                                        top:5,bottom:5,left:10,right:10
                                                                    ),
                                                                    child: Text(
                                                                      'New',



                                                                      style: TextStyles.VerySmallTitleTexStyle(
                                                                      ).copyWith(
                                                                          color: Colors.white
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                    'HR/JOB PLATFORM Web/Hybrid App Development 200,000,000',
                                                                    style: TextStyles.MiddlesmallTitleTexStyle(
                                                                    )

                                                                ),
                                                                const SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                    'development design | Web Application Publishing | Establishment of HR/JOB platform',
                                                                    style: TextStyles.VerySmallTitleTexStyle(
                                                                    ).copyWith(
                                                                      color:Colors.black.withOpacity(0.3),
                                                                    )



                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  // Get.to(()=>ProjectWaitingOrFailed());
                                                                  PageTransition
                                                                      .fadeInNavigation(
                                                                      page:
                                                                      const ProjectWaitingOrFailed());
                                                                },
                                                                child: Container(
                                                                  decoration:
                                                                  const BoxDecoration(
                                                                    color: AppColors
                                                                        .greenContainer,
                                                                  ),
                                                                  child:  Padding(
                                                                    padding:
                                                                    EdgeInsets.all(
                                                                        10.0),
                                                                    child: Text(
                                                                        'View',
                                                                        style: TextStyles.MiddlesmallTitleTexStyle(
                                                                        ).copyWith(
                                                                          color: Colors
                                                                              .white,
                                                                        )

                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Divider(
                                                      color:
                                                      Colors.grey.withOpacity(0.6),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      )
                                    : const SizedBox()
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary),
                                  shape: BoxShape.circle),
                              child: Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Required input',
                                style: TextStyles.LargeTitleTexStyle()
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.black, width: 2),
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'ID',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.black, width: 2),
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('sss123')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 80,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 80,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 5, top: 15, bottom: 15),
                                  child: TextField(
                                    style: const TextStyle(
                                      fontSize: 17,
                                    ),
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      hintText: '※In case of change',
                                      hintStyle: const TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      contentPadding: const EdgeInsets.only(
                                          left: 8.0, bottom: 12.0, top: 5.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 5, top: 5, bottom: 5),
                                  child: TextField(
                                    style: const TextStyle(
                                      fontSize: 17,
                                    ),
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      hintText: 'enter your password again.',
                                      hintStyle: const TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.3))),
                                      contentPadding: const EdgeInsets.only(
                                          left: 8.0, bottom: 12.0, top: 5.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('Hong Gil-dong')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'English Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('Hong Gil-dong')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Phone number',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('010-1234-5678')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Gender',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('Female')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Date of Birth',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('0000-00-00')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Company',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('By Industry')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 50,
                                width: 33.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: AppColors.greyContainer2)),
                                    color: Color(0xFFF4F4F4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Country',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 53.w,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.greyContainer2)),
                                  color: Colors.white),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('South Korea')
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(90.w, 6.h),
                          ),
                          onPressed: () async {},
                          child: const Center(
                            child: Text(
                              'Edit Info',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFDFDFDF),
                            fixedSize: Size(90.w, 6.h),
                          ),
                          onPressed: () async {},
                          child: const Center(
                            child: Text(
                              'Delete my account',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
