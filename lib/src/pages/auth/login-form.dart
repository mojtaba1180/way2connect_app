import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/app_icon_icons.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/sizes.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/global-components/button_global/button_global.dart';
import 'package:way2connect/src/global-components/icon-with-text/icon-with-text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const IconWithText(
            icon: AppIcon.logo,
            text: tAppName,
            iconColor: Colors.blue,
            textColor: Colors.black,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      tLoginTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    )), //Title
                const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      tLoginContent,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: tDarkGray),
                    )), //Content
                const SizedBox(
                  height: 60,
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 5, left: 11, top: 10),
                    child: Row(
                      children: const [
                        Text(
                          "Username",
                          style: TextStyle(
                              fontSize: tPrimaryFontSize,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.only(left: 2)),
                        Text(
                          "*",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.red),
                        ),
                      ],
                    )),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: tLightGray),
                      borderRadius: BorderRadius.all(
                        Radius.circular(tRoundedSize),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 5, left: 11, top: 10),
                    child: Row(
                      children: const [
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: tPrimaryFontSize,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.only(left: 2)),
                        Text(
                          "*",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.red),
                        ),
                      ],
                    )),
                TextField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(tRoundedSize),
                      ),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: tLightGray),
                    fillColor: Colors.white70,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword
                            ? Icons.remove_red_eye_outlined
                            : AppIcon.eye_off_outline,
                      ),
                      onPressed: () {
                        setState(() => _showPassword = !_showPassword);
                      },
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgotPassword');
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: tDarkGray,
                          fontSize: tPrimaryFontSize,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonGlobal(
                    buttontext: "Login",
                    onPressed: () => {},
                  ),
                )
                // ignore: prefer_const_constructors
              ],
            )));
  }
}
