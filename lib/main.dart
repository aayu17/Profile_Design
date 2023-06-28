import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_1/updateProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Hey",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        leading: const Icon(
          LineAwesomeIcons.angle_left,
          color: Colors.blueAccent,
        ),
        centerTitle: true,
        title: Text("Profile",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600
            ))),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? Icons.sort : LineAwesomeIcons.moon),
            color: Colors.black,
          )
        ],
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
                          onPressed:(){
                            Get.to(() => const UpdateProfile());
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Next Coders",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "@next_coders",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    
                    onPressed: () {
                      Get.to(() => const UpdateProfile());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        side: BorderSide.none,
                        elevation: 0,
                        shape: const StadiumBorder()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Edit Profile",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            )),
                          ),
                        ),
                        // Padding(padding: EdgeInsets.all(10)),
                        const Icon(
                          LineAwesomeIcons.angle_right,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Divider(),
                ProfileWdget(
                  title: "Settings",
                  startIcon: LineAwesomeIcons.cog,
                  onPress: () {},
                  titleColor: Colors.black,
                ),
                const Divider(),
                ProfileWdget(
                  title: "Payments",
                  startIcon: Icons.payment,
                  onPress: () {},
                  titleColor: Colors.black,
                ),
                const Divider(),
                ProfileWdget(
                  title: "Contact Us",
                  startIcon: Icons.contact_support,
                  onPress: () {},
                  titleColor: Colors.black,
                ),
                Divider(),
                ProfileWdget(
                  title: "Privacy",
                  startIcon: Icons.privacy_tip,
                  onPress: () {},
                  titleColor: Colors.black,
                ),
                const Divider(),
                ProfileWdget(
                  title: "Terms And Conditions",
                  startIcon: LineAwesomeIcons.file_contract,
                  onPress: () {},
                  titleColor: Colors.black,
                ),
                const Divider(),
                ProfileWdget(
                  title: "Logout",
                  startIcon: Icons.logout,
                  onPress: () {},
                  titleColor: Colors.red,
                  endIcon: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileWdget extends StatelessWidget {
  const ProfileWdget({
    Key? key,
    required this.startIcon,
    required this.title,
    required this.onPress,
    this.endIcon = true,
    this.titleColor,
  }) : super(key: key);
  final String title;
  final IconData startIcon;
  final bool endIcon;
  final VoidCallback onPress;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: onPress,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black12),
          child: Icon(
            startIcon,
            color: Colors.black,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
        ),
        trailing: endIcon
            ? Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0)),
                child: const Icon(
                  LineAwesomeIcons.angle_right,
                  color: Colors.black,
                ),
              )
            : null,
      ),
    );
  }
}
