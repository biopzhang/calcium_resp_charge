a1 = load('loop1');
a2 = load('loop2');
a3 = load('loop3');
a4 = load('loop4');

figure;
subplot(2,2,1);
boxplot(a1,'BoxStyle','filled','Colors','b','Widths',0.3,'OutlierSize',1,'Symbol','r*');
ylim([-3.5 3.5]);
set(gca,'YTick',-3:2:3,'YMinorTick','on');

subplot(2,2,2);
boxplot(a2,'BoxStyle','filled','Colors','b','Widths',0.3,'OutlierSize',1,'Symbol','r*');
ylim([-3.5 3.5]);
set(gca,'YTick',-3:2:3,'YMinorTick','on');

subplot(2,2,3);
boxplot(a3,'BoxStyle','filled','Colors','b','Widths',0.3,'OutlierSize',1,'Symbol','r*');
ylim([-3.5 3.5]);
set(gca,'YTick',-3:2:3,'YMinorTick','on');

subplot(2,2,4);
boxplot(a4,'BoxStyle','filled','Colors','b','Widths',0.3,'OutlierSize',1,'Symbol','r*');
ylim([-3.5 3.5]);
set(gca,'YTick',-3:2:3,'YMinorTick','on');


set(gcf,'renderer', 'painter');
print('-dpdf',['boxplot.','residual_charges','.pdf']);
exit(0);
