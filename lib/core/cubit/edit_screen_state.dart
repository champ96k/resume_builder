part of 'edit_screen_cubit.dart';

abstract class EditscreenState extends Equatable {}

class EditscreenInitial extends EditscreenState {
  @override
  List<Object?> get props => ['EditscreenInitial'];
}

class SelectedStreamState extends EditscreenState {
  final Stream<String>? stream;

  SelectedStreamState(this.stream);
  @override
  List<Object?> get props => [stream];
}
