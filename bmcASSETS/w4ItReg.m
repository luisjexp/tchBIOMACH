X = load('carbig.mat');
X = struct2table(X);
X.Properties.VariableNames
%%
X = X(:, {'MPG', 'Weight', 'Cylinders', 'Horsepower', 'Acceleration', 'Displacement'});
X = X(:, {'MPG', 'Weight',  'Acceleration'});

drop = logical(sum(ismissing(X),2));

X(drop,:) = [];
corrplot(X)
lm = fitlm(X, 'MPG ~ Weight + Acceleration');


%%

mpgMinMax = [min(X.MPG), max(X.MPG)];
b0      = nanmean(X.MPG) + 2*nanstd(X.MPG); % min(X.MPG) + range(X.MPG).*rand;
b_lbs   = 1000;
b_acc   = 20;
N = height(X);

learnRate = 10;
getError = @(pred, true) sum((pred-true).^2);


close all;
F = figure;
ax = subplot(2,1,1);
scatter(X.Weight, X.MPG);  hold on;
pltPoint = plot(X.Weight(1), b0, 'r*');

ylim([min(X.MPG), max(X.MPG)]);
xlim([min(X.Weight), max(X.Weight)])


b0_gradient = b0;

for i = 1:N
    
%    input = X.Weight(i);    
    MPG_pred = b0_gradient ;
    MPG_true = X.MPG(i);
           
    e = (MPG_pred-MPG_true).^2;

    b0_gradient = (-2/N)*e;
    b0_gradient = b0_gradient - (learnRate * e);

    
    pltPoint.XData = 
    plot(X.Weight, MPG_pred); hold on;
    scatter(X.Weight(i), MPG_true); 
    ylim([min(X.MPG), max(X.MPG)]);
    xlim([min(X.Weight), max(X.Weight)])
    hold off;
    
    pause;
    cla;
    
end
    
    
