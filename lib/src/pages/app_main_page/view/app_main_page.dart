import 'package:figma/src/pages/app_main_page/view/widgets/main_body_widget.dart';
import 'package:figma/src/pages/app_main_page/view/widgets/main_top_bar_widget.dart';
import 'package:figma/src/utils/library.dart';

class AppMainPage extends ConsumerStatefulWidget {
  const AppMainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends ConsumerState<AppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [MainTopBarWidget(), MainBodyWidget()],
    );
  }
}
