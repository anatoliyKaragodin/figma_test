import 'package:figma/src/pages/app_main_page/view/widgets/main_body_widgets/main_body_favorites_widget.dart';
import 'package:figma/src/pages/app_main_page/view/widgets/main_body_widgets/main_body_news_widget.dart';
import 'package:figma/src/utils/library.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/dimensions_util.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.height10 * 21.1 - Dimensions.height10 * 1.2,
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
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10 * 1.2,
                  top: Dimensions.height10 * 2.7,
                  bottom: Dimensions.height10),
              child: Text(
                'ИЗБРАННОЕ',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontFamily: Constants.fontFamily,
                    fontSize: Dimensions.height10 * 1.4),
              ),
            ),
            const MainBodyFavoritesWidget(),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10 * 1.2,
                  top: Dimensions.height10 * 2.7,
                  bottom: Dimensions.height10 * 2.5),
              child: Text(
                'НОВОСТИ',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontFamily: Constants.fontFamily,
                    fontSize: Dimensions.height10 * 1.4),
              ),
            ),
            const MainBodyNewsWidget(),
          ],
        ),
      ),
    );
  }
}
