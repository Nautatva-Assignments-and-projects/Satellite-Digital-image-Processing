i=1;
for ii=1:3 % Number of Rows
for jj=1:3 % Number of Columns
data1= b(ii,jj);% Extract element from iith row and jjth column for array1
data2= b(ii,jj);% Extract element from iith row and jjth column for array2
a1(i,1) = data1-b_mean;% Difference with mean and store as vector elements for band1
a2(i,1) = data2-b_mean;% Difference with mean and store as vector elements for band2
i=i+1;
end
end
multip = a1.*a2;
D = sum(multip);
cov_ab = D/(numel(a1)-1) ;