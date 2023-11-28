import 'package:archive_senegal/widget/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  var formkey = GlobalKey<FormState>();
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordController = TextEditingController();
  var isObcure = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, cons) {
        return ConstrainedBox(
          constraints: BoxConstraints(minWidth: cons.maxWidth),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // logon header
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 285,
                  child: Image.asset("images/logo.png"),
                ),
                // logon header
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.black26,
                              offset: Offset(0, -3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                      child: Column(
                        children: [
                          Form(
                            key: formkey,
                            child: Column(children: [
                              // Name
                              TextFormField(
                                controller: namecontroller,
                                validator: (val) =>
                                    val == "" ? "Please write your name" : null,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.person,
                                        color: Colors.black),
                                    hintText: "name ....",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 6),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              // EMAIL
                              TextFormField(
                                controller: emailcontroller,
                                validator: (val) => val == ""
                                    ? "Please write your email"
                                    : null,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.email,
                                        color: Colors.black),
                                    hintText: "Email ....",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 6),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Obx(
                                () => TextFormField(
                                  controller: passwordController,
                                  obscureText: isObcure.value,
                                  validator: (val) => val == ""
                                      ? "Please write your password"
                                      : null,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.black),
                                      hintText: "Pasword ....",
                                      suffixIcon: Obx(() => GestureDetector(
                                            onTap: () {
                                              isObcure.value = !isObcure.value;
                                            },
                                            child: Icon(
                                              isObcure.value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          )),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.white60),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.white60),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.white60),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true),
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Material(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 28),
                                    child: Text(
                                      "SignUp",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          // don't have an account register here
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Allready have an account?"),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Login here",
                                  style: TextStyle(
                                      color: Colors.purpleAccent, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
