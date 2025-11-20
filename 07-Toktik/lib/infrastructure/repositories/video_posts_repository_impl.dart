import 'package:toktik/domain/entities/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/repositories/video_post_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{
  final VideoPostDatasource videosDatasource;
  VideoPostsRepositoryImpl({
    required this.videosDatasource
    });
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}
