import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(187, 195, 199, 1),
      body: Container(
        margin: !context.isPhone
            ? EdgeInsets.all(Get.height * 0.1)
            : EdgeInsets.all(Get.width * 0.1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromRGBO(193, 159, 119, 2)),
        child: Row(
          // biru

          children: [
            !context.isPhone
                ? Expanded(
                    child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        color: Color.fromARGB(193, 159, 119, 77)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 70),
                          ),
                        ],
                      ),
                    ),
                  ))
                : const SizedBox(),
            //putih
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  context.isPhone
                      ? Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Welcome",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 40),
                            ),
                            Text(
                              "Please Sign In",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  Image.asset(
                    'assets/icon/icon.png',
                    height: Get.height * 0.5,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => Get.toNamed(Routes.HOME),
                    label: const Text('Sign In with Google'),
                    icon: const Icon(
                      Ionicons.logo_google,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
