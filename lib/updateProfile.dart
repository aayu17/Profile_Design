import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              LineAwesomeIcons.angle_left,
              color: Colors.blueAccent,
            )),
        centerTitle: true,
        title: Text("Edit Profile",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600))),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                //!Profile Image
                Stack(
                  children: [
                    const SizedBox(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 120,
                        child: CircleAvatar(
                          radius: 73,
                          backgroundImage:
                              AssetImage('assets/images/download.png'),
                          // backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange),
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => const UpdateProfile());
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Form(
                    child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Text("Full Name"),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          floatingLabelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text("Phone Number"),
                          prefixIcon: Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          floatingLabelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text("E-mail"),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          floatingLabelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(" Password"),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          floatingLabelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
                  
                    SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Get.to(() => const UpdateProfile());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            side: BorderSide.none,
                            elevation: 0,
                            shape: const StadiumBorder()),                       
                              child: Text(
                                "Save",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),),
                              ),
                            ),
          
                      ),
                  ],
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
