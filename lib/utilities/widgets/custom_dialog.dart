import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../colors.dart';

class CustomDialogBox {
  static Future<dynamic> confirmationDialog(
      {required BuildContext context,
      required String title,
      required VoidCallback? btnYesPressed,
      required VoidCallback? btnNoPressed}) {
    return showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: SizedBox(
                height: 25.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        color: AppColors.primary,
                      ),
                      height: 5.h,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                title,
                                // 'Are you sure you want to apply this class',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 2,
                                      fixedSize: Size(100.w, 5.h),
                                    ),
                                    onPressed: btnYesPressed,
                                    child: const Center(
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 2,
                                      side: const BorderSide(
                                          color: AppColors.primary, width: 1.5),
                                      primary: Colors.white,
                                      fixedSize: Size(100.w, 5.h),
                                      onPrimary: AppColors.primary,
                                    ),
                                    onPressed: btnNoPressed,
                                    child: const Center(
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                          fontSize: 15,
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
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            );
          });
        });
  }
}
