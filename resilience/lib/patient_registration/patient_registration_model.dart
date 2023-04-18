import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PatientRegistrationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for patientname widget.
  TextEditingController? patientnameController;
  String? Function(BuildContext, String?)? patientnameControllerValidator;
  String? _patientnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('[a-zA-Z][a-zA-Z ]+').hasMatch(val)) {
      return 'patient name should start with letter';
    }
    return null;
  }

  // State field(s) for patientemail widget.
  TextEditingController? patientemailController;
  String? Function(BuildContext, String?)? patientemailControllerValidator;
  String? _patientemailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for patient_phonenumber widget.
  TextEditingController? patientPhonenumberController;
  String? Function(BuildContext, String?)?
      patientPhonenumberControllerValidator;
  String? _patientPhonenumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[6-9][0-9]{9}\$').hasMatch(val)) {
      return 'Invalid Number';
    }
    return null;
  }

  // State field(s) for patent_bloodgroup widget.
  TextEditingController? patentBloodgroupController;
  String? Function(BuildContext, String?)? patentBloodgroupControllerValidator;
  String? _patentBloodgroupControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(A|B|AB|O)[+-]\$').hasMatch(val)) {
      return 'Invalid Blood Group';
    }
    return null;
  }

  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientnameControllerValidator = _patientnameControllerValidator;
    patientemailControllerValidator = _patientemailControllerValidator;
    patientPhonenumberControllerValidator =
        _patientPhonenumberControllerValidator;
    patentBloodgroupControllerValidator = _patentBloodgroupControllerValidator;
  }

  void dispose() {
    patientnameController?.dispose();
    patientemailController?.dispose();
    patientPhonenumberController?.dispose();
    patentBloodgroupController?.dispose();
  }

  /// Additional helper methods are added here.

}
