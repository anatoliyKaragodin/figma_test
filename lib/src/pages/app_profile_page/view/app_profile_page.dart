import 'package:figma/src/pages/app_profile_page/view/widgets/profile_body_widget.dart';
import 'package:figma/src/pages/app_profile_page/view/widgets/profile_top_bar_widget.dart';
import 'package:figma/src/utils/library.dart';

class AppProfilePage extends ConsumerStatefulWidget {
  const AppProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<AppProfilePage> createState() => _AppProfilePageState();
}

class _AppProfilePageState extends ConsumerState<AppProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [ProfileTopBarWidget(), ProfileBodyWidget()],
    );
  }
}
