function damage = Trial_Hitter(str,miss, crit, avoid, dmg, max, hit, strinc, ff)
strinc = strinc*50;
hit = hit*110;
miss = 12.5 - (miss*8.25);
if miss < 0
    miss = 0;
end
crit = 12.5 + (crit*7);
avoid = 5 + (avoid*7);
dmg = 1 + ((7*dmg)/100);
max = 1 + ((14*max)/100);
str = str + strinc;
number_of_hit = 0;
while ff > 0
    number_of_hit = number_of_hit+1;
    if rand(1)*100 < avoid
        ff = ff+1;
    end
    if rand(1)*100 < miss
        number_of_hit = number_of_hit-1;
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

damage = ((((hit_matrix .* crit_matrix)*dmg) + hit)*5);
damage = sum(damage);
end

