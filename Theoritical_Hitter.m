function damage = Theoritical_Hitter(str,miss, crit, avoid, dmg, max, hit, strinc, ff)
strinc = strinc*34;
str = str + strinc;
hit = hit*80;
miss = (12.5 - (miss*8.25))/100;
if miss < 0
    miss = 0;
end
crit = ((112.5 +(crit*7))/100);
if crit > 1.4
    crit = 1.4;
end
avoid = (5 + (avoid*7))/100;
if avoid > 0.4
    avoid = 0.4;
end
dmg = 1 + ((7*dmg)/100);
max = 1 + ((14*max)/100);
number_of_hit = (ff*(1-miss))/(1-avoid);
hit_ = ((str*(0.8)+(((max*(1.2))*str)))/2);
damage = (((hit_*dmg) + hit)* 5 * crit * number_of_hit);
end

