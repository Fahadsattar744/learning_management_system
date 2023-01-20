import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/colors.dart';
import '../../utilities/input_decorations.dart';
import '../../utilities/widgets/account_exists_check.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/page_transition.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool termCheckbox = false;
  final page3ans1 = ValueNotifier(false);
  final page3ans2 = ValueNotifier(false);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController englishNameController = TextEditingController();
  final TextEditingController companyInfoController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryNameController = TextEditingController();
  final TextEditingController affaliationNameController =
      TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController affiliationtypeController =
      TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController jobGroupController = TextEditingController();
  final TextEditingController careerController = TextEditingController();
  final TextEditingController lastDegreeController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController educationLevelController =
      TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool maleSelected = false;
  bool essentialSelected = false;
  bool femaleSelected = false;
  bool optionsSelected = false;

  var textFormFieldPadding = const EdgeInsets.only(left: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        titleSpacing: 0,
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title:  Text(
          'Sign up',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          // Row(
          //   children: [
          //     Image.asset(
          //       'assets/images/account.png',
          //       height: 25,
          //       width: 25,
          //     ),
          //     const SizedBox(
          //       width: 15,
          //     )
          //   ],
          // )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            essentialSelected = !essentialSelected;
                            typeController.text = "essential";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primary),
                              shape: BoxShape.circle),
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                color: essentialSelected
                                    ? AppColors.primary
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Essential',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'ID (e-mail)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a e-mail';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your ID.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Password";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your password'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter New Password again";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.4)),
                      hintText: 'Please enter your password once more.',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a valid Name';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your name.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'English Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: englishNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a valid English Name';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your English name.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
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
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your mobile phone number.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          maleSelected = !maleSelected;
                          femaleSelected = false;
                          typeController.text = "male";
                        });
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: maleSelected
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(0.6),
                                  ),
                                  shape: BoxShape.circle),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: maleSelected
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(0.6),
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 13,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          femaleSelected = !femaleSelected;
                          maleSelected = false;
                          typeController.text = "female";
                        });
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: femaleSelected
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(0.6),
                                  ),
                                  shape: BoxShape.circle),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: femaleSelected
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(0.6),
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Date of birth',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: dateOfBirthController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your birth date.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your birth date.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Affiliation name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: affaliationNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the name of your institution.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter the name of your institution.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Country',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: countryNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the country name.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter the country name.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Checkbox(
                        side: BorderSide(color: Colors.grey.withOpacity(0.6)),
                        value: termCheckbox,
                        onChanged: (bool? value) {
                          termCheckbox = value!;
                          print(termCheckbox);
                          setState(() {});
                        },
                        activeColor: AppColors.primary,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only( top: 10),
                      child: Text(
                        'Terms of Use (required)',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Interbold'),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 17.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyContainer2),
                      color: Colors.grey.withOpacity(0.01),
                      borderRadius: BorderRadius.circular(2)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (val) {},
                            maxLines: 4,
                            showCursor: true,
                            cursorColor: Colors.grey,
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.top,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: 'Enter the terms and conditions',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            optionsSelected = !optionsSelected;
                            typeController.text = "essential";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primary),
                              shape: BoxShape.circle),
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                color: essentialSelected
                                    ? AppColors.primary
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Options',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: addressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your address.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                      hintText: 'Please enter your address.',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Affiliation type',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: affiliationtypeController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your institution.";
                      } else if (value.length < 8) {
                        return "Please enter your institution.";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                      hintText: 'Please enter your institution.',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Department',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your department.";
                      } else if (value.length < 8) {
                        return "Please enter your department.";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                      hintText: 'Please enter your department.',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Position',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: positionController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your job title.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                      hintText: 'Please enter your job title.',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Job group',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: jobGroupController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your occupational group.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your occupational group.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Career',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: careerController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your career.';
                      } else if (value.length < 11) {
                        return "Please enter your career.";
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your career.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Last degree',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: lastDegreeController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your final education level.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your final education level.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Job',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: jobController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your job title.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your job title.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.h,
                        width: 1.w,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Education level',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppColors.textBlackish),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: textFormFieldPadding,
                  child: TextFormField(
                    controller: educationLevelController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your education level.';
                      }
                      return null;
                    },
                    decoration: InputDecorations.inputDecorationNoBorder(
                        hintText: 'Please enter your education level.'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    minimumSize: Size(85.w, 6.h),
                    maximumSize: Size(85.w, 6.h),
                    primary: AppColors.primary,
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Get.to(() => const LoginScreen());
                      PageTransition.fadeInNavigation(page: LoginScreen());
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const AlreadyHaveAnAccountCheck(
                  login: false,
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
