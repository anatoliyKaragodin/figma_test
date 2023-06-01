import 'package:figma/src/pages/app_profile_page/view/widgets/profile_body_widgets/profile_avatar_and_name_widget.dart';
import 'package:figma/src/pages/app_profile_page/view/widgets/profile_body_widgets/profile_help_widget.dart';
import 'package:figma/src/pages/app_profile_page/view/widgets/profile_body_widgets/profile_money_data_widget.dart';
import 'package:figma/src/pages/app_profile_page/view/widgets/profile_body_widgets/profile_my_data_widget.dart';
import 'package:figma/src/utils/library.dart';
import '../../../../utils/dimensions_util.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.height10 * 12 - Dimensions.height10 * 1.2,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF4F5FA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.height10 * 1.2),
            topRight: Radius.circular(Dimensions.height10 * 1.2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProfileAvatarAndNameWidget(),
            ProfileMoneyDataWidget(),
            ProfileMyDataWidget(),
            ProfileHelpWidget()
          ],
        ),
      ),
    );
  }
}
