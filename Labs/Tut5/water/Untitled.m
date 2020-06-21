figure
scatter3(b5water(:),b4water(:),b3water(:),'b');
hold on
scatter3(B5_veg(:),B4_veg(:),B3_veg(:),'g');
hold on
scatter3(b5buildings(:),b4buildings(:),b3buildings(:),'r');
title('Scatter Plot between Band5, Band4, Band3') % Figure Title
xlabel('Band 5'); % Label for X-axis
ylabel('Band 4'); % Label for Y-axis
zlabel('Band 3'); % Label for Y-axis
legend('Water','Vegetation','Buildings') % Defining Legend

figure
scatter3(b7water(:),b6water(:),b4water(:),'b');
hold on
scatter3(B7_veg(:),B6_veg(:),B4_veg(:),'g');
hold on
scatter3(b7buildings(:),b6buildings(:),b4buildings(:),'r');
title('Scatter Plot between Band7, Band6, Band4') % Figure Title
xlabel('Band 7'); % Label for X-axis
ylabel('Band 6'); % Label for Y-axis
zlabel('Band 4'); % Label for Y-axis
legend('Water','Vegetation','Buildings') % Defining Legend

figure
scatter3(b4water(:),b3water(:),b2water(:),'b');
hold on
scatter3(B4_veg(:),B3_veg(:),B2_veg(:),'g');
hold on
scatter3(b4buildings(:),b3buildings(:),b2buildings(:),'r');
title('Scatter Plot between Band4, Band3, Band2') % Figure Title
xlabel('Band 4'); % Label for X-axis
ylabel('Band 3'); % Label for Y-axis
zlabel('Band 2'); % Label for Y-axis
legend('Water','Vegetation','Buildings') % Defining Legend