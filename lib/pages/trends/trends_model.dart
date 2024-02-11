import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/main_logo/main_logo_widget.dart';
import 'trends_widget.dart' show TrendsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrendsModel extends FlutterFlowModel<TrendsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for main_Logo component.
  late MainLogoModel mainLogoModel;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourAge widget.
  FocusNode? yourAgeFocusNode;
  TextEditingController? yourAgeController;
  String? Function(BuildContext, String?)? yourAgeControllerValidator;
  // State field(s) for ailments widget.
  FocusNode? ailmentsFocusNode1;
  TextEditingController? ailmentsController1;
  String? Function(BuildContext, String?)? ailmentsController1Validator;
  // State field(s) for ailments widget.
  FocusNode? ailmentsFocusNode2;
  TextEditingController? ailmentsController2;
  String? Function(BuildContext, String?)? ailmentsController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainLogoModel.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    yourAgeFocusNode?.dispose();
    yourAgeController?.dispose();

    ailmentsFocusNode1?.dispose();
    ailmentsController1?.dispose();

    ailmentsFocusNode2?.dispose();
    ailmentsController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
