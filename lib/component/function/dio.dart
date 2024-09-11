part of 'main_function.dart';

mixin DioComponent {
  Dio dio = Dio();

  Future<Response> getSurah() async {
    Response? response;
    response = await dio.get(AppConfig.cUrl);
    return response;
  }

  Future<Response> getSurahDetail(int nomorSurat) async {
    Response? response;
    response = await dio.get('${AppConfig.cUrl}/$nomorSurat');
    return response;
  }
}
