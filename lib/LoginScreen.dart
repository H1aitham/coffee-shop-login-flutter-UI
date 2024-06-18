import 'package:coffee_shop/HomeScreen.dart';
import 'package:flutter/material.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            
              image: AssetImage('assets/back.png'),
              fit: BoxFit.fill 

              ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 275,
            ),
            const Row(
              children: [
                Text(
                  'Welcome \nBack!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            TextField(
              controller: email,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: "cetinselenay321@email.com",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
             TextField(
              controller: password,
              onChanged: (value) {},
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (email.text == 'haitham@gmail.com'&& password.text == '123456') {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    showCloseIcon: true,
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Success"),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomePage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    showCloseIcon: true,

                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Not Auth"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              child: Container(
                width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xff230C02)),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Color(0xffFFF5E9),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                    child: Text(
                  'Create an account',
                  style: TextStyle(
                      color: Color(0xff230C02),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget your password?',
                  style: TextStyle(color: Color(0xff230C02)),
                )),
          ],
        ),
      ),
    );
  }
}
