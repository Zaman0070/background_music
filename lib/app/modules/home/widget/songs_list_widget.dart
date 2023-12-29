import 'package:get/get.dart';
import 'package:media_player/app/commons/common_imports/common_libs.dart';
import 'package:media_player/app/commons/core/extension/color_extension.dart';
import 'package:media_player/app/modules/home/controllers/home_controller.dart';
import 'package:media_player/app/modules/home/views/song_play_view.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongListWidget extends StatelessWidget {
  const SongListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: FutureBuilder<List<SongModel>>(
              future: controller.audioQuary.querySongs(
                ignoreCase: true,
                orderType: OrderType.ASC_OR_SMALLER,
                sortType: null,
                uriType: UriType.EXTERNAL,
              ),
              builder: (BuildContext context, snapshot) {
                if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.data!.isEmpty) {
                  return const Center(child: Text('No songs found'));
                }
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        controller.songPlay(snapshot.data![index].data, index);
                        controller.songs.insert(0, snapshot.data![index]);
                        Get.to(
                            () => SongPlayerView(song: snapshot.data![index]));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: context.containerColor),
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(
                              Icons.music_note,
                              color: context.whiteColor,
                            ),
                          ),
                          title: Text(
                            snapshot.data![index].title,
                            maxLines: 2,
                          ),
                          trailing: Icon(
                            Icons.play_arrow,
                            color: context.whiteColor,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        });
  }
}
