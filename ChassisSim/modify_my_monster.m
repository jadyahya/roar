function [modified_monster] = modify_my_monster(filename,z1lapfilename)
%tms_2022_10_27-15_44_04_2_monster.txt
%tms_2022_10_27-15_44_04_2_z1lap.csv
t = readtable(filename, 'ReadVariableNames', false);
A = table2array(t);
[rownum,colnum]=size(A);
distance = A(:,1); 
file2 = readtable(z1lapfilename, 'ReadVariableNames', false);
time = table2array(file2(:,1));

freq = 1;
slope =[];
for i = 1:1:length(distance)-1

    if distance(i) == distance(i+1)
        freq = freq+1;
    else 
        if freq > 1
            time_range = [time(i-freq+1,1) time(i+1,1)];
            for j = 1:1:colnum
                slope(j) = (A(i+1,j)-A(i-freq+1,j))/(time(i+1,1)-time(i-freq+1,1));
                for k = i-freq+1:1:i+1 
                    modified_monster(k,j) = slope(j)*(time(k,1)-time(i-freq+1,1))+A(i-freq+1,j);
                end
            end
        else 
            for j = 1:1:colnum
                modified_monster(i,j) =A(i,j);
            end
        end
        freq = 1;
    end
        

end

csvwrite('Modified_Monster_interpolate.txt',modified_monster)
end