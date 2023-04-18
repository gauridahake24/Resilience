import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('[a-zA-Z][a-zA-Z ]+').hasMatch(val)) {
      return 'name should start with letter';
    }
    return null;
  }

  // State field(s) for number widget.
  TextEditingController? numberController;
  String? Function(BuildContext, String?)? numberControllerValidator;
  String? _numberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[6-9]\\d{9}\$').hasMatch(val)) {
      return 'Invalid Number';
    }
    return null;
  }

  // State field(s) for bloodgroup widget.
  TextEditingController? bloodgroupController;
  String? Function(BuildContext, String?)? bloodgroupControllerValidator;
  String? _bloodgroupControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(A|B|AB|O)[+-]\$').hasMatch(val)) {
      return 'Invalid Bloodgroup. Should be in captial letters ';
    }
    return null;
  }

  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    numberControllerValidator = _numberControllerValidator;
    bloodgroupControllerValidator = _bloodgroupControllerValidator;
  }

  void dispose() {
    nameController?.dispose();
    numberController?.dispose();
    bloodgroupController?.dispose();
  }

  /// Additional helper methods are added here.

}
