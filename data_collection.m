corr=struct;

corr.C5_C7=zeros(5000,16);
corr.C7_C1P=zeros(5000,16);



x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,1)=0;
    else
        corr.C5_C7(j,1)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,1)=0;
    else
        corr.C7_C1P(j,1)=y(j);
    end
end

cd ../60-70ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,2)=0;
    else
        corr.C5_C7(j,2)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,2)=0;
    else
        corr.C7_C1P(j,2)=y(j);
    end
end
cd ../70-80ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,3)=0;
    else
        corr.C5_C7(j,3)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,3)=0;
    else
        corr.C7_C1P(j,3)=y(j);
    end
end

cd ../80-90ns
x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,4)=0;
    else
        corr.C5_C7(j,4)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,4)=0;
    else
        corr.C7_C1P(j,4)=y(j);
    end
end

cd ../90-100ns
x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,5)=0;
    else
        corr.C5_C7(j,5)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,5)=0;
    else
        corr.C7_C1P(j,5)=y(j);
    end
end

cd ../100-110ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,6)=0;
    else
        corr.C5_C7(j,6)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,6)=0;
    else
        corr.C7_C1P(j,6)=y(j);
    end
end

cd ../110-120ns
x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,7)=0;
    else
        corr.C5_C7(j,7)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,7)=0;
    else
        corr.C7_C1P(j,7)=y(j);
    end
end
cd ../120-130ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,8)=0;
    else
        corr.C5_C7(j,8)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,8)=0;
    else
        corr.C7_C1P(j,8)=y(j);
    end
end

cd ../130-140ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,9)=0;
    else
        corr.C5_C7(j,9)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,9)=0;
    else
        corr.C7_C1P(j,9)=y(j);
    end
end

cd ../140-150ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,10)=0;
    else
        corr.C5_C7(j,10)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,10)=0;
    else
        corr.C7_C1P(j,10)=y(j);
    end
end

cd ../150-160ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,11)=0;
    else
        corr.C5_C7(j,11)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,11)=0;
    else
        corr.C7_C1P(j,11)=y(j);
    end
end
cd ../160-170ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,12)=0;
    else
        corr.C5_C7(j,12)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,12)=0;
    else
        corr.C7_C1P(j,12)=y(j);
    end
end
cd ../170-180ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,13)=0;
    else
        corr.C5_C7(j,13)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,13)=0;
    else
        corr.C7_C1P(j,13)=y(j);
    end
end
cd ../180-190ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,14)=0;
    else
        corr.C5_C7(j,14)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,14)=0;
    else
        corr.C7_C1P(j,14)=y(j);
    end
end
cd ../190-200ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,15)=0;
    else
        corr.C5_C7(j,15)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,15)=0;
    else
        corr.C7_C1P(j,15)=y(j);
    end
end

cd ../200-210ns

x=importdata(sprintf('TMPP_Corr_Func_C5_C7.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C5_C7(j,16)=0;
    else
        corr.C5_C7(j,16)=x(j);
    end
end

y=importdata(sprintf('TMPP_Corr_Func_C7_C1P.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C7_C1P(j,16)=0;
    else
        corr.C7_C1P(j,16)=y(j);
    end
end

cd ..
mkdir average
cd average
save('corr_data','corr')


