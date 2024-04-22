import 'package:flutter/material.dart';
import 'package:roast_track/models/models.dart';
import 'package:roast_track/views/pages/pages.dart';

const String appName = 'Roast Track';
const String keySelectedCompanyId = 'selected_company_id';

User? currentUser;

final GlobalKey<HomePageState> homePageKey = GlobalKey();
