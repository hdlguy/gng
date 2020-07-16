clear;


d1 = load("-ascii","gng_data_out.txt");
Nsamp = length(d1);
Nbins = 40;
span  = 8;
centers = span*(-Nbins/2:Nbins/2-1)/Nbins;

d1 = d1/(2^11); % 5.11 fixed point format.

[dd,xx] = hist(d1, centers);
dd = dd/Nsamp;

[gg,xx] = hist(randn(Nsamp,1), centers);
gg = gg/Nsamp;

stem(xx,dd, 'r*'); 
hold on;
stem(xx,gg, 'b');

% compute theoretical distribution.
function retval = cdf (x, mu, sigma)
  retval = (1/2)*(1+erf((x-mu)/(sigma*sqrt(2))));
endfunction
mu=0; 
sigma=1.0; 
x=centers; 
f = cdf(centers+(span/Nbins)/2, mu, sigma) - cdf(centers-(span/Nbins)/2, mu, sigma);

plot(xx,f,'m');



