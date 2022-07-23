import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: TestGrid(),
    );
  }
}

class TestGrid extends StatefulWidget {
  const TestGrid({Key? key}) : super(key: key);

  @override
  State<TestGrid> createState() => _TestGridState();
}

class _TestGridState extends State<TestGrid> {
  bool? isDark = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:
      isDark == false ? const Color(0xFFFAFAFA) : const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              IconButton(
                icon: Icon(
                  Icons.dark_mode_outlined,
                  color: isDark == false
                      ? const Color(0xFF221401)
                      : const Color(0xFFFAFAFA),
                  size: size.height * 0.04,
                ),
                onPressed: () {
                  setState(() {
                    isDark == true ? isDark = false : isDark = true;
                  });
                },
              ),
              Center(
                child: Container(
                  height: size.height / 6,
                  width: size.height / 6,
                  decoration: BoxDecoration(
                      color: isDark == false
                          ? const Color(0xFF221401)
                          : const Color(0xFFFAFAFA),
                      shape: BoxShape.circle,
                      border:
                      Border.all(color: const Color(0xFFED9720), width: 5)),
                  child: Icon(
                    Icons.person_outline_outlined,
                    size: size.height / 12,
                    color: const Color(0xFFED9720),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "John Deo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: isDark == false
                        ? const Color(0xFF221401)
                        : const Color(0xFFFAFAFA),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "john.deo@example.com",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: isDark == false
                          ? const Color(0xFF221401)
                          : const Color(0xFFFAFAFA)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      primary: const Color(0xFFED9720),
                      padding: EdgeInsets.symmetric(horizontal: size.width / 8)),
                  child: const Text(
                    "Upgrade to Pro",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color(0xFF221401)
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: const Color(0xFFCFD8DC),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.privacy_tip_outlined,color: Color(0xFF221401),),
                        SizedBox(width: 15),
                        Text(
                          "Privacy",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color:Color(0xFF221401)
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios,color: Color(0xFF221401),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: const Color(0xFFCFD8DC),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.history,color: Color(0xFF221401),),
                        SizedBox(width: 15),
                        Text(
                          "Purchase History",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color:Color(0xFF221401)
                          ),),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios,color: Color(0xFF221401),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: const Color(0xFFCFD8DC),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.help_outline,color: Color(0xFF221401),),
                        SizedBox(width: 15),
                        Text(
                          "Help & Support",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color:Color(0xFF221401)
                          ),),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios,color: Color(0xFF221401),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: const Color(0xFFCFD8DC),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.settings_outlined,color: Color(0xFF221401),),
                        SizedBox(width: 15),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color:Color(0xFF221401)
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios,color: Color(0xFF221401),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: const Color(0xFFCFD8DC),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.person_add_outlined,color: Color(0xFF221401),),
                        SizedBox(width: 15),
                        Text(
                          "Invite a Friend",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color:Color(0xFF221401)
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios,color: Color(0xFF221401),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: size.width/16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: isDark == false
                            ? const Color(0xFF221401)
                            : const Color(0xFFFAFAFA),
                        padding: EdgeInsets.symmetric(horizontal: size.width/20)
                    ),
                    child: Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: isDark == true
                                  ? const Color(0xFF221401)
                                  : const Color(0xFFFAFAFA)),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

