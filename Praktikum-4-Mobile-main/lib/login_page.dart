
import 'package:flutter/material.dart';
import 'package:praktikum3/Home_Page_1.dart';
import 'package:praktikum3/sharedpref.dart';


class LoginPage extends StatefulWidget {
  Function setTheme;
  LoginPage({Key? key, required this.setTheme}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ThemeData themeData = ThemeData.light();

  void setTheme(bool isDarkMode) {
    if (mounted){
        setState(() {
      themeData = (isDarkMode) ? ThemeData.dark() : ThemeData.light();
    });
      }
    
  }

  @override
  Widget build(BuildContext context) {
    SharedPref.pref?.setString('isDarkMode','ini Mode Dark');
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 53, 51),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            print('kembali');
            Navigator.of(context).pop();
          },
        ),
      ),
      body: 
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 14,),

            Text('Login to your account',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.5),
              
            ),
            ),

            SizedBox(height: 36,),

            Text('Email',
            style: TextStyle(
              fontSize: 16,
            ),),

            SizedBox(height: 12,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email'
              ),
            ),

            SizedBox(height: 20,),

            Text('Password',
            style: TextStyle(
              fontSize: 16,
            ),),

            SizedBox(height: 12,),

            

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Password'
              ),
            ),

            SizedBox(height: 13,),

            
            TextButton(onPressed: () {}, 
            child: Text('Forget Password?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color.fromARGB(255, 207, 53, 51)
            ),
            )
            ),

            SizedBox(height: 159,),
            
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 207, 53, 51),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        ),

                      ),
                      onPressed: () {
                        print('tess');
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page(setTheme: setTheme),));
                      },
                      child: Text('Login',
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account yet?",
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                        TextButton(
                          child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 207, 53, 51)
                          ),),
                          onPressed: () {
                            print('object');
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage(setTheme: setTheme,)));
                          },
                        )
                      ],
                    ),
                  )

                  
                  // Center(
                  //   child : Row(
                  //   children: [
                  //     Text('jika anda lupa password'),
                  //     TextButton(
                  //       child: Text('data'),
                  //       onPressed: () {
                  //         print('coba');
                  //         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  //       },
                  //     )
                  //   ]
                  // ),
                  // ),

                  
                ],
              ),
            )

            // Center(
            //   child: Container(
            //     width: 320,
            //     height: 55,
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         primary: Color.fromARGB(255, 255, 166, 1),
            //         shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       onPressed: () {
            //         print('Tombol Login');
            //       },
            //       child: Text('Login',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold
            //       ),),
            //     ),
            //   )
            // ),
                  
            
          ],
        ),
      ),

    );
  }
}