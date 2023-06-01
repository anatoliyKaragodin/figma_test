import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';
import '../../../../app_home_page/controller/app_home_page_controller.dart';

class MainAvatarAndNameWidget extends ConsumerStatefulWidget {
  const MainAvatarAndNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MainAvatarAndNameWidgetState();
}

class _MainAvatarAndNameWidgetState
    extends ConsumerState<MainAvatarAndNameWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppHomePageController.onProfileTap(ref);
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: Dimensions.width10 * 0.6),
            child: CircleAvatar(
              foregroundImage:
                  const AssetImage('assets/avatar/Crreq9XOgpk.jpg'),
              radius: Dimensions.height10 * 1.8,
            ),
          ),
          Text(
            'Анатолий',
            style: TextStyle(
                color: Colors.white,
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w600,
                fontSize: Dimensions.height10 * 2),
          )
        ],
      ),
    );
  }
}
