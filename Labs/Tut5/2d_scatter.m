% prompt1 = 'Enter class 1 data:-'; % Defining String for user INPUT
% class1 = input(prompt1); % Input for Class 1 Data
% prompt2 = 'Enter class 2 data:-';% Defining String for user INPUT
% class2 = input(prompt2); % Input for Class 2 Data
% prompt3 = 'Enter class 3 data:-';% Defining String for user INPUT
% class3 = input(prompt3); % Input for Class 3 Data
fig=figure % Defining Figure handler fig
scatter(class1(:,1),class1(:,2),'r'); % Scatter Plot for Class 1
hold on
scatter(class2(:,1),class2(:,2),'g'); % Scatter Plot for Class 2
hold on
2
scatter(class3(:,1),class3(:,2),'b'); % Scatter Plot for Class 3
title('Scatter Plot between Band 1 and Band 2 for 3 classes') % Figure
Title
xlabel('Band 1'); % Label for X-axis
ylabel('Band 2'); % Label for Y-axis
legend('class1','class2','class3') % Defining Legend
print(fig,'-djpeg','-r300','Scatter'); % Saving figure in JPEG format at 300 dpi