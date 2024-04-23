import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:roast_track/main.dart';
import 'package:roast_track/models/models.dart';
import 'package:roast_track/services/services.dart';
import 'package:roast_track/utils/utils.dart';
import 'package:roast_track/views/fragments/fragments.dart';
import 'package:roast_track/views/pages/pages.dart';
import 'package:roast_track/views/widgets/widgets.dart';

part 'authentication_bloc/authentication_bloc.dart';
part 'authentication_bloc/authentication_event.dart';
part 'authentication_bloc/authentication_state.dart';

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
