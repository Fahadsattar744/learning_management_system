import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/input_decorations.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/page_transition.dart';
import 'user_id.dart';

class ForgotEmail extends StatefulWidget {
  const ForgotEmail({Key? key}) : super(key: key);

  @override
  State<ForgotEmail> createState() => _ForgotEmailState();
}

class _ForgotEmailState extends State<ForgotEmail> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/images/findid.png',
                  width: 60.w,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Find ID',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                        fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 1.h,
                      width: 1.w,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 7, top: 10),
                    child: Text(
                      'You can find it with the information you registered',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: AppColors.textBlackish,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'when you registered as a member.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: AppColors.textBlackish),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your institution.";
                  } else if (value.length < 8) {
                    return "Please enter your institution.";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enter name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.4),
                  ),
                )
              ),

              // TextFormField(
              //   controller: nameController,
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please Enter a valid Name';
              //     }
              //     return null;
              //   },
              //   decoration: InputDecoration(
              //     hintText: 'Enter name',
              //     hintStyle: TextStyle(
              //         fontSize: 12, color: AppColors.lightHintText,
              //     fontWeight: FontWeight.bold
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: phoneNumberController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter a valid Phone Number';
                  } else if (value.length < 11) {
                    return "Please Enter a valid Phone Number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.4),
                  ),
                )
              ),




              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  PageTransition.fadeInNavigation(page: const UserID());
                },
                child:    ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(92.w, 6.h)
                  ),
                  onPressed: () async {
                    PageTransition.fadeInNavigation(page: const UserID());
                  },
                  child: const Center(
                    child: Text(
                      'Find ID',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
