import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/LoginControlller.dart';

class LoginScreen extends StatelessWidget {

  LoginController c = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginScreen"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffabecd6),
              Color(0xfffbed96),
            ],
          )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: c.email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: "please enter email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0)
                  )
                ),
              ) ,
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller:c.password ,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "please enter password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0)
                    )
                ),
              ) ,
            ),
            SizedBox(height: 20.0,),
            SizedBox(width: 300.0,
              child: ElevatedButton(
                  onPressed: () async {
                    await c.Login(context);
                    if(c.islogin== true){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(c.msg.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          backgroundColor: Colors.green,
                          showCloseIcon: true,

                        )
                      );
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(c.msg.toString(), style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                            backgroundColor: Colors.red,
                            showCloseIcon: true,

                          )
                      );
                    }
                  },
                  child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red.shade900,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(11.0)
                  )

                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
