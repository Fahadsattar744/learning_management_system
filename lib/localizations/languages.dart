// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

abstract class Languages {
  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get LOGIN;

  String get SIGNUP;

  String get INCASEOFCHANGE;

  String get PASSWORD;

  String get ID;

  String get SAVEID;

  String get FORGOTID;

  String get BESTLECURE;

  String get EDUCATIONAPPLICATION;

  String get MOREVIEW;

  String get SEEMORECOURSES;

  String get ABOUTUS;

  String get SUPPORT;

  String get COMMUNITY;

  String get MYPAGE;

  String get CURRICULUM;

  String get COURSEINTRODUCTION;

  String get REFERENCEROOM;

  String get COURSESTAKEN;

  String get PERSONALDATAROOM;

  String get MESSAGE;

  String get NOTICE;

  String get LEARNINGRESOURCES;

  String get MAIN;

  String get EDUCATIONSTATUS;

  String get ISSUANCEOFCERTIFICATEOFCOMPLETION;

  String get EDITMEMBERINFORMATION;

  String get REGISTERED;

  String get ASSORTMENT;

  String get COURSEPERIOD;

  String get NUMBEROFSTUDENTS;

  String get INSTRUCTORNAME;

  String get RECEIVEDMESSAGE;

  String get SENTMESSAGE;

  String get Sender;

  String get RECIPIENT;

  String get PLEASEFILLOUT;

  String get PLEASEENTERYOURCONTENT;

  String get SEND;

  String get NAME;

  String get CATEGORY;

  String get TITLE;

  String get PLEASEENTERATLEAST10CHARACTERS;

  String get ATTACHMENTS;

  String get PLEASESELECTACATEGORY;

  String get COMPANY;

  String get APPLICATION;

  String get THEREISNOPROCESSINPROGRESS;

  String get TRAINING;

  String get THEREISNOTRAININGCOURSE;

  String get CERTIFICATIONCOURSE;

  String get NOTICES;

  String get Checkout;

  String get PYTHONBUSINESSDATAANALYSISANDSTATISTICSFORPROBLEM;

  String get TERMSOFUSE;

  String get PRIVACYPOLICY;

  String get REJECTIONOFUNAUTHORIZEDEMAILCOLLECTION;

  String get COMPLETED;

  String get REGISTEREDCOURSE;

  String get ISSUANCEOFCERTIFICATE;

  String get ENGLISHNAME;

  String get PHONENUMBER;

  String get GENDER;

  String get DATEOFBIRTH;

  String get EDIT;

  String get MYMEMBERINFORMATIONBIRTH;

  String get COUNTRY;

  String get BYLMS;

  String get CHECKBOX1;

  String get CHECKBOX2;

  String get OPTIONALINPUT;

  String get Address;

  String get FORMOFBUSUNESSORGANIZATION;

  String get DIVISION;

  String get DEPARTMENT;

  String get JOBTITLE;

  String get CAREER;

  String get ACADEMICDEGREE;

  String get JOBCATEGORY;

  String get EDITMEMBERS;

  String get Withdraw;

  String get PLEASEENTERYOURPASSWORDAGAIN;

  String get SEARCH;
}
