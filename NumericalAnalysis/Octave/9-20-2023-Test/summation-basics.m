% clear screen
clc, clear

total = 0, a = 2
for t = 1:5
    ans = (5 * t) + (12 * sin(6 * t));
    disp(['For t = ', num2str(t), ', ans = ', num2str(ans)]);
    total = total + ans
end

