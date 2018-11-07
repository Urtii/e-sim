function damage = quality(str,miss, crit, avoid, dmg, max, hit, strinc, ff, trial)
sum = 0;
for i = 1:trial
    sum = sum + Trial_Hitter(str,miss, crit, avoid, dmg, max, hit, strinc, ff);
end
damage = sum / trial;
end