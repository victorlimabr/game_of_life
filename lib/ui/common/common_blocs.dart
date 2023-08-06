import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditableItemBloc extends Cubit<bool> {
  EditableItemBloc() : super(false);

  void edit() => emit(true);

  void finish() => emit(false);
}


extension CommonBlocs on BuildContext {
  EditableItemBloc get editBloc => read<EditableItemBloc>();

}