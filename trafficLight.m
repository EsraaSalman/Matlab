%body_rect1
rec1_x=[4 6 6 4 4];
rec1_y=[4 4 10 10 4];
plot(rec1_x,rec1_y);
fill(rec1_x,rec1_y,'k');

hold on 

%body_rect2
rec2_x=[4.5 5.5 5.5 4.5 4.5];
rec2_y=[4 4 0 0 4];
plot(rec2_x,rec2_y);
fill(rec2_x,rec2_y,'k');

%circles common
xCenter = 5;
radius = 0.8;
theta = 0 : 0.01 : 2*pi;
x = radius * cos(theta) + xCenter;

%cir1
yCenter1 = 9;
y1 = radius * sin(theta) + yCenter1;
plot(x, y1);
fill(x,y1,[0.6350 0.0780 0.1840]);
%cir2
yCenter2 = 7;
y2 = radius * sin(theta) + yCenter2;
plot(x, y2);
fill(x,y2,[0.8 0.6940 0.1250]);
%cir3
yCenter3 = 5;
y3 = radius * sin(theta) + yCenter3;
plot(x, y3);
fill(x,y3,[0.4 0.5 0.1880]);

xlim([-1,11]);
ylim([-1,11]);

axis square;
grid on;
axis equal;

while true
    %read
    fill(x,y1,'r');
    fill(x,y2,[0.8 0.6940 0.1250]);
    fill(x,y3,[0.4 0.5 0.1880]);
    
    pause(10);
    %yellow
    fill(x,y1,[0.6350 0.0780 0.1840]);
    fill(x,y2,'y');
    fill(x,y3,[0.4 0.5 0.1880]);
    
    pause(10);
    %green
    fill(x,y1,[0.6350 0.0780 0.1840]);
    fill(x,y2,[0.8 0.6940 0.1250]);
    fill(x,y3,'g');
    
    pause(10);
end
