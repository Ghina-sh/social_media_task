import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../app/data_store_keys.dart';
import '../../domain/core/entities/failure.dart';
import '../core/data_base_config.dart';
import '../core/utils/error_handler/error_handler.dart';
import '../core/utils/network/base_network_info.dart';
import 'home_remote_data_source.dart';
import 'models/home_moduls/post_model.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, PostsModel>> getPosts();
}

class HomeRepositoryImpl extends BaseHomeRepository {
  final BaseHomeRemoteDataSource _homeRemoteDataSource;
  final NetworkInfo _networkInfo;

  HomeRepositoryImpl(this._homeRemoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, PostsModel>> getPosts() async {
    if (await _networkInfo.isConnected) {
      // its connected to internet, its safe to call API
      try {
        final response = await _homeRemoteDataSource.getPosts();
        // success
        DataBaseConfig.instance
            .setDynamicData<PostsModel>(DataStoreKeys.post, response.data!);
        return Right(response.data!);
      } catch (error) {
        log(error.toString());
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      PostsModel posts =
          DataBaseConfig.instance.dynamicData<PostsModel>(DataStoreKeys.post) ??
              PostsModel(posts: []);
      return Right(posts);
    }
  }
}
