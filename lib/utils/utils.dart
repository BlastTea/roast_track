import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:roast_track/models/models.dart';
import 'package:roast_track/views/pages/pages.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

part 'functions.dart';

const String appName = 'Roast Track';
const String keySelectedCompanyId = 'selected_company_id';

User? currentUser;

final GlobalKey<HomePageState> homePageKey = GlobalKey();
