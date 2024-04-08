import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'kitmabloc_event.dart';
part 'kitmabloc_state.dart';

class KitmablocBloc extends Bloc<KitmablocEvent, KitmablocState> {
  KitmablocBloc() : super(KitmablocInitial()) {
    on<KitmablocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
