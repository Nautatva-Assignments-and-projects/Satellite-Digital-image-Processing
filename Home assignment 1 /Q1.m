meansum = zeros([1 4]);
mean = zeros([1 4]);
median = zeros([1 4]);
mode = zeros([1 4]);
variance = zeros([1 4]);
stdDev = zeros([1 4]);
currentNumberCount = 0;
modeCount = 0;

    
for j=1:4
    
    % mean and mode:
    sortdata = sort(HAImage(:,j));
    length1 = length(HAImage(:,j));
    currentNumber = sortdata(1);
    mode(j) = sortdata(1);

    for i=1:length1
        meansum(j) = meansum(j)+HAImage(i,j);
        
        %%%%%%%%%%%%%% mode %%%%%%%%%%%%%%
        if (sortdata(i) == currentNumber) 
            currentNumberCount = currentNumberCount + 1;
        elseif(currentNumberCount > modeCount)
            modeCount = currentNumberCount;
            mode(j) = currentNumber;
            currentNumber = sortdata(i+1);
            currentNumberCount = 1;
        end %end for mode if
    end  %end for length1 loop
    
    mean(j) = meansum(j)/length1;   %mean of jth row 
    
    %%%%%%%%%%%%%% median %%%%%%%%%%%%%% 
    middle = length1/2;
    if (rem(length1,2) == 1) 
        median(j) = sortdata(middle);    
    else 
        median(j) = (sortdata(middle) + sortdata(middle+1)) / 2.0;
    end     %median of jth column
end %end for jth loop




%%%%%%%%%%%%%%variance covariance matrix%%%%%%%%%%%%%%
 temp = 0; 
 var_cov = zeros([4 4]);
 for i = 1:4
     for j = 1:i
         for k=1:length1
             temp = temp + (HAImage(k,i)-mean(i))*(HAImage(k,j)-mean(j));
         end
         var_cov(i,j) = temp/(length1-1);
         temp = 0;
         var_cov(j,i) = var_cov(i,j);
     end
     variance(i) = var_cov(i,i);
     stdDev(i) = sqrt(variance(i));
 end

clear i j k temp;
clear length1 meansum variancesum;
clear currentNumber currentNumberCount modeCount;
clear sortdata;
clear middle;