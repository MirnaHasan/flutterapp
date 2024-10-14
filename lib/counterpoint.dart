

import 'package:flutter/material.dart';

class Counterpoint extends ChangeNotifier {
  int teamAPoints = 0;
  int teamBPoints = 0 ; 
  AddonePointA(){
    teamAPoints++;
    notifyListeners();
  }
  AddtwoPointsA(){
    teamAPoints+=2;
    notifyListeners();
  }
  AddthreePointsA(){
    teamAPoints+=3;
    notifyListeners();
  }
  AddonePointB(){
    teamBPoints++;
    notifyListeners();
  }
  AddtwoPointsB(){
    teamBPoints+=2;
    notifyListeners();
  }
  AddthreePointsB(){
    teamBPoints+=3;
    notifyListeners();
  }
  ResetteamAB(){
    teamAPoints = 0;
    teamBPoints = 0;
    notifyListeners();
  }


}