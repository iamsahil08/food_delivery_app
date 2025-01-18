import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/components/my_button.dart';
import 'package:food_delivery_app_mitch_koko/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
              "Let's create an account",
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
            // Confirm password textfield
            MyTextField(
                obscureText: true,
                hintText: "Confirm password",
                controller: confirmPasswordController),
            const SizedBox(
              height: 25,
            ),
            // login button
            MyButton(onTap: () {}, text: "Sign Up"),
            const SizedBox(
              height: 25,
            ),
            // already have an account, login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
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
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
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
