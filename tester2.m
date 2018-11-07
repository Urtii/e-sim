function quality_matrix = tester2(strenght,ff)
quality_matrix = [];
for miss = 0:2
    for avoid = 0:5
        for crit = 0:4
            for max = 0:16-(miss+avoid+crit)
                for dmg = 0:16-(miss+avoid+crit+max)
                    for str = 0:16-(miss+avoid+crit+max+dmg)
                        for hit = 0:16-(miss+avoid+crit+max+dmg+str)
                            if miss+avoid+crit+max+dmg+str+hit == 16 && hit
                                quality_matrix = [quality_matrix ; miss,avoid,crit,max,dmg,str,hit,Theoritical_Hitter(strenght,miss, crit, avoid, dmg, max, hit, str, ff);];
                            end
                        end
                        if miss+avoid+crit+max+dmg+str == 16 && str
                            quality_matrix = [quality_matrix;miss,avoid,crit,max,dmg,str,0,Theoritical_Hitter(strenght,miss, crit, avoid, dmg, max, 0, str, ff);];
                        end
                    end
                    if miss+avoid+crit+max+dmg == 16 && dmg
                        quality_matrix = [quality_matrix;miss,avoid,crit,max,dmg,0,0,Theoritical_Hitter(strenght,miss, crit, avoid, dmg, max, 0, 0, ff);];
                    end
                end
                if miss+avoid+crit+max == 16 && max
                    quality_matrix = [quality_matrix;miss,avoid,crit,max,0,0,0,Theoritical_Hitter(strenght,miss, crit, avoid, 0, max, 0, 0, ff);];
                end
            end
        end
    end
end
quality_matrix =sortrows(quality_matrix, 8);
end