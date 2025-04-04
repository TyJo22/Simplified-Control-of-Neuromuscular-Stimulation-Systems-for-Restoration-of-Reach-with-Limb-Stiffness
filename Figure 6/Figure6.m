clear all; clc; load('Figure6Data.mat') %#ok<CLALL>

%% Plot Simulation Trajectories
for i = 1:3
    subplot(2,3,i)
    for l = 1:8
        plot(simLines{i,l,1},simLines{i,l,2},'k','linewidth',3)
        hold on
    end
    xlim([-0.75 0.75])
    ylim([-0.75 0.75])
    axis square
    set(gca,'XTick',[])
    set(gca,'yTick',[])
    if i == 1
        ylabel('Simulated')
    end
end
%#ok<*NANMEAN>

%% Plot Average NHP Trajectories and Confidence Intervals 

for i = 1:3
    subplot(2,3,i+3)
    for l = 1:8
        patch(NHPData.stats{i,l,1},NHPData.stats{i,l,2},[0.5 0.5 0.5], 'FaceAlpha', 0.2, 'EdgeColor','none' )
        hold on
        plot(mean(cell2mat(reshape(NHPData.trajectories(i,l,1,:), 50, [])),'omitnan'),mean(cell2mat(reshape(NHPData.trajectories(i,l,2,:), 50, [])),'omitnan'),'k','linewidth',3)
    end
    xlim([-0.75 0.75])
    ylim([-0.75 0.75])
    axis square
    set(gca,'XTick',[])
    set(gca,'yTick',[])
    if i == 1
        ylabel('Monkey Controlled')
    end
end


