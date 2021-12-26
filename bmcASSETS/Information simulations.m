
%% Attick 1991: Efficiency of Information Transfer

% What is the relationship between...
%   the probability of the wth message P(w)
%   the information value of the wth message I(w)
%   the average of the message set H(M)

mu = 10;
w = mu-4:.01:mu+4; % set of messages
Pw = pdf('norm', w , mu, 1); % probability of occurance of the ith message (lets say its normal)
Iw = -log2(Pw); % information/surpise/unexpectedness of the ith message
H = sum(Pw.*Iw); % average information in message set

clf
subplot(2,1,1);
plt = plotyy(w, Pw,w, Iw); hold on;
plot(plt(1), w, (Pw.*Iw), 'r.');
axis tight

%%
% How does the structure of the message set affect the average information
% content H(M). Here I compute H(M) for different probability distributions
% of the message set P(w). On one end, a distribution is skewed, and on the
% other becomes much more normal, then perhaps uniform. How to model this
% change? Perhaps a log transform???


numSpks = 10^6;
spk_dRate = 1; %maybe in spikes per scan (spks/15ms)
b0 = 10; %spont rate
k = 0;
clf;

lambda = linspace(-2,2, 9);
lambda(lambda == 0) = [];

for i = lambda
    k = k+1;    
    subplot(3,3,k)

    r =poissrnd(spk_dRate,numSpks,1)  ;
    r = ( (r.^i) - 1) / i;
    H = histogram(r, 'Normalization','pdf');
%     rBinned = H.BinEdges(1:end-1) + diff(H.BinEdges) / 2; % get binned response magnitudes
%     Pr = H.Values; % get probability of response magnitudes
%     delete(H)
%     plot(rBinned,Pr, '.-')

    title(sprintf( 'Skew %.03f', skewness(r) ))
    drawnow;
    
end

    figure(gcf);

%%

Pr = pdf('normal', r, 200, 100); % start with skewed probability distribution of each message 
plot(r,Pr)


for i = 1:10
    mu = i;
    w = 0:1000; % list of messages
    Pw = pdf('poiss', w, mu); % probability of each message 
    subplot(2,1,2); 
    hold on;
    plot(Pw);
    drawnow;
    
%     Iw = -log2(Pw); % information/surpise/unexpectedness of each message
%     H = sum(Pw.*Iw); % average information per message
    
end



