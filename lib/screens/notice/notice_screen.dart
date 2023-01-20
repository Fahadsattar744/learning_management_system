import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/drawer.dart';
import '../../utilities/widgets/page_transition.dart';
import '../notice/notice_detail.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
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
                    'Notice',
                    style: TextStyles.buildAppBarTexStyle(),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(children: [
                    for (int i = 0; i < 13; i++)
                      Column(
                        children: [
                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: AppColors.primary,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: AppColors.primary),
                                  child:  Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18,right: 18,top: 4,bottom: 4),
                                      child: Text(
                                        '22.11.09',
                                        style: TextStyles.MiddlesmallTitleTexStyle().copyWith(
                                          color: Colors.white,
                                        ),


                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 Text(
                                  'Title',
                                  style: TextStyles.SmallTitleTexStyle(),

                                ),
                              ],
                            ),
                            children: [
                              Container(
                                height: 8.h,
                                color:AppColors.primary.withOpacity(0.1),

                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Get.to(()=>NoticeDetail());
                                        PageTransition.fadeInNavigation(
                                            page: const NoticeDetail());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColors.greyTextColor),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'See Details',
                                            style: TextStyle(
                                                color: AppColors.greyTextColor,
                                            fontSize: 12
                                            ),
                                          )
                                          // InkWell(
                                          //     onTap: () async {
                                          //
                                          //       FilePickerResult? result = await FilePicker.platform.pickFiles();
                                          //
                                          //       if (result != null) {
                                          //         PlatformFile file = result.files.first;
                                          //
                                          //         print(file.name);
                                          //         print(file.bytes);
                                          //         print(file.size);
                                          //         print(file.extension);
                                          //         print(file.path);
                                          //       } else {
                                          //         // User canceled the picker
                                          //       }
                                          //     },
                                          //
                                          //     child: Icon(Icons.upload_file,size: 35,)),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    // Row(mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text(('Upload file')),
                                    //   ],
                                    // )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            height: 1.5,
                          )
                        ],
                      ),
                  ]),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey.withOpacity(0.8),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
