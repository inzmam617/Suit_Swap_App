import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suit_swap_app/Edit%20Profile/EditProfile.dart';

import '../SignIn/SignIn.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Text(
                    "Sign Up",
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
              cursorWidth: 0.5,
              cursorColor: Colors.black,
              style: TextStyle(color: Color(0xffC0BDBD)),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Bulk-Profile.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Color(0xffC0BDBD),fontSize: 12),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.25,
            child: TextFormField(
              cursorWidth: 0.5,
              cursorColor: Colors.black,
              style: TextStyle(color: Color(0xffC0BDBD),fontSize: 12),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Bulk-Message.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xffC0BDBD)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.25,
            child: TextFormField(
              cursorWidth: 0.5,
              cursorColor: Colors.black,
              style: TextStyle(color: Color(0xffC0BDBD),fontSize: 12),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Bulk-Unlock.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xffC0BDBD)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.25,
            child: TextFormField(
              cursorWidth: 0.5,
              cursorColor: Colors.black,
              style: TextStyle(color: Color(0xffC0BDBD),fontSize: 12),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Bulk-Lock.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Color(0xffC0BDBD),fontSize: 12),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 195,
            height: 35,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffFD8A00),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)))),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 12, fontFamily: "Poppins", color: Colors.white),
                )),
          ),
          SizedBox(height: 30),
          Text(
            "OR",
            style: TextStyle(fontSize: 12, fontFamily: "SF Pro Text"),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/Group 1788.svg",
                  height: 50, width: 50),
              const SizedBox(width: 10),
              SvgPicture.asset("assets/facebook.svg",
                  height: 50, width: 50),
              const SizedBox(width: 10),
              SvgPicture.asset("assets/apple.svg", height: 50, width: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Don't have an Account? ",
                  style: TextStyle(fontSize: 12, fontFamily: "Poppins"),
                ),
              ),
              TextButton(
                child: Text(
                  "Signin",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                      color: Color(0xffFD8A00)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SignIn();
                  }));
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
