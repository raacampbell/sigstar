function h=test_sigstar

figRows=3;
figCols=3;

%1
subplot(figRows,figCols,1)
bar([5,2,1.5])
h{1}=sigstar({[1,2], [1,3]});

%2
subplot(figRows,figCols,2)
bar([5,2,1.5])
h{2}=sigstar({[2,3],[1,2], [1,3]},[nan,0.05,0.05]);


% 3.  **DOESN'T WORK IN 2014b**
subplot(figRows,figCols,3)
R=randn(30,2);
R(:,1)=R(:,1)+3;
boxplot(R)
set(gca,'XTick',1:2,'XTickLabel',{'A','B'})
h{3}=sigstar({{'A','B'}},0.01);
ylim([-3,6.5])
set(h{3},'color','r')

%4.
subplot(figRows,figCols,4)
x=[1,2,3,2,1];
bar(x)
h{4}=sigstar({[1,2], [2,3], [4,5]});

subplot(figRows,figCols,5)
bar(x)
h{5}=sigstar({[2,3],[1,2], [4,5]});