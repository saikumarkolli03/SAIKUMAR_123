CSV:

data <-read.csv(file.choose(),header=TRUE)
> 
  > head(data)
gameid       date    type playerid         player team home away MIN PTS FGM FGA  FG. X3PM
1 29600001 1996-11-01 regular      893 Michael Jordan  CHI  BOS  CHI  43  30  10  22 45.5    0
2 29600001 1996-11-01 regular      937 Scottie Pippen  CHI  BOS  CHI  40  18   8  17 47.1    1
3 29600001 1996-11-01 regular      677  Eric Williams  BOS  BOS  CHI  25  14   6  13 46.2    0
4 29600001 1996-11-01 regular      146   Jud Buechler  CHI  BOS  CHI   1   0   0   1  0.0    0
5 29600001 1996-11-01 regular      166     Ron Harper  CHI  BOS  CHI  25   7   3   4 75.0    0
6 29600001 1996-11-01 regular      442 Pervis Ellison  BOS  BOS  CHI  31   7   2   4 50.0    0
X3PA X3P. FTM FTA  FT. OREB DREB REB AST STL BLK TOV PF X... win season
1    5  0.0  10  13 76.9    1    3   4   3   0   0   1  2   11   1   1997
2    3 33.3   1   2 50.0    1    7   8   6   2   0   5  4   28   1   1997
3    0  0.0   2   3 66.7    2    1   3   1   0   0   1  4    1   0   1997
4    1  0.0   0   0  0.0    0    0   0   0   0   0   0  0   -2   1   1997
5    1  0.0   1   2 50.0    1    1   2   5   2   1   0  1   15   1   1997
6    0  0.0   3   5 60.0    4    6  10   0   3   2   3  5   -8   0   1997
> tail(data)
gameid       date    type playerid            player team home away MIN PTS FGM FGA
702382 42200405 2023-06-12 playoff  1629216      Gabe Vincent  MIA  DEN  MIA  22   6   3  13
702383 42200405 2023-06-12 playoff   201145        Jeff Green  DEN  DEN  MIA   5   4   2   2
702384 42200405 2023-06-12 playoff   203999      Nikola Jokic  DEN  DEN  MIA  42  28  12  16
702385 42200405 2023-06-12 playoff   201599    DeAndre Jordan  DEN  DEN  MIA   3   0   0   0
702386 42200405 2023-06-12 playoff   203469       Cody Zeller  MIA  DEN  MIA   1   0   0   1
702387 42200405 2023-06-12 playoff  1629312 Haywood Highsmith  MIA  DEN  MIA   3   0   0   0
FG. X3PM X3PA X3P. FTM FTA FT. OREB DREB REB AST STL BLK TOV PF X... win season
702382  23.1    0    4  0.0   0   0   0    0    0   0   3   1   0   0  2  -14   0   2023
702383 100.0    0    0  0.0   0   0   0    0    0   0   1   0   0   0  2   -5   1   2023
702384  75.0    1    3 33.3   3   5  60    1   15  16   4   0   1   4  3   12   1   2023
702385   0.0    0    0  0.0   0   0   0    0    0   0   0   0   1   0  0   -2   1   2023
702386   0.0    0    0  0.0   0   0   0    1    0   1   0   0   0   0  0   -5   0   2023
702387   0.0    0    0  0.0   0   0   0    0    1   1   0   0   0   0  1    0   0   2023
> library(readxl)
> traditional <- read_excel("C:/Users/kolli/Downloads/traditional.xlsx")

 XL SHEET:
   
   
   head(traditional)
 # A tibble: 6 × 30
 gameid date                type   playerid player team  home  away    MIN   PTS   FGM   FGA
 <dbl> <dttm>              <chr>     <dbl> <chr>  <chr> <chr> <chr> <dbl> <dbl> <dbl> <dbl>
   1 29600001 1996-11-01 00:00:00 regul…      893 Micha… CHI   BOS   CHI      43    30    10    22
 2 29600001 1996-11-01 00:00:00 regul…      937 Scott… CHI   BOS   CHI      40    18     8    17
 3 29600001 1996-11-01 00:00:00 regul…      677 Eric … BOS   BOS   CHI      25    14     6    13
 4 29600001 1996-11-01 00:00:00 regul…      146 Jud B… CHI   BOS   CHI       1     0     0     1
 5 29600001 1996-11-01 00:00:00 regul…      166 Ron H… CHI   BOS   CHI      25     7     3     4
 6 29600001 1996-11-01 00:00:00 regul…      442 Pervi… BOS   BOS   CHI      31     7     2     4
 # ℹ 18 more variables: `FG%` <dbl>, `3PM` <dbl>, `3PA` <dbl>, `3P%` <dbl>, FTM <dbl>,
 #   FTA <dbl>, `FT%` <dbl>, OREB <dbl>, DREB <dbl>, REB <dbl>, AST <dbl>, STL <dbl>,
 #   BLK <dbl>, TOV <dbl>, PF <dbl>, `+/-` <dbl>, win <dbl>, season <dbl>

 
 tail(traditional)
 # A tibble: 6 × 30
 gameid date                type   playerid player team  home  away    MIN   PTS   FGM   FGA
 <dbl> <dttm>              <chr>     <dbl> <chr>  <chr> <chr> <chr> <dbl> <dbl> <dbl> <dbl>
   1 42200405 2023-06-12 00:00:00 playo…  1629216 Gabe … MIA   DEN   MIA      22     6     3    13
 2 42200405 2023-06-12 00:00:00 playo…   201145 Jeff … DEN   DEN   MIA       5     4     2     2
 3 42200405 2023-06-12 00:00:00 playo…   203999 Nikol… DEN   DEN   MIA      42    28    12    16
 4 42200405 2023-06-12 00:00:00 playo…   201599 DeAnd… DEN   DEN   MIA       3     0     0     0
 5 42200405 2023-06-12 00:00:00 playo…   203469 Cody … MIA   DEN   MIA       1     0     0     1
 6 42200405 2023-06-12 00:00:00 playo…  1629312 Haywo… MIA   DEN   MIA       3     0     0     0
 # ℹ 18 more variables: `FG%` <dbl>, `3PM` <dbl>, `3PA` <dbl>, `3P%` <dbl>, FTM <dbl>,
 #   FTA <dbl>, `FT%` <dbl>, OREB <dbl>, DREB <dbl>, REB <dbl>, AST <dbl>, STL <dbl>,
 #   BLK <dbl>, TOV <dbl>, PF <dbl>, `+/-` <dbl>, win <dbl>, season <dbl>