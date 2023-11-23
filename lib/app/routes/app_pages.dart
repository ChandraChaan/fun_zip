import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:get/get.dart';

import '../extra/extra1.dart';
import '../modules/blogs_screen/blogs_screen.dart';
import '../modules/booking_tickets/booking_tickets.dart';
import '../modules/contact_us/contact_us.dart';
import '../modules/create_event/views/components/SuccessfulEvent.dart';
import '../modules/my_events_screen/my_events.dart';
import '../modules/create_event/bindings/create_event_binding.dart';
import '../modules/create_event/views/create_event_view.dart';
import '../modules/editing_event/editing_event.dart';
import '../modules/editing_event/event_screen.dart';
import '../modules/event_dashboard/even_dashboard.dart';
import '../modules/event_details/bindings/event_details_binding.dart';
import '../modules/event_details/views/components/SignUpItemWidget.dart';
import '../modules/event_details/views/event_details_view.dart';
import '../modules/event_management/event_management_screen.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/my_groups/cerate_group.dart';
import '../modules/my_groups/create_group2.dart';
import '../modules/my_groups/create_group_five.dart';
import '../modules/my_groups/create_group_four.dart';
import '../modules/my_groups/create_groupthree.dart';
import '../modules/my_groups/my_groups.dart';
import '../modules/my_groups/success_screen.dart';
import '../modules/my_profile_screen/my_profile_screen.dart';
import '../modules/my_tickets/my_tickets.dart';
import '../modules/my_profile_screen/organization_screen.dart';
import '../modules/otp_verification/bindings/otp_verification_binding.dart';
import '../modules/otp_verification/views/otp_verification_view.dart';
import '../modules/potluck_menu/potluck_menu.dart';
import '../modules/qr_code/qr_error.dart';
import '../modules/qr_code/qr_successful.dart';
import '../modules/qr_code/scanner.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/rsvp/rsvp_screen.dart';
import '../modules/schedule_screen/schedule_screen.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/sponsorship/sponsorship_screen.dart';
import '../modules/ticket_sale_dettails/ticket_sale_details.dart';
import '../modules/ticketing_andrsvc/ticketing_rsvp.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => CommonScafold(
        navChild: true,
      ),
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
      page: () => CreateEventView(
        isEvent: true,
      ),
      binding: CreateEventBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_DETAILS,
      page: () => const EventDetailsView(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SponsorshipScreen,
      page: () => SponsorshipScreen(
        boots: false,
      ),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BootsScreen,
      page: () => SponsorshipScreen(
        boots: true,
      ),
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
      page: () => BookTickets(
        controller: null,
      ),
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
      page: () => MyEvents(
        isSfald: true,
      ),
      binding: EventDetailsBinding(),
    ),

    GetPage(
      name: _Paths.TicketSaleDetailsScreen,
      page: () => TicketSaleDetailsScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.QrSuccessfulScreen,
      page: () => QrSuccessfulScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.QrErrorScreen,
      page: () => QrErrorScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EventManagementScreen,
      page: () => EventManagementScreen(),
      binding: EventDetailsBinding(),
    ),
    // GetPage(
    //   name: _Paths.ScarlettScreen,
    //   page: () => ScarlettScreen(),
    //   binding: EventDetailsBinding(),
    // ),
    GetPage(
      name: _Paths.QRCodeScannerScreen,
      page: () => QRCodeScannerScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MyProfile,
      page: () => MyProfile(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.OrganizationScreen,
      page: () => OrganizationScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MyGroupsScreen,
      page: () => MyGroupsScreen(),
      binding: EventDetailsBinding(),
    ),

    GetPage(
      name: _Paths.QrSuccessfulScreen,
      page: () => QrSuccessfulScreen(),
      binding: EventDetailsBinding(),
    ),
    // GetPage(
    //   name: _Paths.FunZippy,
    //   page: () => TicketViewPopUp(),
    //   binding: EventDetailsBinding(),
    // ),
    GetPage(
      name: _Paths.MyTickets,
      page: () => MyTickets(isSfald: true,),
     // isTicket: true,
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.PotluckMenu,
      page: () => PotluckMenu(),
      binding: EventDetailsBinding(),
    ),
    // GetPage(
    //   name: _Paths.MyGroups,
    //   page: () => MyGroups(),
    //   binding: EventDetailsBinding(),
    // ),
    GetPage(
      name: _Paths.DetailsScreen,
      page: () => DetailsScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.TicketingAndRSVP,
      page: () => TicketingAndRSVP(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MyGroupsScreen,
      page: () => MyGroupsScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ContactUsScreen,
      page: () => ContactUsScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CreateGroup,
      page: () => CreateGroup(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CreateGroupSecond,
      page: () => CreateGroupSecond(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CreateGroupThree,
      page: () => CreateGroupThree(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CreateGroupFour,
      page: () => CreateGroupFour(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CreateGroupFive,
      page: () => CreateGroupFive(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.GroupSuccessScreen,
      page: () => GroupSuccessScreen(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SuccessfulEventPage,
      page: () => SuccessfulEventPage(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BlogsScreen,
      page: () => BlogsScreen(),
      binding: EventDetailsBinding(),
    ),
  ];
}
