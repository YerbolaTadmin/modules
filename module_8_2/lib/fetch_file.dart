import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets(String assetsPath) async {
  try {
    return await rootBundle.loadString(assetsPath).then((file) => file.toString());
  } catch(e){
    return 'Файл не найден';
  }
  
}
