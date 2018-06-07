%% Background Model

function [m, s] = backgroundModel(X, idx, n)
% Rolling mean
m= mean( X(idx-n:idx, :) );

% Rolling std
s= std( X(idx-n:idx, :) );
s(find(s==0))=1;


end