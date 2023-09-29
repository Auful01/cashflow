import 'package:cashflow/components/form.dart';
import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: Center(
                  child: Container(
                      child: Lottie.asset('lib/assets/lottie/login.json',
                          height: 400.h)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Center(
                  child: TextBold(
                      text: 'Welcome to Cashflow',
                      size: 20.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Center(
                  child: TextBase(
                      text: 'Manage your cashflow with ease',
                      size: 14.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Center(
                    child: Container(
                  width: 300.w,
                  child: const StdForm(
                      label: 'Email',
                      controller: null,
                      maxlength: 50,
                      type: TextInputType.emailAddress,
                      formkey: null),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Center(
                    child: Container(
                  width: 300.w,
                  child: const StdForm(
                      label: 'Password',
                      controller: null,
                      maxlength: 50,
                      type: TextInputType.visiblePassword,
                      formkey: null),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Center(
                  child: Container(
                    width: 300.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                      child: TextBase(
                          text: 'Login', size: 14.sp, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
