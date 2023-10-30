import 'package:get/get.dart';

import '../../sathya/add_calendar/add_calendar.dart';
import '../../sathya/booking_tickets/booking_tickets.dart';
import '../../sathya/editing_event/editing_event.dart';
import '../../sathya/editing_event/event_screen.dart';
import '../../sathya/event_dashboard/even_dashboard.dart';
import '../../sathya/event_dashboard/even_dashboard.dart';
import '../../sathya/my_events_screen/my_events.dart';
import '../../sathya/rsvp_screen.dart';
import '../../sathya/schedule_screen/schedule_screen.dart';
import '../../sathya/sponsorship/sponsorship_screen.dart';
import '../extra/forsecond.dart';
import '../modules/create_event/bindings/create_event_binding.dart';
import '../modules/create_event/views/create_event_view.dart';
import '../modules/event_details/bindings/event_details_binding.dart';
import '../modules/event_details/views/components/SignUpItemWidget.dart';
import '../modules/event_details/views/event_details_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/otp_verification/bindings/otp_verification_binding.dart';
import '../modules/otp_verification/views/otp_verification_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION,
      page: () => OtpVerificationView(),
      binding: OtpVerificationBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_EVENT,
      page: () => const CreateEventView(),
      binding: CreateEventBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_DETAILS,
      page: () => const EventDetailsView(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SponsorshipScreen,
      page: () => SponsorshipScreen(boots: false,),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BootsScreen,
      page: () => SponsorshipScreen(boots: true,),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ScheduleScreen,
      page: () => ScheduleScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EditingEvent,
      page: () => EditingEvent(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EventScreen,
      page: () => EventScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SignUpItemWidget,
      page: () => SignUpItemWidget(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.NameAndDetailsCardWidget,
      page: () => SignUpItemWidget(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BookTickets,
      page: () => BookTickets(controller: null,),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EventDashboardScreen,
      page: () => EventDashboardScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.RsvpScreen,
      page: () => RsvpScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MyEvents,
      page: () => MyEvents(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ChartPage,
      page: () => ChartPage(),
      binding: EventDetailsBinding(),
    ),
  ];
}
