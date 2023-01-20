import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/widgets/app_bar_widget.dart';

class UserPassword extends StatefulWidget {
  const UserPassword({Key? key}) : super(key: key);

  @override
  State<UserPassword> createState() => _UserPasswordState();
}

class _UserPasswordState extends State<UserPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/images/reset.png',
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
                    'Reset your Password',
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
                      'Reset your password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColors.textBlackish),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your new Password";
                    } else if (value.length < 8) {
                      return "Password must be atleast 8 characters long";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 12, color: Colors.black.withOpacity(0.3)),
                    hintText: 'Enter your new password',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextFormField(
                  controller: confirmpasswordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your new Password again";
                    } else if (value.length < 8) {
                      return "Password must be atleast 8 characters long";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 12, color: Colors.black.withOpacity(0.3)),
                    hintText: 'Enter your new password again',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(92.w, 6.h)
                  // fixedSize: Size(90.w, 3.h),
                ),
                onPressed: () async {

                },
                child: const Center(
                  child: Text(
                    'Reset my PW',
                    style: TextStyle(
                      fontSize: 15,
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
