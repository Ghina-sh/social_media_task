import '../core/api_helper/app_api_helper.dart';
import '../core/models/base_response/base_response.dart';
import '../core/utils/api_routes/api_routes.dart';
import 'models/home_moduls/post_model.dart';

abstract class BaseHomeRemoteDataSource {
  Future<BaseResponse<PostsModel>> getPosts();
}

class HomeRemoteDataSourceImpl implements BaseHomeRemoteDataSource {
  final AppApiHelper _appApiHelper;

  HomeRemoteDataSourceImpl(this._appApiHelper);


  @override
  Future<BaseResponse<PostsModel>> getPosts() async {
    return await _appApiHelper.performGetListRequest(
      endpoint: AppUrls.postsUrl,
      fromJson: PostsModel.fromJson,
      // queryParameters: HomeId,
    );
  }
}
