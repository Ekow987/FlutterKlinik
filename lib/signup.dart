import 'package:flutter/material.dart';
import 'package:ict_klinik/login.dart';
import 'package:ict_klinik/otp_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.call),
      //   actions: const [Icon(Icons.favorite)],
      // ),
      // backgroundColor: Colors.grey,
      body: ListView(children: [
        //     Container(
        //       height: 350,
        //       width: 300,

        //   decoration:const BoxDecoration(
        //     color: Colors.amber,
        //     // image: DecorationImage(image: AssetImage('assets/images/klinik.jpg', ),fit: BoxFit.contain),
        //   ),
        // ),

        const Image(image: AssetImage('assets/images/klinik.jpg')),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: const Text(
            'Proceeed with your',
            style: const TextStyle(fontSize: 20),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            'Sign Up',
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
                    hintText: "Staff Id"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // icon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: "Set New Password"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // icon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: "Confirm New Password"),
              ),
              const SizedBox(
                height: 10,
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

              // ElevatedButton(onPressed: (){}, child: const Text('Sign In'), style: ElevatedButton.styleFrom(
              //   maximumSize:
              // ),)
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    // NEW
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OtpPage()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    const Text('Already on ICT Klinik?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const  LoginPage()));
                        },
                        child: const Text('Sign In')),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
