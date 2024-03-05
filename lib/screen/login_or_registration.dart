import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screen/auth.dart';

class LoginOrRegistration extends StatelessWidget {
  const LoginOrRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text("Skip"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.07),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/auth_image.png',
                            width: size.width * 0.7,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Planifiez vos taches",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: Text(
                      textAlign: TextAlign.center,
                      """Notre application vous permet de planifier vos taches du quotidien et de pouvoir les suivre""",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Colors.black.withOpacity(0.5),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.12,
                        vertical: size.height * 0.02,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const Auth(registrationMode: true),
                        ),
                      );
                    },
                    child: const Text("Sign up"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.12,
                        vertical: size.height * 0.02,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text("Log in"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
