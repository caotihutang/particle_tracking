clc
clear
data=readtable('export1.csv');
data=table2array(data(:,["TRACK_ID","POSITION_T","AREA"]));

num=max(data(:,1));
n=1;
figure
for i=1:5
    idx=find(data(:,1)==i);
    t=data(idx,2)/10;
    x=t-t(1)+0.1;
    y=sqrt(data(idx,3)*(20/190)^2/pi);
    if length(x)>20
        plot(x(1:10),y(1:10),'-*','LineWidth',1);hold on
        % f=fit(x(1:10),y(1:10),'x^a','Lower',0,'Upper',1);
        % beta(n)=f.a;
        % n=n+1;
    end
%     clear x y
end

xlabel('Time (s)')
ylabel('Area (nm^2)')
