function [ output_args ] = Untitled1( input_args )
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
color = [1 0 0; 0 1 0; 0 0 1; 0.5 0.8 0.9];
error = [ 0.081771 0.0006193 0.19544 0.021014 0.035134 0.012426 0.28515 0.023515 0.029255 0.021679 0.063353 0.064943 0.01211 0.46376 0.22691 0.29543 0.54978 0.095755 0.61901 0.37541 1.5119 0.29566 0.39644 0.94338 0.3171 0.35684 0.40368 0.26563 1.3008 0.24864 0.45779 0.0036738 0.17904 0.20607 0.13384 0.57766 0.27179 0.23669 0.41733 0.60891 0.083631 0.39272 1.6906 0.24555 0.086424 0.0050022 0.066499 0.0092556 0.25352 0.2349 0.11943 0.22573 0.090459 0.088619 0.99917 0.11215 0.16263 0.15252 0.62272 0.073157 0.27522 0.28142 0.015771 0.22761 0.072714 0.073357  0.24133 0.16091 0.11487 0.070874 0.44682 0.072881 0.086161 0.60993 0.38082 0.53491 1.7103 0.28101 0.5237 0.055432 0.26488 0.073475 0.61004 0.18783 0.67179 ];
actual =[ 264.93  611.47 495.9 579.63 339.91 111.62 178.66 793.39 287.61 806.6 637.14 636.51 574.11 620.16 551.41 469.61 664.97 110.42 169.15 551.6 201.49 445.68 407.11 151.43 454.42 317.42 489.86 395.12 192.72 342.57 488.11 781.25 355.6 498.56 259.83 430.12 486.35 370.83 486.84 577.41 864.26 227.64 250.35 391.26 611.67 775.88 180.54 267.73 201.26 392.3 66.221 398.75 69.161 676.37 144.46 254.96 402.32 394.8 147.74 757.55 392.57 330.49 870.36 445.4 107.4 682.58 391.48 177.04 86.277 740.53 496.86 842.53 244.93 421.96 316.28 622.5 250.79 447.55 144.64 117.42 562.93 117.87 169.93 411.51 684.61 ];
estimated = [ 243.27 611.85 592.82 567.45 327.96 110.24 127.72 812.05 279.19 824.08 596.78 595.17 567.16 907.77 426.29 608.34 1030.6 99.843 64.446 758.67 -103.14 577.45 568.51 8.574 598.52 204.15 687.61 500.07 -57.971 427.75 711.57 784.12 291.93 395.82 225.06 678.58 354.16 458.61 690.01 929 791.98 138.24 -172.9 487.34 664.53 779.76 168.53 270.2 150.24 484.46 74.129 488.76 75.417 616.43 0.11929 226.36 467.75 455.01 55.739 702.13 500.61 423.5 884.09 546.78 99.593 632.5 485.95 148.55 96.188 688.04 718.87 781.12 266.04 679.32 195.83 955.48 -178.13 573.32 68.892 123.92 413.82 109.21 66.264 488.81 1144.5 ];
sample = [10 20 30 40 50 60 70 80 90 100 110 120 130 140 150];
error_s= [1.3675  0.9059  0.8022 0.9800 1.0169 0.4859 0.3915 0.3684 0.4251  0.3102  0.3233 0.3066 0.2059 0.2017  0.1831];
%x = -pi:pi/10:pi;
%y = tan(sin(x)) - sin(tan(x));
%plot(actual,'color', color(1,:));
%hold on;
%plot(estimated, 'color', color(2,:));
%plot(error, 'color', color(2,:));
plot(sample,error_s, 'color', color(1,:));
set(gca, 'XTick', 10:10:150);
%xlabel('Job Number');
xlabel('Sample Number');
%ylabel('Runtime(in seconds)');
ylabel('Error');