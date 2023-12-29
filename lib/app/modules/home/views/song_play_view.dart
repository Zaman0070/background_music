import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:media_player/app/commons/common_imports/common_libs.dart';
import 'package:media_player/app/commons/core/extension/color_extension.dart';
import 'package:media_player/app/modules/home/controllers/home_controller.dart';
import 'package:media_player/app/utils/constants/font_manager.dart';
import 'package:media_player/app/utils/themes/my_colors.dart';
import 'package:media_player/app/utils/themes/styles_manager.dart';
import 'package:on_audio_query/on_audio_query.dart';

// ignore: must_be_immutable
class SongPlayerView extends StatelessWidget {
  final SongModel song;
  SongPlayerView({super.key, required this.song});
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Media Player"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(song.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: getBoldStyle(
                  color: context.whiteColor, fontSize: MyFonts.size18)),
          const Spacer(),
          Column(
            children: [
              Obx(
                () => Slider(
                    thumbColor: MyColors.blue,
                    inactiveColor: context.whiteColor,
                    value: controller.currentValue.value
                        .clamp(0.0, controller.max.value),
                    min: 0.0,
                    max: controller.max.value,
                    onChanged: (seconds) {
                      controller.changeDurationToSecond(seconds.toInt());
                      seconds = seconds;
                    }),
              ),
              Obx(
                () => Lottie.asset(
                  'assets/animation/wwave.json',
                  animate: controller.isPlaying.value,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => InkWell(
                      onTap: () {
                        controller.playPause();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.all(10.h),
                        child: controller.isPlaying.value
                            ? Icon(
                                Icons.pause_rounded,
                                size: 50.r,
                                color: Colors.deepPurple,
                              )
                            : Icon(
                                Icons.play_arrow_rounded,
                                size: 50.r,
                                color: Colors.deepPurple,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
