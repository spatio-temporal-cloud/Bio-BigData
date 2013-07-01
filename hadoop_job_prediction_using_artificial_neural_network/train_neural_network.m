%function [ output_args ] = Untitled1( input_args )
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
color = [1 0 0; 0 1 0; 0 0 1; 0.5 0.8 0.9];
[tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9] = textread('train_data.m', '%f%f%f%f%f%f%f%f%f',60);
tr=[tr1, tr2,tr3,tr4,tr5,tr6, tr7,tr8]';
ta=tr9';
[input, minI,maxI,target,minT,maxT] = premnmx(tr,ta);
net= newff(minmax(input),[12 1], {'logsig' 'purelin'}, 'traingdx');
net.trainparam.epochs=5000;
net.trainparam.goal=0.01;
net.trainparam.lr = 0.01;
net = train(net,input,target);
[te1, te2,  te3, te4, te5, te6, te7, te8, te9] = textread('test_data.m', '%f%f%f%f%f%f%f%f%f', 85);
te = [te1,te2,te3, te4, te5, te6, te7, te8]';
teO=te9';
teIn=tramnmx(te,minI,maxI);
siO=sim(net,teIn);
siOp=postmnmx(siO,minT,maxT);
sub = abs(teO - siOp);
error_sample = sub./teO;
error_with = [ 0.081771 0.0006193 0.19544 0.021014 0.035134 0.012426 0.28515 0.023515 0.029255 0.021679 0.063353 0.064943 0.01211 0.46376 0.22691 0.29543 0.54978 0.095755 0.61901 0.37541 1.5119 0.29566 0.39644 0.94338 0.3171 0.35684 0.40368 0.26563 1.3008 0.24864 0.45779 0.0036738 0.17904 0.20607 0.13384 0.57766 0.27179 0.23669 0.41733 0.60891 0.083631 0.39272 1.6906 0.24555 0.086424 0.0050022 0.066499 0.0092556 0.25352 0.2349 0.11943 0.22573 0.090459 0.088619 0.99917 0.11215 0.16263 0.15252 0.62272 0.073157 0.27522 0.28142 0.015771 0.22761 0.072714 0.073357  0.24133 0.16091 0.11487 0.070874 0.44682 0.072881 0.086161 0.60993 0.38082 0.53491 1.7103 0.28101 0.5237 0.055432 0.26488 0.073475 0.61004 0.18783 0.67179 ];
diff = error_sample;
impact = 0.0;
for i = 1 : 85;
    impact = impact +diff(i);
end;
diff;
impact;
impact = impact / 85 







