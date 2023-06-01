import 'package:figma/src/pages/app_home_page/view/app_home_page.dart';

import 'src/utils/library.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: const AppHomePage().route,
      routes: {
        const AppHomePage().route: (context) => const AppHomePage(),
      },
    );
  }
}
