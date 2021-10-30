fs = 14400;
X = csvread('sub1.csv');
roll = X(:, 2);
m = length(roll);       % original sample length
n = pow2(nextpow2(m));  % transform length
y = fft(roll,n);        % DFT of signal
f = (0:n-1)*(fs/n)/10;
power = abs(y).^2/n;      
figure(1);
plot(f(1:floor(n/2)),power(1:floor(n/2)));
xlabel('Frequency');
ylabel('Power');
sound(f(1:n));
