import 'package:get/get.dart';

class ActiveNavbarItemController extends GetxController {
  var activeItemName = "HOME".obs;
  var isHover = false.obs;
  //updateActiveItemName(var itemName) => activeItemName.value = itemName;
  updateActiveItemName(var itemName) {
    print(itemName);
    activeItemName.value = itemName;
    print(activeItemName);
  }

  updateHovering(var isHovering) => isHover = isHovering;
}
