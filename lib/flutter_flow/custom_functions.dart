import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double calculateTotalPopulation(List<int> countryPopulations) {
  int totalPopulation =
      countryPopulations.reduce((value, element) => value + element);

  // Check if the total population is greater than or equal to 1 crore
  if (totalPopulation >= 10000000) {
    // Convert total population to crore
    double populationInCrore = totalPopulation / 10000000;
    return double.parse(populationInCrore.toStringAsFixed(2));
  } else {
    // If total population is less than 1 crore, return as is
    return totalPopulation.toDouble();
  }
}

int getListIndex(List<int> index) {
  return index.length;
}

String countryNameEncode(String countryName) {
  return Uri.encodeFull(countryName);
}
