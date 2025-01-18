import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/components/my_button.dart';
import 'package:food_delivery_app_mitch_koko/components/my_textfield.dart';
import 'package:food_delivery_app_mitch_koko/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login function
  void login(){
    /*

    Fill out authentication here...

    */

    // navigate to home page
    Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomePage(),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            // message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            // email textfield
            MyTextField(
                obscureText: false,
                hintText: "Email",
                controller: emailController),
            const SizedBox(
              height: 25,
            ),
            // password textfield
            MyTextField(
                obscureText: true,
                hintText: "Password",
                controller: passwordController),
            const SizedBox(
              height: 25,
            ),
            // login button
            MyButton(onTap: login, text: "Sign In"),
            const SizedBox(
              height: 25,
            ),
            // not a member, register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                     style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
