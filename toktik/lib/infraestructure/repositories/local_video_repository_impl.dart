import 'package:toktik/domain/datasourse/video_post_datasourse.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasourse videosDatasourse;

  LocalVideoRepositoryImpl({required this.videosDatasourse});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videosDatasourse.getTrendingVideoByPage(page);
  }
}
