clc;
clear;
y=[11.2 13.4 40.7 5.3 24.8 12.7 20.9 35.7 8.7 9.6 14.5 26.9 15.7 ...
36.2 18.1 28.9 14.9 25.8 21.7 25.7]; 
%犯罪率（人/十万人）
x1=[16.5 20.5 26.3 16.5 19.2 16.5 20.2 21.3 17.2 14.3 18.1 23.1 19.1 ...
24.7 18.6 24.9 17.9 22.4 20.2 16.9]; 
%低收入家庭百分比
x2=[6.2 6.4 9.3 5.3 7.3 5.9 6.4 7.6 4.9 6.4 6.0 7.4 5.8 8.6 6.5 8.3 ...
6.7 8.6 8.4 6.7]; 
%失业率
x3=[587 643 635 692 1248 643 1964 1531 713 749 7895 762 2793 741 ...
625 854 716 921 595 3353];
%总人口数（千人）
figure(1),plot(x1,y,'*'); 
xlabel('低收入家庭百分比'); ylabel('犯罪率');
figure(2),plot(x2,y,'*'); 
xlabel('失业率'); ylabel('犯罪率');
figure(3),plot(x3,y,'*'); 
xlabel('总人口数（千人）'); ylabel('犯罪率');
X1=[x1',x2',x3']; 
stepwise(X1,y)
