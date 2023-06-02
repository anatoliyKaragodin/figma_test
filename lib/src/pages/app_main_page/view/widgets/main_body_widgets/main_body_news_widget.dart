import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class MainBodyNewsWidget extends StatelessWidget {
  const MainBodyNewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height10 * 18,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            final labels = [
              'Горы — это высокие земные образования, напоминающие огромные валы земли и камней.',
              'Акции на фастфуд — это маркетинговый инструмент, используемый компаниями-производителями быстрого питания.',
            ];
            final images = [
              'assets/images/756569399522750.jpg',
              'assets/images/d5d11c91b095686fcaa0f14cf8bbb7fa-600x450_large.jpg'
            ];
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.width10 * 0.7),
              child: Stack(children: [
                Container(
                  height: Dimensions.height10 * 18,
                  width: Dimensions.width10 * 18,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.height10 * 1.4),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.multiply),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.height10,
                        horizontal: Dimensions.width10 * 2),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      labels[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.height10 * 1.4,
                        fontWeight: FontWeight.w400,
                        fontFamily: Constants.fontFamily,
                      ),
                    ),
                  ),
                ),
              ]),
            );
          }),
    );
  }
}
