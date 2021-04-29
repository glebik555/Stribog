clear;
close all;

figure(1)
ideal = load('valueInteger8.txt');
yi = ideal(:,2); 
M8 = mean(yi,'all');
disp(M8);

ideal = load('valueInteger12.txt');
yi = ideal(:,2); 
M12 = mean(yi,'all');
disp(M12);

ideal = load('value16.txt');
yi = ideal(:,2); 
M16 = mean(yi,'all');
disp(M16);

ideal = load('value20.txt');
yi = ideal(:,2); 
M20 = mean(yi,'all');
disp(M20);

y = [M8,M12,M16,M20];
x = [8,12,16,20];
plot(x,y);
ylabel('Количество шагов');
xlabel('Количество битов для сравнения');
title('Второй прообраз');

figure(2)

ideal = load('Second8.txt');
M8 = ideal(:,1); 


ideal = load('Second12.txt');
M12 = ideal(:,1); 


ideal = load('Second16.txt');
M16 = ideal(:,1); 


ideal = load('Second20.txt');
M20 = ideal(:,1); 


ideal = load('Second24.txt');
M24 = ideal(:,1); 


y = [M8,M12,M16,M20,M24];
x = [8,12,16,20,24];
plot(x,y);
ylabel('Количество шагов');
xlabel('Количество битов для сравнения');
title('Коллизия');




