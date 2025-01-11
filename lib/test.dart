import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<test> with SingleTickerProviderStateMixin {
  bool isMenuVisible = false; // حالة ظهور القائمة
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // إعداد الأنيميشن
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, -1), // ابدأ من خارج الشاشة
      end: const Offset(0, 0), // انتهِ داخل الشاشة
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleMenu() {
    if (isMenuVisible) {
      _controller.reverse(); // إخفاء القائمة
    } else {
      _controller.forward(); // إظهار القائمة
    }
    setState(() {
      isMenuVisible = !isMenuVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // المحتوى الرئيسي
          Column(
            children: [
              if (!isMenuVisible) // عرض الـ AppBar فقط إذا لم تكن القائمة مرئية
                AppBar(
                  title: const Text('Home Screen'),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.menu), // أيقونة القائمة
                      onPressed: toggleMenu, // عند الضغط على الأيقونة
                    ),
                  ],
                ),
              Expanded(
                child: Center(
                  child: Text(
                    'Main content here',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),

          // القائمة المنبثقة
          if (isMenuVisible)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SlideTransition(
                position: _animation, // تطبيق الأنيميشن
                child: Container(
                  color: Colors.blueAccent,
                  height: 200, // ارتفاع القائمة
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.end, // محاذاة الأيقونة يمين
                    children: [
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: toggleMenu, // إغلاق القائمة عند الضغط
                      ),
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.white),
                        title: Text('Profile',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Profile tapped');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings, color: Colors.white),
                        title: Text('Settings',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Settings tapped');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.logout, color: Colors.white),
                        title: Text('Logout',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Logout tapped');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
