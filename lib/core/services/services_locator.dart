import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mybook/core/services/api_services.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo_impl.dart';
//بعمل انشاء لسيرفيس مره واحده وبعدين بعيد استخدامها بدل ما كا شويه اكتبها
final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<AuthRepo>(AuthRepo(getIt.get<ApiService>()));

}
class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
