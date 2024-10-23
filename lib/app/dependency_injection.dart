import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../data/core/api_helper/app_api_helper.dart';
import '../data/core/api_helper/app_api_helper_Impl.dart';
import '../data/core/data_base_config.dart';
import '../data/core/utils/dio_factory.dart';
import '../data/core/utils/network/base_network_info.dart';
import '../data/core/utils/network/network_info.dart';
import '../data/home/home_remote_data_source.dart';
import '../data/home/home_repository.dart';

final instance = GetIt.instance;

///
/// The [inject] function is responsible for adding the instances to the graph
///
Future<void> inject() async {
  //! External

  await DataBaseConfig.instance.init();

  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));

  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  // Data sources
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppApiHelper>(() => AppApiHelperImpl(dio));

  /// ========================== Home ========================== ///
  instance.registerLazySingleton<BaseHomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(instance()));

  instance.registerLazySingleton<BaseHomeRepository>(
      () => HomeRepositoryImpl(instance(), instance()));
}
