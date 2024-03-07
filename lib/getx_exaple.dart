import 'package:get/get.dart';

class Example extends GetxController {
  var sing = true.obs;

  valueChange() {
    sing.value = !sing.value;
  
  }
}
