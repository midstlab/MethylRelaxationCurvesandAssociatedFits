corr_average=struct;

s=load('corr_data.mat');
[a,b]=size(s.corr);
[c,d]=size(s.corr(1).Residue);

for i=1:b
    corr_average(i).Func=zeros(5000,1);
    corr_average(i).Std=zeros(5000,1);
    corr_average(i).StdErr=zeros(5000,1);
end


for j=1:c
    for i=1:b
    corr_average(i).Func(j)=mean(s.corr(i).Residue(j,:));
    corr_average(i).Std(j)=std(s.corr(i).Residue(j,:));
    corr_average(i).StdErr(j)=std(s.corr(i).Residue(j,:))/sqrt(length(s.corr(i).Residue(j,:)));
    end
end
save('corr_average.mat','corr_average')
order_parameter=zeros(1,159);
for i=1:159
    order_parameter(i)=mean(corr_average(i).Func(1500:end));
end

save('order_parameter.mat','order_parameter')

load('corr_average.mat');
load('order_parameter.mat');
exact_order=zeros(159,1);
exact_std=zeros(159,1);
exact_error=zeros(159,1);


    
end_Parameters=struct;
end_Parameters.Order=order_parameter;
end_Parameters.Std=exact_std;
end_Parameters.Error=exact_error;

tao_fast=zeros(159,1);
tao_slow=zeros(159,1);
beta=zeros(159,1);

xdata=linspace(0,7,3500);
xdata=xdata';

for i=1:159
    s=order_parameter(i);
    ydata=corr_average(i).Func(1:3500);
    
    if s==0
        xmulti=[0 0 0];
    else
        fitfcn=@(p,xdata)(1-s)*exp(-(xdata/p(1)).^p(2))+(s)*exp(-xdata/p(3));

        lb=[0 0 0];
        ub=[Inf 1 Inf];
        p0= [1 0.4 10];

        [xfitted,errorfitted]=lsqcurvefit(fitfcn,p0,xdata,ydata,lb,ub);

        problem=createOptimProblem('lsqcurvefit','x0',p0,'objective',fitfcn,'lb',lb,'ub',ub,'xdata',xdata,'ydata',ydata);

        ms=MultiStart('PlotFcns',@gsplotbestf);

        [xmulti,errormulti]=run(ms,problem,50);
    end
    
    tao_fast(i)=xmulti(1);
    tao_slow(i)=xmulti(3);
    beta(i)=xmulti(2);
end

end_Parameters.TaoF=tao_fast;
end_Parameters.TaoS=tao_slow;
end_Parameters.Beta=beta;

save('End_Parameters','-struct','end_Parameters')

load('End_Parameters.mat')
load('corr_average.mat')

for i=1:159
    ydata=corr_average(i).Func(1:3500);
    xdata=linspace(0,7,3500);
    s=Order(i);
    
    y=(1-s)*exp(-(xdata/TaoF(i)).^Beta(i))+(s)*exp(-xdata/TaoS(i));
    y=y';
    
    %calculation of r-square
    
    Bbar=mean(ydata);
    SStot = sum((ydata-Bbar).^2);
    SSreg = sum((y-Bbar).^2);
    SSres = sum((ydata-y).^2);
    R2=1-SSres/SStot;
    
    h=figure;
    plot(xdata,ydata,'b')
    hold on
    plot(xdata,y,'r')
    ylim([0 1])
    xlim([0 7])
    legend('Correlation Function','Fit')
    annotation('textbox', [0.75, 0.7, 0.1, 0.1], 'String', sprintf('R^2: %2.2f',R2));
    annotation('textbox', [0.3, 0.1, 0.1, 0.1], 'String', sprintf('y=(1-%1.2f)*exp(-(x/%1.2f)^{%1.2f})+%1.2f*exp(-x/%4.2f)',s,TaoF(i),Beta(i),s,TaoS(i)));
    title(sprintf('Correlation Function - Residue %d',i))
    savefig(h,sprintf('Corr_and_Fit_R%d.fig',i))
    close(h)
end


