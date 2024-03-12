set term pdfcairo
set size ratio -1
set key off
set xrange [0.717:9.753]
set yrange [-0.5:5.5]
set style line 1 lw 1.5 lt 1 pt 7 ps 0.5
$points << EOD
1.47 5
2.22 3.68
2.6 1.38
3.35 0.53
4.5 0.1
4.86 0.17
5.52 2
6 2.96
7.5 3.68
9 3.92
EOD
plot sample [1.47:2.22] (0 * sinh(0.02 * (2.22 - x)) + -14.1192 * sinh(0.02 * (x - 1.47))) / 6.00023e-06 + 5 * (2.22 - x) / 0.75 + 35301.6 * (x - 1.47) / 0.75 ls 1, \
[2.22:2.6] (-14.1192 * sinh(0.02 * (2.6 - x)) + 16.1928 * sinh(0.02 * (x - 2.22))) / 3.04003e-06 + 35301.6 * (2.6 - x) / 0.38 + -40480.5 * (x - 2.22) / 0.38 ls 1, \
[2.6:3.35] (16.1928 * sinh(0.02 * (3.35 - x)) + -2.28563 * sinh(0.02 * (x - 2.6))) / 6.00023e-06 + -40480.5 * (3.35 - x) / 0.75 + 5714.61 * (x - 2.6) / 0.75 ls 1, \
[3.35:4.5] (-2.28563 * sinh(0.02 * (4.5 - x)) + 0.954351 * sinh(0.02 * (x - 3.35))) / 9.20081e-06 + 5714.61 * (4.5 - x) / 1.15 + -2385.78 * (x - 3.35) / 1.15 ls 1, \
[4.5:4.86] (0.954351 * sinh(0.02 * (4.86 - x)) + 8.76783 * sinh(0.02 * (x - 4.5))) / 2.88002e-06 + -2385.78 * (4.86 - x) / 0.36 + -21919.4 * (x - 4.5) / 0.36 ls 1, \
[4.86:5.52] (8.76783 * sinh(0.02 * (5.52 - x)) + -4.18203 * sinh(0.02 * (x - 4.86))) / 5.28015e-06 + -21919.4 * (5.52 - x) / 0.66 + 10457.1 * (x - 4.86) / 0.66 ls 1, \
[5.52:6] (-4.18203 * sinh(0.02 * (6 - x)) + -1.85018 * sinh(0.02 * (x - 5.52))) / 3.84006e-06 + 10457.1 * (6 - x) / 0.48 + 4628.42 * (x - 5.52) / 0.48 ls 1, \
[6:7.5] (-1.85018 * sinh(0.02 * (7.5 - x)) + 0.142506 * sinh(0.02 * (x - 6))) / 1.20018e-05 + 4628.42 * (7.5 - x) / 1.5 + -352.585 * (x - 6) / 1.5 ls 1, \
[7.5:9] (0.142506 * sinh(0.02 * (9 - x)) + 0 * sinh(0.02 * (x - 7.5))) / 1.20018e-05 + -352.585 * (9 - x) / 1.5 + 3.92 * (x - 7.5) / 1.5 ls 1, \
$points with points ls 1