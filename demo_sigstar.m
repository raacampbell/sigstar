function demo_sigstar
% demo function for sigstar
%
% function demo_sigstar
%
% No input or output arguments.
%
%
% 


rows=2;
cols=3;

clf




subplot(rows,cols,1)
H=bar([1.8,2,1.2,1.9,1,2,3]);
set(H,'FaceColor',[0.5,1,0.5])
groups={[4,7],[2,3],[6,5]};
H=sigstar(groups,[0.001,0.05,0.04]);
title('evil bar plot that hides data')

subplot(rows,cols,2)
H=bar([10,7,6,5]);
set(gca,'XTickLabel',{'X','a','b','c'})
set(H,'FaceColor',[0.5,1,0.5])
groups={{'X','c'},...
 		{1,'b'},... %note you can mix and match notions
		{'X','a'}};


H=sigstar(groups,[0.0001,0.005,0.04]);
set(H,'Color','b')
%Extend the last arms down:
Y=get(H(1,1),'YData'); Y(4)=7.5; set(H(1,1),'YData',Y);
Y=get(H(2,1),'YData'); Y(4)=6.5; set(H(2,1),'YData',Y);
Y=get(H(3,1),'YData'); Y(4)=5.5; set(H(3,1),'YData',Y);
ylim([0,13])
title('evil bar plot that hides data')



subplot(rows,cols,3)
%A box plot
d=randn([20,3]);
d(:,2)=d(:,2)+2;
boxplot(d)
ylim([-3,6])
H=sigstar({[1,2],[2,3]},[]);
title('box plots are better than bar plots')


subplot(rows,cols,4)
%A line plot
x=1:12;
y=randn(size(x));
y(5)=y(5)-5;
y(6)=y(6)+5;

plot(x,y,'o-r','MarkerFaceColor',[1,0.5,0.5])
sigstar({[5,6]},[0.05]);
xlim([1,12])



subplot(rows,cols,5)
%Grouped bar chart
y = [2 2 3; 2 5 6; 2 8 9; 6 13 15];
bar(y)
sigstar({[1,4],[2,4],[3,4]},[0.05,0.05,0.05]);
xlim([0.5,4.5])



if exist('notBoxPlot')
	subplot(rows,cols,6)
	R=randn(15,3);
	R(:,2)=	R(:,2)+2;
	notBoxPlot(R)
	sigstar({[1,2],[3,2]},[0.05,0.05]);	
	title('notBoxPlots are even better')
	box on
end


