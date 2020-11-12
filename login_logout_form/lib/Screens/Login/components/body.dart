import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/Screens/Login/components/background.dart';
import 'package:myapp/Screens/Signup/signup_screen.dart';
import 'package:myapp/components/already_have_an_account_check.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_input_container.dart';
import 'package:myapp/components/rounded_password_field.dart';
import 'package:myapp/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChange: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
