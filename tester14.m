function quality_matrix = tester3(strenght,ff)
quality_matrix = [];
for miss = 0:2
    for avoid = 0:5
        for crit = 0:4
            for max = 0:14-(miss+avoid+crit)
                for dmg = 0:14-(miss+avoid+crit+max)
                    for str = 0:14-(miss+avoid+crit+max+dmg)
                        for hit = 0:14-(miss+avoid+crit+max+dmg+str)
                            if miss+avoid+crit+max+dmg+str+hit == 14 && hit
                                quality_matrix = [quality_matrix ; miss,avoid,crit,max,dmg,str,hit,Basic_Hitter(strenght,miss, crit, avoid, dmg, max, hit, str, ff);];
                            end
                        end
                        if miss+avoid+crit+max+dmg+str == 14 && str
                            quality_matrix = [quality_matrix;miss,avoid,crit,max,dmg,str,0,Basic_Hitter(strenght,miss, crit, avoid, dmg, max, 0, str, ff);];
                        end
                    end
                    if miss+avoid+crit+max+dmg == 14 && dmg
                        quality_matrix = [quality_matrix;miss,avoid,crit,max,dmg,0,0,Basic_Hitter(strenght,miss, crit, avoid, dmg, max, 0, 0, ff);];
                    end
                end
                if miss+avoid+crit+max == 14 && max
                    quality_matrix = [quality_matrix;miss,avoid,crit,max,0,0,0,Basic_Hitter(strenght,miss, crit, avoid, 0, max, 0, 0, ff);];
                end
            end
        end
    end
end
quality_matrix =sortrows(quality_matrix, 8);
end