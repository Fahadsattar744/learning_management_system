import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tecbeck_projects/screens/auth/login_screen.dart';

import '../../utilities/colors.dart';
import '../../utilities/widgets/app_bar_widget.dart';
import '../../utilities/widgets/page_transition.dart';

class UserID extends StatefulWidget {
  const UserID({Key? key}) : super(key: key);

  @override
  State<UserID> createState() => _UserIDState();
}

class _UserIDState extends State<UserID> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  'assets/images/yourid.png',
                  width: 60.w,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your ID is',
                    style: const TextStyle(
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
                      decoration: new BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  const Padding(
                    padding: EdgeInsets.only( top: 10),
                    child: const Text(
                      'You can find it with the information you registered',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColors.textBlackish),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'when you registered as a member.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: AppColors.textBlackish),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.5,
                      color: Colors.black. withOpacity(0.2)
                    )
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('Name',style:TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ,
                    color: Colors.black,
                  ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.5,
                          color: Colors.black. withOpacity(0.2)
                      )
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('Phone number',style:TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ,
                    color: Colors.black,
                  ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Container(
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.5,
                          color: Colors.black. withOpacity(0.2)
                      )
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('Password',style:TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ,
                    color: Colors.black,
                  ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(92.w, 6.h)
                ),
                onPressed: () async {
                  PageTransition.fadeInNavigation(page: const LoginScreen());
                },
                child: const Center(
                  child: Text(
                    'Login',
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
