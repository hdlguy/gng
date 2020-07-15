clear;
Nbins = 100;
centers = 8*(-Nbins/2:Nbins/2-1)/Nbins;

d1 = load("-ascii","gng_data_out.txt");
d1 = d1/(2^11);

[dd,xx] = hist(d1, centers);

[gg,xx] = hist(randn(1000000,1), centers);

stem(xx,dd, 'r*'); 
hold on;
stem(xx,gg, 'b');