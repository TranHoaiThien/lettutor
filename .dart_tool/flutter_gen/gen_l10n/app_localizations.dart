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

  /// No description provided for @helloTutor.
  ///
  /// In en, this message translates to:
  /// **'Say hello to your'**
  String get helloTutor;

  /// No description provided for @englishTutor.
  ///
  /// In en, this message translates to:
  /// **'English tutors'**
  String get englishTutor;

  /// No description provided for @becomeFluent.
  ///
  /// In en, this message translates to:
  /// **'Become fluent faster through one on one video chat lessons tailored to your goals.'**
  String get becomeFluent;

  /// No description provided for @inputMail.
  ///
  /// In en, this message translates to:
  /// **'Please input your Email!'**
  String get inputMail;

  /// No description provided for @validEmail.
  ///
  /// In en, this message translates to:
  /// **'The input is not valid Email!'**
  String get validEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @inputPassword.
  ///
  /// In en, this message translates to:
  /// **'Please input your Password!'**
  String get inputPassword;

  /// No description provided for @validPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter min. 6 characters!'**
  String get validPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login;

  /// No description provided for @orContinue.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orContinue;

  /// No description provided for @notAMember.
  ///
  /// In en, this message translates to:
  /// **'Not a member yet?'**
  String get notAMember;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @startLearning.
  ///
  /// In en, this message translates to:
  /// **'Start learning with'**
  String get startLearning;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get course;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @noUpcomingLesson.
  ///
  /// In en, this message translates to:
  /// **'You have no upcoming lesson.'**
  String get noUpcomingLesson;

  /// No description provided for @welcomeTo.
  ///
  /// In en, this message translates to:
  /// **'Welcome to LetTutor!'**
  String get welcomeTo;

  /// No description provided for @findATutor.
  ///
  /// In en, this message translates to:
  /// **'Find a Tutor'**
  String get findATutor;

  /// No description provided for @enterTutorName.
  ///
  /// In en, this message translates to:
  /// **'Enter tutor name'**
  String get enterTutorName;

  /// No description provided for @selectTutorNation.
  ///
  /// In en, this message translates to:
  /// **'Select tutor nation'**
  String get selectTutorNation;

  /// No description provided for @selectAvailableTime.
  ///
  /// In en, this message translates to:
  /// **'Select available tutoring time:'**
  String get selectAvailableTime;

  /// No description provided for @selectADay.
  ///
  /// In en, this message translates to:
  /// **'Select a day'**
  String get selectADay;

  /// No description provided for @resetFilter.
  ///
  /// In en, this message translates to:
  /// **'Reset filter'**
  String get resetFilter;

  /// No description provided for @recommendedTutor.
  ///
  /// In en, this message translates to:
  /// **'Recommended Tutors'**
  String get recommendedTutor;

  /// No description provided for @seeFavoriteTutor.
  ///
  /// In en, this message translates to:
  /// **'See your favorite tutors'**
  String get seeFavoriteTutor;

  /// No description provided for @book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @specialities.
  ///
  /// In en, this message translates to:
  /// **'Specialities'**
  String get specialities;

  /// No description provided for @interest.
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get interest;

  /// No description provided for @teachingExperience.
  ///
  /// In en, this message translates to:
  /// **'Teaching experience'**
  String get teachingExperience;

  /// No description provided for @discoverCourse.
  ///
  /// In en, this message translates to:
  /// **'Discover Courses'**
  String get discoverCourse;

  /// No description provided for @liveTutorHasBuilt.
  ///
  /// In en, this message translates to:
  /// **'LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.'**
  String get liveTutorHasBuilt;

  /// No description provided for @selectLevel.
  ///
  /// In en, this message translates to:
  /// **'Select level'**
  String get selectLevel;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get selectCategory;

  /// No description provided for @sortLevel.
  ///
  /// In en, this message translates to:
  /// **'Sort by level'**
  String get sortLevel;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @whyTakeCourse.
  ///
  /// In en, this message translates to:
  /// **'Why take this course'**
  String get whyTakeCourse;

  /// No description provided for @whatWillAbleDo.
  ///
  /// In en, this message translates to:
  /// **'What will you be able to do'**
  String get whatWillAbleDo;

  /// No description provided for @experienceLevel.
  ///
  /// In en, this message translates to:
  /// **'Experience Level'**
  String get experienceLevel;

  /// No description provided for @courseLength.
  ///
  /// In en, this message translates to:
  /// **'Course Length'**
  String get courseLength;

  /// No description provided for @topics.
  ///
  /// In en, this message translates to:
  /// **'topics'**
  String get topics;

  /// No description provided for @listTopic.
  ///
  /// In en, this message translates to:
  /// **'List Topics'**
  String get listTopic;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit your profile'**
  String get editProfile;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @becomeATutor.
  ///
  /// In en, this message translates to:
  /// **'Become a tutor'**
  String get becomeATutor;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @birthDay.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthDay;

  /// No description provided for @myLevel.
  ///
  /// In en, this message translates to:
  /// **'My Level'**
  String get myLevel;

  /// No description provided for @wantToLearn.
  ///
  /// In en, this message translates to:
  /// **'Want to learn'**
  String get wantToLearn;

  /// No description provided for @studySchedule.
  ///
  /// In en, this message translates to:
  /// **'Study Schedule'**
  String get studySchedule;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @noteTheTime.
  ///
  /// In en, this message translates to:
  /// **'Note the time of the week you want to study on lettutor'**
  String get noteTheTime;

  /// No description provided for @completeProfile.
  ///
  /// In en, this message translates to:
  /// **'Complete Profile'**
  String get completeProfile;

  /// No description provided for @videoIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Video introduction'**
  String get videoIntroduction;

  /// No description provided for @approval.
  ///
  /// In en, this message translates to:
  /// **'Approval'**
  String get approval;

  /// No description provided for @setUpTutorProfile.
  ///
  /// In en, this message translates to:
  /// **'Set up your tutor profile'**
  String get setUpTutorProfile;

  /// No description provided for @yourTutorProfile.
  ///
  /// In en, this message translates to:
  /// **'Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'**
  String get yourTutorProfile;

  /// No description provided for @newStudentMay.
  ///
  /// In en, this message translates to:
  /// **'New students may browse tutor profiles to find a tutor that fits their learning goals and personality. Returning students may use the tutor profiles to find tutors they\'ve had great experiences with already.'**
  String get newStudentMay;

  /// No description provided for @basicInfo.
  ///
  /// In en, this message translates to:
  /// **'Basic info'**
  String get basicInfo;

  /// No description provided for @plsUpProPhoto.
  ///
  /// In en, this message translates to:
  /// **'Please upload a professional photo. See guidelines'**
  String get plsUpProPhoto;

  /// No description provided for @tutoringName.
  ///
  /// In en, this message translates to:
  /// **'Tutoring name'**
  String get tutoringName;

  /// No description provided for @imFrom.
  ///
  /// In en, this message translates to:
  /// **'I\'m from'**
  String get imFrom;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dob;

  /// No description provided for @studentWillView.
  ///
  /// In en, this message translates to:
  /// **'Students will view this information on your profile to decide if you\'re a good fit for them.'**
  String get studentWillView;

  /// No description provided for @inOrderToProtect.
  ///
  /// In en, this message translates to:
  /// **'In order to protect your privacy, please do not share your personal information (email, phone number, social email, skype, etc) in your profile.'**
  String get inOrderToProtect;

  /// No description provided for @hintInterests.
  ///
  /// In en, this message translates to:
  /// **'Interests, hobbies, memorable life experiences, or anything else you\'d like to share!'**
  String get hintInterests;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @hintEducation.
  ///
  /// In en, this message translates to:
  /// **'Example: \'Bachelor of Arts in English from Cambly University; Certified yoga instructor, Second Language Acquisition and Teaching  (SLAT) certificate from Cambly University\''**
  String get hintEducation;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @currentPrevProfession.
  ///
  /// In en, this message translates to:
  /// **'Current or Previous Profession'**
  String get currentPrevProfession;

  /// No description provided for @languesISpeak.
  ///
  /// In en, this message translates to:
  /// **'Languages I speak'**
  String get languesISpeak;

  /// No description provided for @hintLanguages.
  ///
  /// In en, this message translates to:
  /// **'Example: English, Vietnamese, Chinese, Korean'**
  String get hintLanguages;

  /// No description provided for @whoITeach.
  ///
  /// In en, this message translates to:
  /// **'Who I teach'**
  String get whoITeach;

  /// No description provided for @firstThingStudentLook.
  ///
  /// In en, this message translates to:
  /// **'This is the first thing students will see when looking for tutors.'**
  String get firstThingStudentLook;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// No description provided for @hintIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Example: \'I was a doctor for 35 years and can help you practice business or medical English. I also enjoy teaching beginners as I am very patient and always speak slowly and clearly. \''**
  String get hintIntroduction;

  /// No description provided for @bestAtTeachingWho.
  ///
  /// In en, this message translates to:
  /// **'I am best at teaching students who are'**
  String get bestAtTeachingWho;

  /// No description provided for @beginner.
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get beginner;

  /// No description provided for @intermediate.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get intermediate;

  /// No description provided for @advanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advanced;

  /// No description provided for @mySpecialties.
  ///
  /// In en, this message translates to:
  /// **'My specialties are'**
  String get mySpecialties;

  /// No description provided for @introduceYourself.
  ///
  /// In en, this message translates to:
  /// **'Introduce yourself'**
  String get introduceYourself;

  /// No description provided for @letStudentKnowWhat.
  ///
  /// In en, this message translates to:
  /// **'Let students know what they can expect from a lesson with you by recording a video highlighting your teaching style, expertise and personality. Students can be nervous to speak with a foreigner, so it really helps to have a friendly video that introduces yourself and invites students to call you.'**
  String get letStudentKnowWhat;

  /// No description provided for @introductionVideo.
  ///
  /// In en, this message translates to:
  /// **'Introduction video'**
  String get introductionVideo;

  /// No description provided for @aFewHelpfulTips.
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

  /// No description provided for @noteVideoIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Note: We only support uploading video file that is less than 64 MB in size.'**
  String get noteVideoIntroduction;

  /// No description provided for @chooseVideo.
  ///
  /// In en, this message translates to:
  /// **'Choose video'**
  String get chooseVideo;

  /// No description provided for @haveDoneAllTheStep.
  ///
  /// In en, this message translates to:
  /// **'You have done all the steps'**
  String get haveDoneAllTheStep;

  /// No description provided for @plsWaitForApprove.
  ///
  /// In en, this message translates to:
  /// **'Please, wait for the operator\'s approval'**
  String get plsWaitForApprove;

  /// No description provided for @resetPass.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPass;

  /// No description provided for @plsEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address to search for your account.'**
  String get plsEnterEmail;

  /// No description provided for @sendResetLink.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get sendResetLink;

  /// No description provided for @othersReview.
  ///
  /// In en, this message translates to:
  /// **'Others review'**
  String get othersReview;

  /// No description provided for @bookingDetail.
  ///
  /// In en, this message translates to:
  /// **'Booking details'**
  String get bookingDetail;

  /// No description provided for @bookingTime.
  ///
  /// In en, this message translates to:
  /// **'Booking Time'**
  String get bookingTime;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @haveNumLessonLeft.
  ///
  /// In en, this message translates to:
  /// **'You have {num} lesson left'**
  String haveNumLessonLeft(int num);

  /// No description provided for @priceLesson.
  ///
  /// In en, this message translates to:
  /// **'{num} lesson'**
  String priceLesson(int num);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @totalTime.
  ///
  /// In en, this message translates to:
  /// **'Total lesson time is'**
  String get totalTime;

  /// No description provided for @selectNationality.
  ///
  /// In en, this message translates to:
  /// **'Select tutor natioanlity'**
  String get selectNationality;

  /// No description provided for @schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get schedule;

  /// No description provided for @hereIsListSession.
  ///
  /// In en, this message translates to:
  /// **'Here is a list of the sessions you have booked'**
  String get hereIsListSession;

  /// No description provided for @youCanTrack.
  ///
  /// In en, this message translates to:
  /// **'You can track when the meeting starts, join the meeting with oneclick or can cancel the meeting before 2 hours'**
  String get youCanTrack;

  /// No description provided for @chatWithBot.
  ///
  /// In en, this message translates to:
  /// **'Chat with chatGPT'**
  String get chatWithBot;

  /// No description provided for @theFollowingListLesson.
  ///
  /// In en, this message translates to:
  /// **'The following is a list of lessons you have attended'**
  String get theFollowingListLesson;

  /// No description provided for @youCanReview.
  ///
  /// In en, this message translates to:
  /// **'You can review the details of the lessons you have attended'**
  String get youCanReview;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @upcomingLesson.
  ///
  /// In en, this message translates to:
  /// **'Upcoming lesson'**
  String get upcomingLesson;

  /// No description provided for @classStarted.
  ///
  /// In en, this message translates to:
  /// **'Class has started'**
  String get classStarted;

  /// No description provided for @startIn.
  ///
  /// In en, this message translates to:
  /// **'start in'**
  String get startIn;
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
