import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import 'project_detail.dart';
class ApplyForProject extends StatefulWidget {
  const ApplyForProject({Key? key}) : super(key: key);
  @override
  State<ApplyForProject> createState() => _ApplyForProjectState();
}
class _ApplyForProjectState extends State<ApplyForProject> {
  late TextEditingController _controllerStartdate;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  String _valueChanged1 = '';
  @override
  void initState() {
    _controllerStartdate =
        TextEditingController(text: DateTime.now().toString());
  }

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
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  // Get.to(()=>ProjectDetail());
                  PageTransition.fadeInNavigation(page: const ProjectDetail());
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
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(thickness: 1.3,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 20,
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
                            child:  Padding(
                              padding: EdgeInsets.only(left: 10,right: 10,bottom: 4,top: 4),
                              child: Text(
                                'New',
                                style: TextStyles.VerySmallTitleTexStyle().copyWith(
                                  color: Colors.white,
                                ),

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
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          '\$ 200,000,000',
                        style: TextStyles.SmallTitleTexStyle()

                        ),
                        Row(
                          children:  [
                            Text(
                              'Registered  :  ',style: TextStyles.SmallTitleTexStyle()
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                '2022-12-05',
                                  style: TextStyles.SmallTitleTexStyle()

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 42.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey.withOpacity(0.99),
                      )),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        right:
                                            BorderSide(color: Colors.black))),
                                child:  Center(
                                  child: Text(
                                    'Title',
                                      style: TextStyles.SmallTitleTexStyle()
                                  ),
                                ),
                              ),
                              Container(
                                height: 5.h,
                                width: 64.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                )),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.5))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  ),
                                ),
                                child:  Center(
                                  child: Text(
                                    'File Upload',
                                      style: TextStyles.SmallTitleTexStyle()

                                  ),
                                ),
                              ),
                              Container(
                                height: 10.h,
                                width: 64.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                )),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: const Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                 Text(
                                                  'Attach File 1',
                                                    style: TextStyles.MiddlesmallTitleTexStyle()

                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child:  Center(
                                                      child: Text('Upload',


                                                          style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                                            color: Colors.grey
                                                          )
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: const Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                 Text(
                                                  'Attach File 1',

                                                    style: TextStyles.MiddlesmallTitleTexStyle()

                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child:  Center(
                                                      child: Text('Upload',

                                                          style: TextStyles.VerySmallTitleTexStyle().copyWith(color: Colors.grey)
                                                       )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: [
                                                Container(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: const Icon(
                                                    Icons.file_present_sharp,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                 Text(
                                                  'Attach File 1',
                                                    style: TextStyles.MiddlesmallTitleTexStyle()


                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  height: 3.h,
                                                  width: 15.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child:  Center(
                                                      child: Text('Upload',
                                                          style: TextStyles.VerySmallTitleTexStyle().copyWith(color: Colors.grey)

                                                       )),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        right:
                                            BorderSide(color: Colors.black))),
                                child:  Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Apply Amount',
                                        style: TextStyles.SmallTitleTexStyle()

                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 5.h,
                                width: 64.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                )),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                       Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '\$',
                                            style: TextStyles.SmallTitleTexStyle()

                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.5))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        right:
                                            BorderSide(color: Colors.black))),
                                child:  Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Estimated Project period',
                                        style: TextStyles.SmallTitleTexStyle()
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 8.h,
                                width: 64.w,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                )),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 4.h,
                                        width: 27.w,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: InkWell(
                                                onTap: () {
                                                  _startDate(context);
                                                },
                                                child: SizedBox(
                                                    width: 22.w,
                                                    child: Center(
                                                      child: Text(startDate
                                                          .toString()
                                                          .substring(0, 10),

                                                          style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                                            color: Colors.grey
                                                          )
                                                     ),
                                                    )),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.calendar_today_outlined,
                                              color: Colors.grey,
                                              size: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.abc,
                                        size: 14,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 4.h,
                                        width: 27.w,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: InkWell(
                                                onTap: () {
                                                  _endDate(context);
                                                },
                                                child: SizedBox(
                                                    width: 22.w,
                                                    child: Center(
                                                      child: Text(endDate
                                                          .toString()
                                                          .substring(0, 10),

                                                          style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                                              color: Colors.grey
                                                          )
                                                      ),
                                                    )),
                                              ),
                                            ),
                                             Icon(
                                              Icons.calendar_today_outlined,
                                              color: Colors.grey,
                                              size: 14,
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 20.w,
                                height: 13.5.h,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        // bottom: BorderSide(
                                        //     color: Colors.black
                                        // ),
                                        right:
                                            BorderSide(color: Colors.black))),
                                child:  Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Comment',
                                        style: TextStyles.SmallTitleTexStyle()

                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 64.w,
                                //
                                // decoration: BoxDecoration(
                                //     border: Border(
                                //       bottom: BorderSide(
                                //           color: Colors.black
                                //       ),
                                //     )
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 11.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.greyContainer2),
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: TextField(
                                        onChanged: (val) {},
                                        maxLines: 4,
                                        showCursor: true,
                                        cursorColor: Colors.grey,
                                        textAlign: TextAlign.start,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        decoration:  InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'Comment here',


                                          hintStyle:
                                          TextStyles.SmallTitleTexStyle().copyWith(
                                            color: Colors.grey
                                          ),

                                          filled: true,
                                          fillColor: Colors.transparent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100.w, 2.h),
                      ),
                      onPressed: () async {},
                      child: const Center(
                        child: Text(
                          'Apply',

                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
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
      ),
    );
  }

  _startDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(1940, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }

  _endDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(1940, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }
}
