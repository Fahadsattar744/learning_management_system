import 'package:flutter/material.dart';

import '../../screens/auth/signup_screen.dart';
import '../../utilities/colors.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (login) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpScreen()),
          );
        } else {
          Navigator.pop(context);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Don't have an account? " : "Already have an account? ",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: AppColors.hintcolor,
            ),
          ),
          Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: AppColors.primary,
            ),
          )
        ],
      ),
    );
  }
}
