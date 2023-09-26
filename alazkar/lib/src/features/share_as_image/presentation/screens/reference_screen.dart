// import 'package:alazkar/src/core/constants/const.dart';
// import 'package:alazkar/src/core/utils/open_url.dart';
import 'package:flutter/material.dart';

class ReferenceScreen extends StatelessWidget {
  static const String routeName = "/reference";

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: const RouteSettings(name: routeName),
  //     builder: (_) => const ReferenceScreen(),
  //   );
  // }

  final String text;
  const ReferenceScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "الحاشية",
          style: TextStyle(fontFamily: "Uthmanic"),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15),
          Text(
            text,
            // textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Kitab",
              fontSize: 20,
              height: 2,
            ),
          ),
          // ListTile(
          //   leading: Image.asset(
          //     "assets/icons/app.png",
          //   ),
          //   title: Text("تطبيق الأذكار النووية الإصدار $appVersion"),
          //   subtitle: const Text("تطبيق مجاني خالي من الإعلانات ومفتوح المصدر"),
          // ),
          // const Divider(),
          // const ListTile(
          //   leading: Icon(Icons.handshake),
          //   title: Text("نسألكم الدعاء لنا ولوالدينا"),
          // ),
          // const Divider(),
          // const ListTile(
          //   leading: Icon(Icons.source_outlined),
          //   title: Text("المصدر"),
          //   subtitle: Text("كتاب الأذكار للإمام النووي"),
          // ),
          // const Divider(),
          // ListTile(
          //   leading: const Icon(Icons.open_in_browser),
          //   title: const Text("رابط المشروع المفتوح المصدر"),
          //   onTap: () {
          //     openURL("https://github.com/muslimpack/Al-Azkar");
          //   },
          // ),
        ],
      ),
    );
  }
}
