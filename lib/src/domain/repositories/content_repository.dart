import '../../core/resources/data_state.dart';
import '../entities/event.dart';

abstract class ContentRepository {
  
    Future<DataState<List<Event>>> event();

}