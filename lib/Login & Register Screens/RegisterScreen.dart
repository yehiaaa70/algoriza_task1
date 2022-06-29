import 'package:algoriza_task1/Login%20&%20Register%20Screens/LoginScreen.dart';
import 'package:algoriza_task1/Reusable%20Components/Button.dart';
import 'package:algoriza_task1/Reusable%20Components/PasswordField.dart';
import 'package:algoriza_task1/Reusable%20Components/Text%20Form.dart';
import 'package:algoriza_task1/Reusable%20Components/TextFormPhone.dart';
import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            pinned: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: BackgroundFlexibleSpaceBar(
              background: ClipRect(
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(),
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/register_tile.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Welcome to Fashion Daily",
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {}, child: Text("Help ")),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue),
                          child: Icon(
                            Icons.question_mark_outlined,
                            color: Colors.white,
                            size: 16,
                          ))
                    ],
                  ),
                ),
                MyTextForm(
                  title: "Email",
                  hint: "Eg. example@email.com",
                  textType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(
                  height: 12,
                ),
                PhoneForm(
                  title: 'Phone Number',
                  hint: 'Eg. 812345678',
                  controller: phoneController,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 12,
                ),
                PasswordField(
                  title: 'Password',
                  hint: 'Password',
                  textType: TextInputType.visiblePassword,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 25,
                ),
                My_Button(
                  text: "Register",
                  color: Colors.blue,
                  fun: () {},
                  colorText: Colors.white,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [Spacer(), Text("Or"), Spacer()],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    height: 52,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.blue, width: 2),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              fit: BoxFit.fitWidth,
                              image: AssetImage("assets/images/google.png"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Sign with by Google"),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text("Has an account ?"),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text('Sign in here'),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text(
                      "By registering your account, you are agree to our",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text('terms and condition'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
