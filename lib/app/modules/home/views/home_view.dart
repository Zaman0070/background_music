import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/app/commons/core/extension/color_extension.dart';
import 'package:media_player/app/modules/home/controllers/home_controller.dart';
import 'package:media_player/app/modules/home/widget/songs_list_widget.dart';
import 'package:media_player/app/utils/constants/font_manager.dart';
import 'package:media_player/app/utils/themes/styles_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Media Player",
            style: getBoldStyle(
                color: context.whiteColor, fontSize: MyFonts.size18),
          ),
        ),
        body: const SongListWidget());
  }
}
