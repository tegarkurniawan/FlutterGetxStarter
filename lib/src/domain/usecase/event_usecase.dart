

import '../../core/resources/data_state.dart';
import '../../core/usecase/usecase.dart';
import '../entities/event.dart';
import '../repositories/content_repository.dart';

class EventUseCase implements UseCase<DataState<List<Event>>, String> {
  final ContentRepository contentRepository;

  EventUseCase(this.contentRepository);

  @override
  Future<DataState<List<Event>>> call({String? params}) {
    return contentRepository.event();
  }
}