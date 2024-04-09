import 'package:bank/views/auth/login_screen.dart';

import 'config/consts.dart';
import 'views/home/home_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      // Get.to(() => HomeLayout());
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: Center(child: Text('jhthjt')),
    );
  }
}
