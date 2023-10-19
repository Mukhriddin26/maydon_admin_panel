import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maydon_admin_panel/service/constants/colors.dart';
import 'package:maydon_admin_panel/service/constants/strings.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

bool isCheck = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.height;
    final sizeY = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined, color: CTColors.$000000),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Text(
                CTStrings.loginToYourAccount,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: sizeX * .08),
              const CustomTextField(
                  hintText: CTStrings.email, icon: Icons.markunread_outlined),
              SizedBox(height: sizeX * .04),
              const CustomTextField(
                  hintText: CTStrings.passwd, icon: Icons.lock_outline_rounded),
              SizedBox(height: sizeX * .04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    splashRadius: 1,
                    side: const BorderSide(color: CTColors.$1AB65C, width: 2.5),
                    activeColor: Colors.green,
                    value: isCheck,
                    onChanged: (value) {
                      isCheck = value!;
                      setState(() {});
                    },
                  ),
                  const Text(
                    CTStrings.rememberMe,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: sizeX * .04),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: CTColors.$1AB65C,
                  fixedSize: Size(sizeY, sizeX * 0.08),
                ),
                onPressed: () {},
                  child: const Text(CTStrings.signIn,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                  ),
              ),
              SizedBox(height: sizeX * .04),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      color: CTColors.$000000,
                    ),
                    children: [
                      const TextSpan(text: CTStrings.doNotHaveAccount),
                      TextSpan(
                        text: CTStrings.signUpBottom,
                        style: const TextStyle(fontWeight: FontWeight.bold, color: CTColors.$1AB65C),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
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

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomTextField({
    required this.hintText,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      cursorColor: CTColors.$000000,
      decoration: InputDecoration(
          focusColor: CTColors.$000000,
          hintText: hintText,
          hintStyle: const TextStyle(color: CTColors.$212121),
          prefixIcon: Icon(icon, color: CTColors.$212121),
          filled: true,
          fillColor: CTColors.$F2F2F2,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: CTColors.$C4C4C4, width: .1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CTColors.$C4C4C4, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
    );
  }
}
