import 'package:get/get.dart';
import 'package:templategetx/src/domain/usecase/event_usecase.dart';

import '../../../core/resources/data_state.dart';
import '../../../core/resources/state_enum.dart';
import '../../../domain/entities/event.dart';

class HomeController extends GetxController {


  Rx<RequestState> _eventState = RequestState.empty.obs;
  Rx<RequestState> get eventState => _eventState;

   String errorEvent = "";

    final EventUseCase eventUseCase;

    List<Event> listEvent = [];

    HomeController({required this.eventUseCase});

    

    @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getEvent();

  }

  Future<void> getEvent() async {
     _eventState(RequestState.loading);
   
    final dataState = await eventUseCase(params: "");

    if (dataState is DataSuccess) {
     
      final result = dataState.data;
      listEvent.clear();
      listEvent.addAll(result!);
      
       _eventState(RequestState.loaded);
       update();
    }
    if (dataState is DataFailed) {
      _eventState(RequestState.error);
      errorEvent = dataState.error!.error.toString();
      update();
    }
  }
}