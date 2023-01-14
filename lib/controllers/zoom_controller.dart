import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';

class ZoomController extends GetxController {
  var controls = ZoomDrawerController().obs;

  toggleDrawer() {
    controls.value.toggle!();
  }
}
