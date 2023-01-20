import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/common_widgets.dart';
import '../../utilities/widgets/drawer.dart';

class TestResult extends StatefulWidget {
  const TestResult({Key? key}) : super(key: key);

  @override
  State<TestResult> createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  //
  // EasyTableModel<Person>? _model;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   List<Person> rows = [
  //     Person('Landon', 19),
  //     Person('Sari', 22),
  //     Person('Julian', 37),
  //     Person('Carey', 39),
  //     Person('Cadu', 43),
  //     Person('Delmar', 72)
  //   ];
  //
  //   _model = EasyTableModel<Person>(rows: rows, columns: [
  //     EasyTableColumn(name: 'Name', stringValue: (row) => row.name),
  //     EasyTableColumn(name: 'Age', intValue: (row) => row.age)
  //   ]);
  // }
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
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Text(
                  'My test results',
                    style: TextStyles.buildAppBarTexStyle(
                    ).copyWith(
                      color: Colors.black,
                    )
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                     Text(
                      'No',

                    style: TextStyles.SmallTitleTexStyle(
                    ).copyWith(color: AppColors.primary)

                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                     Text(
                      'Test subject',
                        style: TextStyles.SmallTitleTexStyle(
                        ).copyWith(color: AppColors.primary)
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                     Text(
                      'Date',
                        style: TextStyles.SmallTitleTexStyle(
                        ).copyWith(color: AppColors.primary)
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                     Text(
                      'Score',
                        style: TextStyles.SmallTitleTexStyle(
                        ).copyWith(color: AppColors.primary)
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            for (int i = 0; i < 5; i++)
              ExpansionTile(
                textColor: Colors.black,
                iconColor: AppColors.primary,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 8.w,
                        child:  Text(
                          '1',
                            style: TextStyles.MiddlesmallTitleTexStyle(
                            )


                        ),
                      ),
                      Container(
                        width: 27.w,
                        child:  Text(
                          'Biotech 152 Exam',
                          overflow: TextOverflow.ellipsis,
                            style: TextStyles.MiddlesmallTitleTexStyle(
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 17.w,
                        child:  Text(
                          '2022.10.27',
                            style: TextStyles.MiddlesmallTitleTexStyle(
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 10.w,
                        child: Text(
                          '80',
                            style: TextStyles.MiddlesmallTitleTexStyle(
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                children: [
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Table(
                            columnWidths: {
                              0: FlexColumnWidth(1.5),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(1),
                            },
                            border: TableBorder.all(color: Colors.grey.withOpacity(0.3)),
                            children: [
                              TableRow(
                                  children: [
                                    Container(
                                      height:8.h,
                                      width: 15.w,
                                      color: Color(0xFFDDE8FA),
                                      child: Center(
                                        child: Text('No.',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                                color: Colors.black.withOpacity(0.6)
                                            )
                                        ),
                                      ),
                                    ),
                                    for(int i=1;i<6;i++)
                                      Container(
                                        height:8.h,
                                        width: 8.w,

                                        color: Color(0xFFE6E7F2),
                                        child: Center(
                                          child: Text('$i',
                                              style: TextStyles.LargeTitleTexStyle(
                                              ).copyWith(
                                                  color: Colors.black.withOpacity(0.6)
                                              )
                                          ),
                                        ),
                                      ),

                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Container(
                                      height:8.h,
                                      width: 20.w,
                                      color: Color(0xFFDDE8FA),
                                      child: Center(
                                        child: Text('Answer',
                                            style: TextStyles.MiddlesmallTitleTexStyle(
                                            ).copyWith(
                                                color: Colors.black.withOpacity(0.6)
                                            )),
                                      ),
                                    ),
                                    for(int i=1;i<6;i++)
                                      Container(
                                        height:8.h,
                                        width: 8.w,
                                        color: Color(0xFFE6E7F2).withOpacity(0.3),
                                        child: Center(
                                          child:
                                          i==1|| i==2||i==3?
                                          Text('0',
                                              style: TextStyles.LargeTitleTexStyle(
                                              ).copyWith(
                                                  color: AppColors.primary
                                              )
                                          ):
                                          Text('x',
                                              style: TextStyles.LargeTitleTexStyle(
                                              ).copyWith(
                                                  color: Colors.red
                                              )
                                          ),
                                        ),
                                      ),

                                  ]
                              ),


                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          // EasyTable<Person>(_model),
                        ],
                      ),
                    ),
                  )
                ],
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


