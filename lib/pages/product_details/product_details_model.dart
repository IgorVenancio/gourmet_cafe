import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for modifiers widget.
  FormFieldController<List<String>>? modifiersValueController;
  List<String>? get modifiersValues => modifiersValueController?.value;
  set modifiersValues(List<String>? v) => modifiersValueController?.value = v;

  // State field(s) for modifiers_2 widget.
  FormFieldController<List<String>>? modifiers2ValueController;
  List<String>? get modifiers2Values => modifiers2ValueController?.value;
  set modifiers2Values(List<String>? v) => modifiers2ValueController?.value = v;

  // State field(s) for modifiers_3 widget.
  FormFieldController<List<String>>? modifiers3ValueController;
  List<String>? get modifiers3Values => modifiers3ValueController?.value;
  set modifiers3Values(List<String>? v) => modifiers3ValueController?.value = v;

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItemDetailRecord? iteminCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
