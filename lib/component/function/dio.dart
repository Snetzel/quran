part of 'main_function.dart';

mixin DioComponent {
  Dio dio = Dio();

  Future<Response> getSurah() async {
    Response? response;
    try {
      response = await dio.get(AppConfig.cUrl);
      print("--res ${response.data}");
    } catch (e) {
      print(e);
    }
    return response!;
  }

  Future<Response> getSurahDetail(int nomorSurat) async {
    Response? response;
    try {
      response = await dio.get('${AppConfig.cUrl}/$nomorSurat');
      print('--- Get Detail');
    } catch (e) {
      print('error detail --- $e');
    }
    return response!;
  }
}
