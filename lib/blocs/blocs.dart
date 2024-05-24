import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:roast_track/models/models.dart';
import 'package:roast_track/services/services.dart';
import 'package:roast_track/utils/utils.dart';
import 'package:roast_track/views/fragments/fragments.dart';
import 'package:roast_track/views/pages/pages.dart';
import 'package:roast_track/views/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_bloc/authentication_bloc.dart';
part 'authentication_bloc/authentication_event.dart';
part 'authentication_bloc/authentication_state.dart';

part 'company_bloc/company_bloc.dart';
part 'company_bloc/company_event.dart';
part 'company_bloc/company_state.dart';

part 'order_bloc/order_bloc.dart';
part 'order_bloc/order_event.dart';
part 'order_bloc/order_state.dart';

part 'roasting_bloc/roasting_bloc.dart';
part 'roasting_bloc/roasting_event.dart';
part 'roasting_bloc/roasting_state.dart';

part 'roasting_result_bloc/roasting_result_bloc.dart';
part 'roasting_result_bloc/roasting_result_event.dart';
part 'roasting_result_bloc/roasting_result_state.dart';

part 'roastery_bloc/roastery_bloc.dart';
part 'roastery_bloc/roastery_event.dart';
part 'roastery_bloc/roastery_state.dart';

part 'home_bloc/home_bloc.dart';
part 'home_bloc/home_event.dart';
part 'home_bloc/home_state.dart';

part 'result_bloc/result_bloc.dart';
part 'result_bloc/result_event.dart';
part 'result_bloc/result_state.dart';

part 'classification_bloc/classification_bloc.dart';
part 'classification_bloc/classification_event.dart';
part 'classification_bloc/classification_state.dart';

part 'profile_bloc/profile_bloc.dart';
part 'profile_bloc/profile_event.dart';
part 'profile_bloc/profile_state.dart';

part 'change_password_bloc/change_password_bloc.dart';
part 'change_password_bloc/change_password_event.dart';
part 'change_password_bloc/change_password_state.dart';
