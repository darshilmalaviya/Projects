import 'package:flutter/material.dart';

class Educationloginpage extends StatelessWidget {
  const Educationloginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.keyboard_backspace_outlined,
                  size: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    focusedBorder: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.red),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    labelText: "Password",
                    focusedBorder: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.red),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo,
                        Color(0xff648def),
                        Color(0x67a1f7),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Text(
                        "Don't have an account ?",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign up",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(child: Image.asset("assets/images/boysonbooks.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
