clear all
close all
clc

i=100;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{16}Healthy');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'1.tif','Resolution',300,'BackgroundColor','White');
close 
figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title('\bf\color{black}\fontsize{14}Healthy');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'3.tif','Resolution',300,'BackgroundColor','White');
close

i=150;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{16}Bronchiolitis');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'5.tif','Resolution',300,'BackgroundColor','White');
close

figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title('\bf\color{black}\fontsize{14}Bronchiolitis')
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'7.tif','Resolution',300,'BackgroundColor','White');
close


i=200;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{16}Bronchiectasis');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'9.tif','Resolution',300,'BackgroundColor','White');
close
figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title('\bf\color{black}\fontsize{14}Bronchiectasis')
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'11.tif','Resolution',300,'BackgroundColor','White');
close


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


i=100;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
[cA1,cD1] = dwt(x,'coif5');
x=cA1;
t=0:1/fs:length(x)/fs-1/fs;
t=t';
filename=sprintf('Segmented Signals/s(%d).wav',i);
[x,fs]=audioread(filename);
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{14}Healthy (After Preprocessing)');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'2.tif','Resolution',300,'BackgroundColor','White');
close
figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title("\bf\color{black}\fontsize{12}Discerte Wavelet Transform (Healthy)");
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'4.tif','Resolution',300,'BackgroundColor','White');
close


i=150;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
[cA1,cD1] = dwt(x,'coif5');
x=cA1;
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{14}Bronchiolitis (After Preprocessing)');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'6.tif','Resolution',300,'BackgroundColor','White');
close
figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title("\bf\color{black}\fontsize{12}Discerte Wavelet Transform (Bronchiolitis)");
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'8.tif','Resolution',300,'BackgroundColor','White');
close


i=200;
filename=sprintf('Segmented Signals/S(%d).wav',i);
[x,fs]=audioread(filename);
[cA1,cD1] = dwt(x,'coif5');
x=cA1;
t=0:1/fs:length(x)/fs-1/fs;
t=t';
figure
plot(t,x,'LineWidth',1.75);
title('\bf\color{black}\fontsize{14}Bronchiectasis (After Preprocessing)');
xlabel('\bf\color{black}\fontsize{11}Time (sec)');
ylabel('\bf\color{black}\fontsize{11}Amplitude');
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'10.tif','Resolution',300,'BackgroundColor','White');
close
figure
X=abs(fft(x));
fr = linspace(0,fs/2,length(x)/2);
plot(fr,X(1:length(x)/2),'LineWidth',0.9); 
xlabel('\color{black}\fontsize{11}Frequency (Hz)');
ylabel('\color{black}\fontsize{11}Amplitude (mv)');
title("\bf\color{black}\fontsize{12}Discerte Wavelet Transform (Bronchiectasis)");
axis tight;
set(gca,'FontSize',12);
exportgraphics(gcf,'12.tif','Resolution',300,'BackgroundColor','White');
close
%%close all