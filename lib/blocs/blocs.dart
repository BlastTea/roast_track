import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:roast_track/models/models.dart';
import 'package:roast_track/services/services.dart';
import 'package:roast_track/utils/utils.dart';
import 'package:roast_track/views/pages/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_bloc/authentication_bloc.dart';
part 'authentication_bloc/authentication_event.dart';
part 'authentication_bloc/authentication_state.dart';

part 'order_bloc/order_bloc.dart';
part 'order_bloc/order_event.dart';
part 'order_bloc/order_state.dart';

part 'company_bloc/company_bloc.dart';
part 'company_bloc/company_event.dart';
part 'company_bloc/company_state.dart';

part 'roasting_bloc/roasting_bloc.dart';
part 'roasting_bloc/roasting_event.dart';
part 'roasting_bloc/roasting_state.dart';
