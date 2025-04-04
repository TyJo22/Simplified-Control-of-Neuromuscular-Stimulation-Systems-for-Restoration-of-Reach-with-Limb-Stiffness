figure
subplot(2,2,1)
scatter(Data.Deg5.X,Data.Deg5.Y,20,Data.Deg5.C,'filled')
hold on
scatter(Data.Deg5.XWhite,Data.Deg5.YWhite,20,'w','filled')
colorbar
caxis([0,3])

subplot(2,2,2)
scatter(Data.Deg10.X,Data.Deg10.Y,20,Data.Deg10.C,'filled')
hold on
scatter(Data.Deg10.XWhite,Data.Deg10.YWhite,20,'w','filled')
colorbar
caxis([0,3])

subplot(2,2,3)
scatter(Data.Deg20.X,Data.Deg20.Y,20,Data.Deg20.C,'filled')
hold on
scatter(Data.Deg20.XWhite,Data.Deg20.YWhite,20,'w','filled')
colorbar
caxis([0,3])

subplot(2,2,4)
for i = 1:11
    plot(Data.Mag.X(i,:),Data.Mag.Y(i,:))
    hold on
end

