clear;
Nbins = 400;

d1 = load("-ascii","gng_data_out.txt");
d1 = d1/(2^11);

d2 = load("-ascii","gng_data2_out.txt");
d2 = d2/(2^11);

figure(1);
hist(d1, Nbins);

figure(2);
hist(d2, Nbins);