import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class MainSearchWidget extends StatelessWidget {
  const MainSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Dimensions.height10 * 1.8,
          left: Dimensions.width10 * 1.2,
          right: Dimensions.width10 * 1.2),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.15),
          contentPadding: EdgeInsets.symmetric(
              vertical: Dimensions.height10,
              horizontal: Dimensions.height10 * 1.2),
          labelText: 'Поиск',
          labelStyle: TextStyle(
              color: Colors.white,
              fontFamily: Constants.fontFamily,
              fontSize: Dimensions.height10 * 1.5,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.height10),
            borderSide: BorderSide.none,
          ),
        ),
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
