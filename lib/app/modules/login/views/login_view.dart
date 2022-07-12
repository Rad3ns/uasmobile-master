import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uasmobile/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 250,
            child: Image.asset(
              "assets/logo/logo-login.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Silahkan masuk dengan nomor anda",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Input Nomor Anda Disini",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.phoneC,
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Cth. 089536751xxxx",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: (Color(0xFF52307C)),
                  value: controller.checkC.value,
                  onChanged: (value) => controller.checkC.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Saya menyetujui",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik syarat");
                          },
                        text: " syarat",
                        style: TextStyle(
                          color: Color(0xFF52307C),
                        ),
                      ),
                      TextSpan(
                        text: ",",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik ketentuan");
                          },
                        text: "ketentuan",
                        style: TextStyle(
                          color: Color(0xFF52307C),
                        ),
                      ),
                      TextSpan(
                        text: ", dan",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik privasi");
                          },
                        text: " privasi",
                        style: TextStyle(
                          color: Color(0xFF52307C),
                        ),
                      ),
                      TextSpan(
                        text: " Baleni",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text(
              "MASUK",
              style: TextStyle(color: Color.fromARGB(255, 228, 218, 218)),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF52307C), fixedSize: Size(150, 40)),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("Atau masuk menggunakan"),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/fb.png"),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Facebook",
                      style: TextStyle(fontSize: 16, color: Color(0xFF747D8C)),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(150, 40),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(color: Color(0xFF3B5998)),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(fontSize: 16, color: Color(0xFF747D8C)),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(150, 40),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
