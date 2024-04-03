import 'package:flutter/material.dart';
import 'package:project/custom_textfield.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.black54),
        title: Text(
          'My Message',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xff47a0ff), Color(0xff2cf2ca)],
              stops: [0, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 300, child: Image.asset('assets/icon.png')),
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: 280,
                  child: Text(
                    textAlign: TextAlign.center,
                    '"85 Percent of What We Worry About Never Happens"',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xff47a0ff), Color(0xff5895f9)],
              stops: [0, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Column(
              children: [
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Add Your Message",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                  iconC: Icon(Icons.person),
                  hintext: 'masukkan username',
                  controller: usernameController,
                ),
                CustomTextField(
                  iconC: Icon(Icons.email),
                  hintext: 'masukkan email',
                  controller: emailController,
                ),
                CustomTextField(
                  iconC: Icon(Icons.message),
                  hintext: 'masukkan pesan',
                  controller: messageController,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                insetPadding: EdgeInsets.symmetric(
                                  horizontal: 5.0,
                                  vertical: 150.0,
                                ),
                                title: const Text(
                                  "Pesan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'username  : ',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Text(
                                          usernameController.text,
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'email         : ',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Text(
                                          emailController.text,
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'message    :',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      textAlign: TextAlign.justify,
                                      messageController.text,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text("Kembali"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
