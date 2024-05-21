load Plotting_Results.mat

%%
Conca_Est_Time_BONN = cat(1,BONN_P0_TotalTime.total_time,BONN_P01_TotalTime.total_time,...
    BONN_P02_TotalTime.total_time,BONN_P03_TotalTime.total_time,BONN_P04_TotalTime.total_time,...
    BONN_P05_TotalTime.total_time,BONN_P06_TotalTime.total_time,BONN_P07_TotalTime.total_time,...
    BONN_P08_TotalTime.total_time,BONN_P09_TotalTime.total_time,BONN_P1_TotalTime.total_time);
Avg_Est_Time_BONN = mean(Conca_Est_Time_BONN,'all');
sprintf('Total estimated time BONN training = %0.5f .\n',Avg_Est_Time_BONN)

Conca_Est_Time_Std_FNN = cat(1,Std_FNN_P0_TotalTime,Std_FNN_P01_TotalTime,...
    Std_FNN_P02_TotalTime,Std_FNN_P03_TotalTime,Std_FNN_P04_TotalTime,...
    Std_FNN_P05_TotalTime,Std_FNN_P06_TotalTime,Std_FNN_P07_TotalTime,...
    Std_FNN_P08_TotalTime,Std_FNN_P09_TotalTime,Std_FNN_P1_TotalTime);
Avg_Est_Time_Std_FNN = mean(Conca_Est_Time_Std_FNN,'all');
sprintf('Total estimated time standardized FNN training = %0.5f .\n',Avg_Est_Time_Std_FNN)

Conca_Est_Time_FNN = cat(1,FNN_P0_TotalTime,FNN_P01_TotalTime,...
    FNN_P02_TotalTime,FNN_P03_TotalTime,FNN_P04_TotalTime,...
    FNN_P05_TotalTime,FNN_P06_TotalTime,FNN_P07_TotalTime,...
    FNN_P08_TotalTime,FNN_P09_TotalTime,FNN_P1_TotalTime);
Avg_Est_Time_FNN = mean(Conca_Est_Time_FNN,'all');
sprintf('Total estimated time non-standardized FNN training = %0.5f .\n',Avg_Est_Time_FNN)

%%
sprintf('BONN RMSE at P0 = %0.5f .\n',BONN_P0_RMSE)
sprintf('BONN RMSE at P0.1 = %0.5f .\n',BONN_P01_RMSE)
sprintf('BONN RMSE at P0.2 = %0.5f .\n',BONN_P02_RMSE)
sprintf('BONN RMSE at P0.3 = %0.5f .\n',BONN_P03_RMSE)
sprintf('BONN RMSE at P0.4 = %0.5f .\n',BONN_P04_RMSE)
sprintf('BONN RMSE at P0.5 = %0.5f .\n',BONN_P05_RMSE)
sprintf('BONN RMSE at P0.6 = %0.5f .\n',BONN_P06_RMSE)
sprintf('BONN RMSE at P0.7 = %0.5f .\n',BONN_P07_RMSE)
sprintf('BONN RMSE at P0.8 = %0.5f .\n',BONN_P08_RMSE)
sprintf('BONN RMSE at P0.9 = %0.5f .\n',BONN_P09_RMSE)
sprintf('BONN RMSE at P1 = %0.5f .\n',BONN_P1_RMSE)

sprintf('non-standardize FNN RMSE at P0 = %0.5f .\n',FNN_P0_RMSE)
sprintf('standardize FNN RMSE at P0 = %0.5f .\n',Std_FNN_P0_RMSE)
sprintf('non-standardize FNN RMSE at P0.1 = %0.5f .\n',FNN_P01_RMSE)
sprintf('standardize FNN RMSE at P0.1 = %0.5f .\n',Std_FNN_P01_RMSE)
sprintf('non-standardize FNN RMSE at P0.2 = %0.5f .\n',FNN_P02_RMSE)
sprintf('standardize FNN RMSE at P0.2 = %0.5f .\n',Std_FNN_P02_RMSE)
sprintf('non-standardize FNN RMSE at P0.3 = %0.5f .\n',FNN_P03_RMSE)
sprintf('standardize FNN RMSE at P0.3 = %0.5f .\n',Std_FNN_P03_RMSE)
sprintf('non-standardize FNN RMSE at P0.4 = %0.5f .\n',FNN_P04_RMSE)
sprintf('standardize FNN RMSE at P0.4 = %0.5f .\n',Std_FNN_P04_RMSE)
sprintf('non-standardize FNN RMSE at P0.5 = %0.5f .\n',FNN_P05_RMSE)
sprintf('standardize FNN RMSE at P0.5 = %0.5f .\n',Std_FNN_P05_RMSE)
sprintf('non-standardize FNN RMSE at P0.6 = %0.5f .\n',FNN_P06_RMSE)
sprintf('standardize FNN RMSE at P0.6 = %0.5f .\n',Std_FNN_P06_RMSE)
sprintf('non-standardize FNN RMSE at P0.7 = %0.5f .\n',FNN_P07_RMSE)
sprintf('standardize FNN RMSE at P0.7 = %0.5f .\n',Std_FNN_P07_RMSE)
sprintf('non-standardize FNN RMSE at P0.8 = %0.5f .\n',FNN_P08_RMSE)
sprintf('standardize FNN RMSE at P0.8 = %0.5f .\n',Std_FNN_P08_RMSE)
sprintf('non-standardize FNN RMSE at P0.9 = %0.5f .\n',FNN_P09_RMSE)
sprintf('standardize FNN RMSE at P0.9 = %0.5f .\n',Std_FNN_P09_RMSE)
sprintf('non-standardize FNN RMSE at P1 = %0.5f .\n',FNN_P1_RMSE)
sprintf('standardize FNN RMSE at P1 = %0.5f .\n',Std_FNN_P1_RMSE)

%%
figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p0,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,BONN_P0_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0 Using Standardize & Non-standardize BONN")
set(gca,'FontName','Times')
subplot(2,1,2)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p0,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,Std_FNN_P0_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0 Using Standardize FNN")
set(gca,'FontName','Times')


figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p0,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,FNN_P0_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0 Using Non-standardize FNN")
set(gca,'FontName','Times')
subplot(2,1,2)

figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p05,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,BONN_P05_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0.5 Using Standardize & Non-standardize BONN")
set(gca,'FontName','Times')
subplot(2,1,2)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p05,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,Std_FNN_P05_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0.5 Using Standardize FNN")
set(gca,'FontName','Times')

figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p05,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,FNN_P05_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 0.5 Using Non-standardize FNN")
set(gca,'FontName','Times')
subplot(2,1,2)

figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p1,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,BONN_P1_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 1 Using Standardize & Non-standardize BONN")
set(gca,'FontName','Times')
subplot(2,1,2)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p1,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,Std_FNN_P1_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 1 Using Standardize FNN")
set(gca,'FontName','Times')

figure
subplot(2,1,1)
hold all
grid on
plot(GainCoefficient_Wave,GainCoefficient_p1,'red','LineWidth',1.5)
plot(GainCoefficient_Wave,FNN_P1_testPredictions,'blue','LineWidth',1.5)
legend(["Observed" "Predicted"])
xlabel("Wavelegnth")
ylabel("Gain Coefficient")
title("Gain Coefficient at P = 1 Using Non-standardize FNN")
set(gca,'FontName','Times')
subplot(2,1,2)

%%
