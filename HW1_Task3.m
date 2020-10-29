close all
clear all
clc

x=-pi:0.05:pi;

y1= (exp(x));
y2= ((exp(x)).*(sin(x.^2)));
y3= ((exp(x)).*(cos(x.^2)));


subplot(2,2,1)
plot(x,y1)
legend("y = e^x","location", "north")
title("Plot 1")
xlabel("x")
ylabel("exp(x)")
axis([-pi pi])
xticks([-2,0,2])

subplot(2,2,2)
data=plot(x,y2,";y = e^xsinx^2;",x,y3,";y = e^xcosx^2;")
legend( data,"location", "southwest");
hold on 
axis ([-pi pi -25 25])
title("Plot 2")
xlabel("x")
ylabel("y")

ybounds = ylim()
set(gca, 'ytick', ybounds(1):5:ybounds(2))
xticks([-2,0,2])


print -djpeg grfk2



