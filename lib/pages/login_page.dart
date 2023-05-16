import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey=GlobalKey<FormState>();
  movetoHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){


    setState(() {
    changeButton = true;
  });
  await Future.delayed(Duration(seconds: 1));
  await Navigator.pushNamed(context, MyRoutes.homeRoute
  );setState(() {
    changeButton=false;
  });
  }}
  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/loging_image.png", fit: BoxFit.cover),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 32.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter UserName",
                                labelText: "Username"),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Password cannot be empty";
                              }else if(value.length<6){
                                return "Password's length should be atleast 6 characters long";
                              }
                              return null;
                            },
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),
                          //  ElevatedButton(child: const Text("Login"),
                          // style: TextButton.styleFrom(
                          //      minimumSize: Size.fromWidth(100),
                          //     foregroundColor: Colors.white
                          //  ),
                          //   onPressed: (){
                          //     print("Hi Shivansh");
                          //   })
                          // ElevatedButton(

                          //   onPressed: () {
                          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //   },
                          //   child: Text("Login"),
                          //   style:
                          //       TextButton.styleFrom(minimumSize:Size(150,40) ,foregroundColor: Colors.white, backgroundColor:const Color(0xffcb1c7d)),
                          // )
                          Material(
                            color: context.theme.buttonColor,
                              borderRadius: BorderRadius.circular(
                                  changeButton ? 50 : 8),

                  child: InkWell(
                              onTap: ()=>movetoHome(context),
                               
                              child: AnimatedContainer(
                                width: changeButton ? 50 : 150,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(Icons.done, color: Colors.white)
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),

                                duration: Duration(seconds: 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
