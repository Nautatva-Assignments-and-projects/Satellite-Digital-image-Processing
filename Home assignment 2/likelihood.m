%% Import data from spreadsheet
%% Import the data
[~, ~, raw] = xlsread('HA2.xls','Training data');
raw = raw(3:102,1:17);
raw = raw(:,[1,2,3,5,6,7,10,11,12,15,16,17]);

%% Create output variable
data = reshape([raw{:}],size(raw));
clear raw;

%% Avg found in excel
avg1 = [140.95;102.23;80.23];
avg2 = [103.78;68.23;41.58];
avg3 = [91.92;57.94;57.7];
avg4 = [89.17;54.02;71.87];

%% Populating various datasets
sand = [data(:,1) data(:,2) data(:,3)];
water = [data(:,4) data(:,5) data(:,6)];
urban = [data(:,7) data(:,8) data(:,9)];
veg = [data(:,10) data(:,11) data(:,12)];

%% covariance of each dataset
cov1=cov(sand);
cov2=cov(water);
cov3=cov(urban);
cov4=cov(veg);

%% importing the table - one with unknown data
[~, ~, raw] = xlsread('HA2.xls','Unknown data');
raw = raw(3:end,2:4);
data1 = reshape([raw{:}],size(raw));
clearvars raw;

%% processing data
new1 = [data1(:,1) data1(:,2) data1(:,3)];
ln1 = zeros(400,1);
ln2 = zeros(400,1);
ln3 = zeros(400,1);
ln4 = zeros(400,1);
for i=1:400
    ln1(i,1) = 1/6.28^1.5*1/(sum(sum(cov1)))*exp(-0.5*(new1(i,:)-avg1')*inv(cov1)*(new1(i,:)-avg1')');
    ln2(i,1) = 1/6.28^1.5*1/(sum(sum(cov1)))*exp(-0.5*(new1(i,:)-avg2')*inv(cov2)*(new1(i,:)-avg2')');
    ln3(i,1) = 1/6.28^1.5*1/(sum(sum(cov1)))*exp(-0.5*(new1(i,:)-avg3')*inv(cov3)*(new1(i,:)-avg3')');
    ln4(i,1) = 1/6.28^1.5*1/(sum(sum(cov1)))*exp(-0.5*(new1(i,:)-avg4')*inv(cov4)*(new1(i,:)-avg4')');
end
clear i;

%% write to the file 
c = [ln1 ln2 ln3 ln4];
csvwrite('160040007_likelihood_generated.csv',c);