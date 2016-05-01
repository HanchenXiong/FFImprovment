function [] = lines_plot(nb_Lines)
nb_Colors = nb_Lines ;
myMap = rand(nb_Colors, 3);

X = -10:0.1:10;
Y = zeros(nb_Lines, length(X));
F=figure("position", [100, 10, 1000, 400]);

for i = 1:nb_Lines 
      slope = 2*randn() - 1; 
      b = rand()*40; 
      Y(i,:) = slope*X + b;
      subplot(1,2,1)
      plot(X,Y(i,:),'-', 'Linewidth', 2, 'Color',myMap(i,:));
      hold on;
      subplot(1,2,2)
      plot(X,Y(i,:),'-', 'Linewidth', 2, 'Color',myMap(i,:));
      hold on;
end
Y_mean = mean(Y,1);
Y_std  = std(Y,1);
subplot(1,2,2)
plot(X,Y_mean,'-', 'Linewidth', 8, 'Color', 'black'); hold on;
plot(X,Y_mean+Y_std,'--', 'Linewidth', 5, 'Color', 'black'); hold on;
plot(X,Y_mean-Y_std,'--', 'Linewidth', 5, 'Color', 'black'); hold on;

