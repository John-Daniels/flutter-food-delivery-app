import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_deliver_app/colors.dart';
import 'package:food_deliver_app/screens/home/home_screen.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding + 25,
        vertical: defaultPadding + 25,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "johnkoder@gmail.com",
                  label: Text('Email Address'),
                ),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              const TextField(
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  label: Text('Password'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: primaryLightColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              width: double.maxFinite,
              child: MaterialButton(
                elevation: 0,
                color: primaryColor,
                height: 70.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'login',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
