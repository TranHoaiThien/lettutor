import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// Forgot Password?
  ///
  /// In en, this message translates to:
  /// **'Say hello to your'**
  String get helloTutor;

  /// English tutors
  ///
  /// In en, this message translates to:
  /// **'English tutors'**
  String get englishTutor;

  /// Become fluent faster through one on one video chat lessons tailored to your goals.
  ///
  /// In en, this message translates to:
  /// **'Become fluent faster through one on one video chat lessons tailored to your goals.'**
  String get becomeFluent;

  /// Please input your Email!
  ///
  /// In en, this message translates to:
  /// **'Please input your Email!'**
  String get inputMail;

  /// The input is not valid Email!
  ///
  /// In en, this message translates to:
  /// **'The input is not valid Email!'**
  String get validEmail;

  /// Password
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Please input your Password!
  ///
  /// In en, this message translates to:
  /// **'Please input your Password!'**
  String get inputPassword;

  /// Enter min. 7 characters!
  ///
  /// In en, this message translates to:
  /// **'Enter min. 7 characters!'**
  String get validPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// Log in
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login;

  /// Or continue with
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orContinue;

  /// Not a member yet?
  ///
  /// In en, this message translates to:
  /// **'Not a member yet?'**
  String get notAMember;

  /// Sign up
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// Start learning with
  ///
  /// In en, this message translates to:
  /// **'Start learning with'**
  String get startLearning;

  /// Already have an account?
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// Home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Course
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get course;

  /// Account
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// You have no upcoming lesson.
  ///
  /// In en, this message translates to:
  /// **'You have no upcoming lesson.'**
  String get noUpcomingLesson;

  /// Welcome to LetTutor!
  ///
  /// In en, this message translates to:
  /// **'Welcome to LetTutor!'**
  String get welcomeTo;

  /// Find a Tutor
  ///
  /// In en, this message translates to:
  /// **'Find a Tutor'**
  String get findATutor;

  /// Enter tutor name
  ///
  /// In en, this message translates to:
  /// **'Enter tutor name'**
  String get enterTutorName;

  /// Select tutor nation
  ///
  /// In en, this message translates to:
  /// **'Select tutor nation'**
  String get selectTutorNation;

  /// Select available tutoring time:
  ///
  /// In en, this message translates to:
  /// **'Select available tutoring time:'**
  String get selectAvailableTime;

  /// Select a day
  ///
  /// In en, this message translates to:
  /// **'Select a day'**
  String get selectADay;

  /// Reset filter
  ///
  /// In en, this message translates to:
  /// **'Reset filter'**
  String get resetFilter;

  /// recommendedTutor
  ///
  /// In en, this message translates to:
  /// **'Recommended Tutors'**
  String get recommendedTutor;

  /// seeFavoriteTutor
  ///
  /// In en, this message translates to:
  /// **'See your favorite tutors'**
  String get seeFavoriteTutor;

  /// book
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// favorites
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// report
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// review
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// languages
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// specialities
  ///
  /// In en, this message translates to:
  /// **'Specialities'**
  String get specialities;

  /// interest
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get interest;

  /// teachingExperience
  ///
  /// In en, this message translates to:
  /// **'Teaching experience'**
  String get teachingExperience;

  /// Discover Courses
  ///
  /// In en, this message translates to:
  /// **'Discover Courses'**
  String get discoverCourse;

  /// liveTutorHasBuilt
  ///
  /// In en, this message translates to:
  /// **'LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.'**
  String get liveTutorHasBuilt;

  /// selectLevel
  ///
  /// In en, this message translates to:
  /// **'Select level'**
  String get selectLevel;

  /// selectCategory
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get selectCategory;

  /// sortLevel
  ///
  /// In en, this message translates to:
  /// **'Sort by level'**
  String get sortLevel;

  /// overview
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// whyTakeCourse
  ///
  /// In en, this message translates to:
  /// **'Why take this course'**
  String get whyTakeCourse;

  /// whatWillAbleDo
  ///
  /// In en, this message translates to:
  /// **'What will you be able to do'**
  String get whatWillAbleDo;

  /// experienceLevel
  ///
  /// In en, this message translates to:
  /// **'Experience Level'**
  String get experienceLevel;

  /// courseLength
  ///
  /// In en, this message translates to:
  /// **'Course Length'**
  String get courseLength;

  /// topics
  ///
  /// In en, this message translates to:
  /// **'topics'**
  String get topics;

  /// listTopic
  ///
  /// In en, this message translates to:
  /// **'List Topics'**
  String get listTopic;

  /// editProfile
  ///
  /// In en, this message translates to:
  /// **'Edit your profile'**
  String get editProfile;

  /// history
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// becomeATutor
  ///
  /// In en, this message translates to:
  /// **'Become a tutor'**
  String get becomeATutor;

  /// settings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// logOut
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// name
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// emailAddress
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// country
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// phoneNumber
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// birthDay
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthDay;

  /// myLevel
  ///
  /// In en, this message translates to:
  /// **'My Level'**
  String get myLevel;

  /// wantToLearn
  ///
  /// In en, this message translates to:
  /// **'Want to learn'**
  String get wantToLearn;

  /// studySchedule
  ///
  /// In en, this message translates to:
  /// **'Study Schedule'**
  String get studySchedule;

  /// save
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// noteTheTime
  ///
  /// In en, this message translates to:
  /// **'Note the time of the week you want to study on lettutor'**
  String get noteTheTime;

  /// completeProfile
  ///
  /// In en, this message translates to:
  /// **'Complete Profile'**
  String get completeProfile;

  /// videoIntroduction
  ///
  /// In en, this message translates to:
  /// **'Video introduction'**
  String get videoIntroduction;

  /// approval
  ///
  /// In en, this message translates to:
  /// **'Approval'**
  String get approval;

  /// setUpTutorProfile
  ///
  /// In en, this message translates to:
  /// **'Set up your tutor profile'**
  String get setUpTutorProfile;

  /// yourTutorProfile
  ///
  /// In en, this message translates to:
  /// **'Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'**
  String get yourTutorProfile;

  /// newStudentMay
  ///
  /// In en, this message translates to:
  /// **'New students may browse tutor profiles to find a tutor that fits their learning goals and personality. Returning students may use the tutor profiles to find tutors they\'ve had great experiences with already.'**
  String get newStudentMay;

  /// basicInfo
  ///
  /// In en, this message translates to:
  /// **'Basic info'**
  String get basicInfo;

  /// plsUpProPhoto
  ///
  /// In en, this message translates to:
  /// **'Please upload a professional photo. See guidelines'**
  String get plsUpProPhoto;

  /// tutoringName
  ///
  /// In en, this message translates to:
  /// **'Tutoring name'**
  String get tutoringName;

  /// imFrom
  ///
  /// In en, this message translates to:
  /// **'I\'m from'**
  String get imFrom;

  /// dob
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dob;

  /// studentWillView
  ///
  /// In en, this message translates to:
  /// **'Students will view this information on your profile to decide if you\'re a good fit for them.'**
  String get studentWillView;

  /// inOrderToProtect
  ///
  /// In en, this message translates to:
  /// **'In order to protect your privacy, please do not share your personal information (email, phone number, social email, skype, etc) in your profile.'**
  String get inOrderToProtect;

  /// hintInterests
  ///
  /// In en, this message translates to:
  /// **'Interests, hobbies, memorable life experiences, or anything else you\'d like to share!'**
  String get hintInterests;

  /// education
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// hintEducation
  ///
  /// In en, this message translates to:
  /// **'Example: \'Bachelor of Arts in English from Cambly University; Certified yoga instructor, Second Language Acquisition and Teaching  (SLAT) certificate from Cambly University\''**
  String get hintEducation;

  /// Experience
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// currentPrevProfession
  ///
  /// In en, this message translates to:
  /// **'Current or Previous Profession'**
  String get currentPrevProfession;

  /// languesISpeak
  ///
  /// In en, this message translates to:
  /// **'Languages I speak'**
  String get languesISpeak;

  /// hintLanguages
  ///
  /// In en, this message translates to:
  /// **'Example: English, Vietnamese, Chinese, Korean'**
  String get hintLanguages;

  /// whoITeach
  ///
  /// In en, this message translates to:
  /// **'Who I teach'**
  String get whoITeach;

  /// firstThingStudentLook
  ///
  /// In en, this message translates to:
  /// **'This is the first thing students will see when looking for tutors.'**
  String get firstThingStudentLook;

  /// introduction
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// hintIntroduction
  ///
  /// In en, this message translates to:
  /// **'Example: \'I was a doctor for 35 years and can help you practice business or medical English. I also enjoy teaching beginners as I am very patient and always speak slowly and clearly. \''**
  String get hintIntroduction;

  /// bestAtTeachingWho
  ///
  /// In en, this message translates to:
  /// **'I am best at teaching students who are'**
  String get bestAtTeachingWho;

  /// beginner
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get beginner;

  /// intermediate
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get intermediate;

  /// advanced
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advanced;

  /// mySpecialties
  ///
  /// In en, this message translates to:
  /// **'My specialties are'**
  String get mySpecialties;

  /// introduceYourself
  ///
  /// In en, this message translates to:
  /// **'Introduce yourself'**
  String get introduceYourself;

  /// letStudentKnowWhat
  ///
  /// In en, this message translates to:
  /// **'Let students know what they can expect from a lesson with you by recording a video highlighting your teaching style, expertise and personality. Students can be nervous to speak with a foreigner, so it really helps to have a friendly video that introduces yourself and invites students to call you.'**
  String get letStudentKnowWhat;

  /// introductionVideo
  ///
  /// In en, this message translates to:
  /// **'Introduction video'**
  String get introductionVideo;

  /// aFewHelpfulTips
  ///
  /// In en, this message translates to:
  /// **'A few helpful tips:'**
  String get aFewHelpfulTips;

  /// No description provided for @firstTips.
  ///
  /// In en, this message translates to:
  /// **'Find a clean and quiet space'**
  String get firstTips;

  /// No description provided for @secondTips.
  ///
  /// In en, this message translates to:
  /// **'Smile and look at the camera'**
  String get secondTips;

  /// No description provided for @thirdTips.
  ///
  /// In en, this message translates to:
  /// **'Dress smart'**
  String get thirdTips;

  /// No description provided for @fourthTips.
  ///
  /// In en, this message translates to:
  /// **'Speak for 1-3 minutes'**
  String get fourthTips;

  /// noteVideoIntroduction
  ///
  /// In en, this message translates to:
  /// **'Note: We only support uploading video file that is less than 64 MB in size.'**
  String get noteVideoIntroduction;

  /// chooseVideo
  ///
  /// In en, this message translates to:
  /// **'Choose video'**
  String get chooseVideo;

  /// haveDoneAllTheStep
  ///
  /// In en, this message translates to:
  /// **'You have done all the steps'**
  String get haveDoneAllTheStep;

  /// plsWaitForApprove
  ///
  /// In en, this message translates to:
  /// **'Please, wait for the operator\'s approval'**
  String get plsWaitForApprove;

  /// resetPass
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPass;

  /// plsEnterEmail
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address to search for your account.'**
  String get plsEnterEmail;

  /// sendResetLink
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get sendResetLink;

  /// othersReview
  ///
  /// In en, this message translates to:
  /// **'Others review'**
  String get othersReview;

  /// bookingDetail
  ///
  /// In en, this message translates to:
  /// **'Booking details'**
  String get bookingDetail;

  /// bookingTime
  ///
  /// In en, this message translates to:
  /// **'Booking Time'**
  String get bookingTime;

  /// balance
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// price
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// haveNumLessonLeft
  ///
  /// In en, this message translates to:
  /// **'You have {num} lesson left'**
  String haveNumLessonLeft(int num);

  /// priceLesson
  ///
  /// In en, this message translates to:
  /// **'{num} lesson'**
  String priceLesson(int num);

  /// cancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
