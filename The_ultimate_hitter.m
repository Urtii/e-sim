function damage = The_ultimate_hitter(str, crit, avoid, dmg, max, hit, strinc, ff, hospital, Defanse_System, rank_bonus, weapon_quality, MU_lwl, Location, Surrounded)
dmg = 1 + (dmg/100);
max = 1 + (max/100);
str = str + strinc;
if Location == 1
    Location_Bonus = 1.2;
elseif Location == 0
    Location_Bonus = 1;
end
if Surrounded == 1
    Surrounded_Debuff = 1.2;
elseif Location == 0
    Surrounded_Debuff = 1;
end
number_of_hit = 0;
MU_bonus = MU_lwl * 0.05;
if weapon_quality > 0
    weapon_bonus = 1 + weapon_quality * 0.2;
else
    weapon_bonus = 0.5;
end
while ff > 0
    number_of_hit = number_of_hit+1;
    if rand(1)*100 <= avoid
        ff = ff+1;
    end
    if rand(1)*100 <= hospital*5
        ff = ff+1;
    end
    ff = ff-1;
end
hit_matrix = (str*(0.8)+(rand(1,number_of_hit)*(((max*(1.2))-0.8)*str)));
crit_matrix = rand(1,number_of_hit);
for counter = 1 : number_of_hit
    if crit_matrix(1,counter) <= crit/100
        crit_matrix(1,counter) = 2;
    else
        crit_matrix(1,counter) = 1;
    end
end

damage = ((((hit_matrix .* crit_matrix)*dmg*rank_bonus*(1+(Defanse_System/20))*Location_bonus*Surrounded_Debuff) + hit)*5*weapon_bonus*MU_bonus);
end

