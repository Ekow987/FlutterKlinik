import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.call),
      //   actions: const [Icon(Icons.favorite)],
      // ),
      // backgroundColor: Colors.grey,
      body: ListView(children: [
            Container(
              height: 350,
              width: 300,
              
          decoration:const BoxDecoration(
            color: Colors.amber,
            // image: DecorationImage(image: AssetImage('assets/images/klinik.jpg', ),fit: BoxFit.contain),
          ),
        ), 
           const SizedBox(
              height: 30,
            ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: const Text(
            'Proceeed with your',
            style: TextStyle(fontSize: 20),
          ),
        ),


       const Padding(
          padding:  EdgeInsets.only(left: 30, right: 30),
          child:  Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const SizedBox(height: 40),

        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                    // icon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: "Username"),
              ),
             const  SizedBox(
                height: 20,
              ),
              Container(
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 130,
                child: Container(
                  height: 50,
                  decoration:  const BoxDecoration(color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Center(child: Text("Sign In",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20, color: Colors.white), )),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
