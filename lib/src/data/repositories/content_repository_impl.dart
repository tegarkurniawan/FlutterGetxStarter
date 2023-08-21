import 'package:dio/dio.dart';

import '../../core/resources/data_state.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/content_repository.dart';
import '../datasources/remote/content_remote_data_source.dart';
import '../models/event_model.dart';

class ContentRepositoryImpl implements ContentRepository {
  final ContentRemoteDataSource contentApiService;

  const ContentRepositoryImpl({required this.contentApiService});


  @override
  Future<DataState<List<Event>>> event() async{
   try {
      Response res = await contentApiService.event();

      var data = res.data;
      if (data["status"] == "ok") {
         var data = res.data;
         EventModel news = EventModel.fromJson(data);
        return DataSuccess(news.eventList);
      } else {
        
        return DataFailed(
          DioError(
            error: data["message"],
            response: res,
            type: DioErrorType.response,
            requestOptions: RequestOptions(path: ''),
          ),
        );
      }
    } on DioError catch (e) {
     
      return DataFailed(e);
    }
  }

}