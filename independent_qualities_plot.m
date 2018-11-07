function quality_plot = independent_qualities_plot(strenght,ff)
number = [1:9];
miss = [];
avoid = [];
crit =[];
max = [];
dmg = [];
str = [];
hit= [];
for missx = 1:9
    miss = [miss,((Theoritical_Hitter(strenght,missx,0,0,0,0,0,0, ff)/Theoritical_Hitter(strenght,missx-1,0,0,0,0,0,0, ff))*100)-100];
end
for avoidx = 1:9
    avoid = [avoid,((Theoritical_Hitter(strenght,0,0,avoidx,0,0,0,0, ff)/Theoritical_Hitter(strenght,0,0,avoidx-1,0,0,0,0, ff))*100)-100];
end
for critx = 1:9
    crit = [crit,((Theoritical_Hitter(strenght,0,critx,0,0,0,0,0, ff)/Theoritical_Hitter(strenght,0,critx-1,0,0,0,0,0, ff))*100)-100];
end
for maxx = 1:9
    max = [max,((Theoritical_Hitter(strenght,0,0,0,maxx,0,0,0, ff)/Theoritical_Hitter(strenght,0,0,0,maxx-1,0,0,0, ff))*100)-100];
end
for dmgx = 1:9
    dmg = [dmg,((Theoritical_Hitter(strenght,0,0,0,0,dmgx,0,0, ff)/Theoritical_Hitter(strenght,0,0,0,0,dmgx-1,0,0, ff))*100)-100];
end
for hitx = 1:9
    hit = [hit,((Theoritical_Hitter(strenght,0,0,0,0,0,hitx,0, ff)/Theoritical_Hitter(strenght,0,0,0,0,0,hitx-1,0, ff))*100)-100];
end
for strx = 1:9
    str = [str,((Theoritical_Hitter(strenght,0,0,0,0,0,0,strx, ff)/Theoritical_Hitter(strenght,0,0,0,0,0,0,strx-1, ff))*100)-100];
end

plot(number,miss)
axis([1 9 4 12])
grid on
grid minor
hold on
plot(number,avoid)
plot(number,crit)
plot(number,max)
plot(number,dmg)
plot(number,hit)
plot(number,str)
legend("miss","avoid","crit","dmg","max","hit","str")
for i = 1:9
    text(i,miss(i),num2str(miss(i)))
end
for i = 1:9
    text(i,crit(i),num2str(crit(i)))
end
for i = 1:9
    text(i,avoid(i),num2str(avoid(i)))
end
for i = 1:9
    text(i,max(i),num2str(max(i)))
end
for i = 1:9
    text(i,dmg(i),num2str(dmg(i)))
end
%for i = 1:9
%    text(i,hit(i),num2str(hit(i)))
%end
%for i = 1:9
%    text(i,str(i),num2str(str(i)))
%end
hold off
end