import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/input_decorations.dart';
import '../../utilities/theme.dart';
import '../../utilities/widgets/account_exists_check.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/page_transition.dart';
import '../home/home_page.dart';
import 'forgot_email.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool checkboxValue = false;
  bool _value = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetWithoutDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                doubleSpace(),
                Center(
                  child: Image.asset(
                    'assets/images/login_ilustration.png',
                    width: 60.w,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                    fontSize: 20,
                  ),
                ),
                singleSpace(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.person,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: idController,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !value.contains('@') ||
                                    !value.contains('.')) {
                                  return 'Please Enter Valid Email';
                                }
                                return null;
                              },
                              cursorColor: Colors.grey,
                              decoration:
                                  InputDecorations.inputDecorationAllBorder(
                                hintText: 'ID',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    singleSpace(),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8))),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.lock_outline_sharp,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return "Please Enter Valid Password";
                                } else {
                                  return null;
                                }
                              },
                              cursorColor: Colors.grey,
                              decoration:
                                  InputDecorations.inputDecorationAllBorder(
                                hintText: 'Password',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    singleSpace(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              checkboxValue = !checkboxValue;
                            });
                          },
                          child: Row(
                            children: [
                              checkboxValue
                                  ? const Icon(
                                      Icons.check_circle,
                                      color: AppColors.primary,
                                      size: 20,
                                    )
                                  : Icon(
                                      Icons.check_circle,
                                      color: Colors.grey.withOpacity(0.5),
                                      size: 20,
                                    ),
                              const SizedBox(width: 5),
                              Text(
                                "Save ID",
                                style: TextStyle(
                                    color: checkboxValue
                                        ? AppColors.primary
                                   : Colors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.hintcolor,
                              decoration: TextDecoration.underline,
                            ),
                            children: [
                              TextSpan(
                                text: 'Forgot ID',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: AppColors.hintcolor,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(
                                      () => const ForgotEmail(),
                                      duration:
                                          const Duration(milliseconds: 30),
                                      transition: Transition.leftToRight,
                                    );
                                  },
                              ),
                              const TextSpan(text: ' / '),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(
                                      () => const ForgotPassword(),
                                      duration:
                                          const Duration(milliseconds: 30),
                                      transition: Transition.leftToRight,
                                    );
                                  },
                                text: 'Password?',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: AppColors.hintcolor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                doubleSpace(),
                // Row(mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SizedBox(
                //       height: 10.h,
                //       width: 20.w,
                //       child: FittedBox(fit: BoxFit.fill,
                //         child: Lottie.asset(
                //           'assets/animations/circle.json',
                //
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(92.w, 6.h)
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      PageTransition.fadeInNavigation(page: const HomePage());
                    }
                  },
                  child:  Center(
                    child: Text(
                      'Login',
                        style: TextStyles.buildAppBarTexStyle(
                        )
                    ),
                  ),
                ),
                singleSpace(),
                const AlreadyHaveAnAccountCheck(
                  login: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget doubleSpace() {
    return const SizedBox(
      height: 40,
    );
  }

  Widget singleSpace() {
    return const SizedBox(
      height: 20,
    );
  }
}
