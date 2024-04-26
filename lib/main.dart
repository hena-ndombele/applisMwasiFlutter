import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mwasi_app/utils/ColorPage.dart';
import 'apps/MonApplication.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: ColorPages.COLOR_TRANSPARENT),
  );
  runApp(MonApplication());
}
