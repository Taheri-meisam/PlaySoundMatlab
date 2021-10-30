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
% 
% Fs = 14400;                                     % Sampling Frequency
% t  = linspace(0, 1, Fs);                        % One Second Time Vector
% w = 2*pi*80;                                  % Radian Value To Create 1kHz Tone
% s = sin(w*t);                                   % Create Tone
% sound(s, Fs);
% figure(2)
% plot(s);
% amp=1;
% fs=1400;  % sampling frequency
% duration=2;
% freq=1200;
% values=0:1/fs:duration;
% a=amp*sin(2*pi* freq*values);
% sound(a);
% figure(3)
% plot(a)
% x2 = 0.2*sin(2*pi*t/300) + 0.1*sin(2*pi*t/100) + 0.3*sin(2*pi*t/45);
% x3 = x2 + 0.1*randn(size(x2));
% sound(x2,44100);
% sound(x3,44100);
%
% audiowrite('aaudio_1.wav',x1,44100)
% audiowrite('aaudio_2.wav',s,44100)
% audiowrite('aaudio_3.wav',x3,44100)
