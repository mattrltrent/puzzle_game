class MyData {
static int s1;
static int s2;
static int s3;
static int s4;
static int s5;
static int s6;
static int s7;
static int s8;
static int s9;
static int s10;
static int s11;
static int s12;
static int s13;
static int s14;
static int s15;
static int s16;

static int errorSquare;

static int currentLvl;

static int totalLevels = 4;

static void shuffle(lvlID) {
  print('Shuffle');
  switch (lvlID) {
    case 1: {
      currentLvl = 1;
      s1 = 1;
      s2 = 2;
      s3 = 3;
      s4 = 4;
      s5 = 8;
      s6 = 6;
      s7 = 7;
      s8 = 8;
      s9 = 9;
      s10 = 10;
      s11 = 11;
      s12 = 12;
      s13 = 13;
      s14 = 14;
      s15 = 15;
      s16 = 16;
      errorSquare = 5;
    }
    break;
    case 2: {
      currentLvl = 2;
      s1 = 1;
      s2 = 2;
      s3 = 3;
      s4 = 4;
      s5 = 5;
      s6 = 6;
      s7 = 7;
      s8 = 8;
      s9 = 9;
      s10 = 10;
      s11 = 11;
      s12 = 12;
      s13 = 13;
      s14 = 14;
      s15 = 15;
      s16 = 17;
      errorSquare = 16;
    }
    break;
    case 3: {
      currentLvl = 3;
      s1 = 2;
      s2 = 4;
      s3 = 6;
      s4 = 8;
      s5 = 10;
      s6 = 12;
      s7 = 14;
      s8 = 16;
      s9 = 18;
      s10 = 24;
      s11 = 22;
      s12 = 24;
      s13 = 26;
      s14 = 28;
      s15 = 30;
      s16 = 32;
      errorSquare = 10;
    }
    break;
    case 4: {
      currentLvl = 4;
      s1 = 5;
      s2 = 10;
      s3 = 15;
      s4 = 20;
      s5 = 25;
      s6 = 31;
      s7 = 35;
      s8 = 40;
      s9 = 45;
      s10 = 50;
      s11 = 55;
      s12 = 60;
      s13 = 65;
      s14 = 70;
      s15 = 75;
      s16 = 100;
      errorSquare = 6;
    }
    break;
  }
}

}


// HOW TO ADD NEW LEVEL:

// ADD ANOTHER FULL ROW (3 at a time) to homes_creen

// ADD NEW LEVEL IN DATA CHANGING ALL THE PARAMETERS VISIBLE IN THE PREVIOUS LEVELS (ITS PRETTY CLEAR)