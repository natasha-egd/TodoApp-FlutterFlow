import '/flutter_flow/flutter_flow_util.dart';
import 'logihn_widget.dart' show LogihnWidget;
import 'package:flutter/material.dart';

class LogihnModel extends FlutterFlowModel<LogihnWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for suem widget.
  FocusNode? suemFocusNode;
  TextEditingController? suemTextController;
  String? Function(BuildContext, String?)? suemTextControllerValidator;
  String? _suemTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for supw widget.
  FocusNode? supwFocusNode;
  TextEditingController? supwTextController;
  late bool supwVisibility;
  String? Function(BuildContext, String?)? supwTextControllerValidator;
  String? _supwTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for sucpw widget.
  FocusNode? sucpwFocusNode;
  TextEditingController? sucpwTextController;
  late bool sucpwVisibility;
  String? Function(BuildContext, String?)? sucpwTextControllerValidator;
  String? _sucpwTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for liem widget.
  FocusNode? liemFocusNode;
  TextEditingController? liemTextController;
  String? Function(BuildContext, String?)? liemTextControllerValidator;
  // State field(s) for lipw widget.
  FocusNode? lipwFocusNode;
  TextEditingController? lipwTextController;
  late bool lipwVisibility;
  String? Function(BuildContext, String?)? lipwTextControllerValidator;

  @override
  void initState(BuildContext context) {
    suemTextControllerValidator = _suemTextControllerValidator;
    supwVisibility = false;
    supwTextControllerValidator = _supwTextControllerValidator;
    sucpwVisibility = false;
    sucpwTextControllerValidator = _sucpwTextControllerValidator;
    lipwVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    suemFocusNode?.dispose();
    suemTextController?.dispose();

    supwFocusNode?.dispose();
    supwTextController?.dispose();

    sucpwFocusNode?.dispose();
    sucpwTextController?.dispose();

    liemFocusNode?.dispose();
    liemTextController?.dispose();

    lipwFocusNode?.dispose();
    lipwTextController?.dispose();
  }
}
