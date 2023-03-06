import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomePages/Home.dart';
import '../SignUp/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SvgPicture.asset("assets/Fashion blogging-amico.svg"),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Align(
                      alignment: Alignment.topRight,
                      child:
                          SvgPicture.asset("assets/design colors.svg")),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 350),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Poppins",
                          color: Color(0xff1A1D3A),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: TextFormField(
                cursorColor: Colors.black,
                cursorWidth: 0.5,
                style: const TextStyle(color: Color(0xffC0BDBD)),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 14),
                    prefixIcon: SvgPicture.asset(
                      "assets/Iconly-Bulk-Message.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Email",
                    hintStyle:
                        const TextStyle(color: Color(0xffC0BDBD), fontSize: 12),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: TextFormField(
                cursorColor: Colors.black,
                cursorWidth: 0.5,
                style: const TextStyle(color: Color(0xffC0BDBD)),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 15),
                    prefixIcon: SvgPicture.asset(
                      "assets/Iconly-Bulk-Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    suffixIcon: SvgPicture.asset(
                      "assets/Show.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(color: Color(0xffC0BDBD), fontSize: 12),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 250),
              child: Text(
                "Forgot password?",
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Poopins",
                    color: Color(0xffFD8A00)),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 195,
              height: 35,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HomePage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFD8A00),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)))),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  )),
            ),
            const SizedBox(height: 30),
            const Text(
              "OR",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: "SF Pro Text",
                  color: Color(0xff200A4D)),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  SvgPicture.asset("assets/Group 1788.svg",
                      height: 60, width: 60),
                  const SizedBox(width: 20),
                  SvgPicture.asset("assets/facebook.svg",
                      height: 60, width: 60),
                  const SizedBox(width: 20),
                  SvgPicture.asset("assets/apple.svg", height: 60, width: 60),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Signup",
                    style: TextStyle(fontSize: 12, color: Color(0xffFD8A00)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const signup();
                    }));
                  },
                )
              ],
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center
            //   ,crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Text("Dont't have an Account?"),
            //     TextButton(onPressed: (){}, child: const Text("ASd"))
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
