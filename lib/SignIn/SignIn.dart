import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomePages/Home.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/dark-haired-woman-with-red-lipstick-smiles-leans-stand-with-clothes-holds-package-pink-background.png",
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Stack(children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
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
              Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset("assets/design colors.svg")),
            ]),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: TextFormField(
                style: const TextStyle(color: Color(0xffC0BDBD)),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 14),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Bulk-Message.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Color(0xffC0BDBD)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: TextFormField(
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
                  hintStyle: const TextStyle(color: Color(0xffC0BDBD)),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                "Forgot password?",
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Poopins",
                    color: Color(0xffA90000)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD10909),
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
            const SizedBox(height: 10),
            const Text(
              "OR",
              style: TextStyle(fontSize: 12, fontFamily: "SF Pro Text"),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 95),
              child: Row(
                children: [
                  SvgPicture.asset("assets/Group 1788.svg",
                      height: 50, width: 50),
                  const SizedBox(width: 10),
                  SvgPicture.asset("assets/facebook.svg",
                      height: 50, width: 50),
                  const SizedBox(width: 10),
                  SvgPicture.asset("assets/apple.svg",
                      height: 50, width: 50),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text(
                  "Don't have an Account? ",
                  style: TextStyle(fontSize: 12,),
                ),
                TextButton(
                  child:
                const Text(
                  "Signup",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffA90000)),
                ),
                onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { return const HomePage(); }));},
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
