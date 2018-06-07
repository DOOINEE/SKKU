%% Real Time Computing

n=??; % moving avg, std ����
idx = 1;
load ('theta');

%%% environment adjustment
for i=1:n,
    data = serial();
    X= [ X; data];
end



while true,    
    %%% input data
    data = serial ();
    
    %%% data processing
    
    [m, s] = backgroundModel(X,idx,n);
    data = 1 ./ s .* (data - m);
    X= [X; data];
    idx++;
    
    %%% X���� y �и�
    y = X(:,32);
   
    save("-mat","data.mat","X","y"); %% save("��������","�������̸�","�����Һ���");
   
end 

