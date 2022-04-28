corr=struct;

corr.C6_C9=zeros(5000,16);
corr.C9_N10=zeros(5000,16);
corr.CT_CA=zeros(5000,16);
corr.CG_CD=zeros(5000,16);
corr.N3_C4=zeros(5000,16);
corr.N8_C7=zeros(5000,16);
corr.NA2_C2=zeros(5000,16);
corr.O_C=zeros(5000,16);


x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,1)=0;
    else
        corr.C6_C9(j,1)=x(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,1)=0;
    else
        corr.C9_N10(j,1)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,1)=0;
    else
        corr.CT_CA(j,1)=z(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,1)=0;
    else
        corr.CG_CD(j,1)=k(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,1)=0;
    else
        corr.N3_C4(j,1)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,~]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,1)=0;
    else
        corr.N8_C7(j,1)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,1)=0;
    else
        corr.NA2_C2(j,1)=r(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,1)=0;
    else
        corr.NA2_C2(j,1)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,1)=0;
    else
        corr.O_C(j,1)=s(j);
    end
end

cd ../60-70ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,2)=0;
    else
        corr.C6_C9(j,2)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,2)=0;
    else
        corr.CG_CD(j,2)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,2)=0;
    else
        corr.C9_N10(j,2)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,2)=0;
    else
        corr.CT_CA(j,2)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,2)=0;
    else
        corr.N3_C4(j,2)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,2)=0;
    else
        corr.N8_C7(j,2)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,2)=0;
    else
        corr.NA2_C2(j,2)=r(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,2)=0;
    else
        corr.NA2_C2(j,2)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,2)=0;
    else
        corr.O_C(j,2)=s(j);
    end
end


cd ../70-80ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,3)=0;
    else
        corr.C6_C9(j,3)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,3)=0;
    else
        corr.CG_CD(j,3)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,3)=0;
    else
        corr.C9_N10(j,3)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,3)=0;
    else
        corr.CT_CA(j,3)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,3)=0;
    else
        corr.N3_C4(j,3)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,3)=0;
    else
        corr.N8_C7(j,3)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,3)=0;
    else
        corr.NA2_C2(j,3)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,3)=0;
    else
        corr.O_C(j,3)=s(j);
    end
end

cd ../80-90ns
x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,4)=0;
    else
        corr.C6_C9(j,4)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,4)=0;
    else
        corr.CG_CD(j,4)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,4)=0;
    else
        corr.C9_N10(j,4)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,4)=0;
    else
        corr.CT_CA(j,4)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,4)=0;
    else
        corr.N3_C4(j,4)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,4)=0;
    else
        corr.N8_C7(j,4)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,4)=0;
    else
        corr.NA2_C2(j,4)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,4)=0;
    else
        corr.O_C(j,4)=s(j);
    end
end



cd ../90-100ns
x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,5)=0;
    else
        corr.C6_C9(j,5)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,5)=0;
    else
        corr.CG_CD(j,5)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,5)=0;
    else
        corr.C9_N10(j,5)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,5)=0;
    else
        corr.CT_CA(j,5)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,5)=0;
    else
        corr.N3_C4(j,5)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,5)=0;
    else
        corr.N8_C7(j,5)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,5)=0;
    else
        corr.NA2_C2(j,5)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,5)=0;
    else
        corr.O_C(j,5)=s(j);
    end
end

cd ../100-110ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,6)=0;
    else
        corr.C6_C9(j,6)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,6)=0;
    else
        corr.CG_CD(j,6)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,6)=0;
    else
        corr.C9_N10(j,6)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,6)=0;
    else
        corr.CT_CA(j,6)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,6)=0;
    else
        corr.N3_C4(j,6)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,6)=0;
    else
        corr.N8_C7(j,6)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,6)=0;
    else
        corr.NA2_C2(j,6)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,6)=0;
    else
        corr.O_C(j,6)=s(j);
    end
end

cd ../110-120ns
x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,7)=0;
    else
        corr.C6_C9(j,7)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,7)=0;
    else
        corr.CG_CD(j,7)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,7)=0;
    else
        corr.C9_N10(j,7)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,7)=0;
    else
        corr.CT_CA(j,7)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,7)=0;
    else
        corr.N3_C4(j,7)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,7)=0;
    else
        corr.N8_C7(j,7)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,7)=0;
    else
        corr.NA2_C2(j,7)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,7)=0;
    else
        corr.O_C(j,7)=s(j);
    end
end
cd ../120-130ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,8)=0;
    else
        corr.C6_C9(j,8)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,8)=0;
    else
        corr.CG_CD(j,8)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,8)=0;
    else
        corr.C9_N10(j,8)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,8)=0;
    else
        corr.CT_CA(j,8)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,8)=0;
    else
        corr.N3_C4(j,8)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,8)=0;
    else
        corr.N8_C7(j,8)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,8)=0;
    else
        corr.NA2_C2(j,8)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,8)=0;
    else
        corr.O_C(j,8)=s(j);
    end
end

cd ../130-140ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,9)=0;
    else
        corr.C6_C9(j,9)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,9)=0;
    else
        corr.CG_CD(j,9)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,9)=0;
    else
        corr.C9_N10(j,9)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,9)=0;
    else
        corr.CT_CA(j,9)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,9)=0;
    else
        corr.N3_C4(j,9)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,9)=0;
    else
        corr.N8_C7(j,9)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,9)=0;
    else
        corr.NA2_C2(j,9)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,9)=0;
    else
        corr.O_C(j,9)=s(j);
    end
end

cd ../140-150ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,10)=0;
    else
        corr.C6_C9(j,10)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,10)=0;
    else
        corr.CG_CD(j,10)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,10)=0;
    else
        corr.C9_N10(j,10)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,10)=0;
    else
        corr.CT_CA(j,10)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,10)=0;
    else
        corr.N3_C4(j,10)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,10)=0;
    else
        corr.N8_C7(j,10)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,10)=0;
    else
        corr.NA2_C2(j,10)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,10)=0;
    else
        corr.O_C(j,10)=s(j);
    end
end
cd ../150-160ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,11)=0;
    else
        corr.C6_C9(j,11)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,11)=0;
    else
        corr.CG_CD(j,11)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,11)=0;
    else
        corr.C9_N10(j,11)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,11)=0;
    else
        corr.CT_CA(j,11)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,11)=0;
    else
        corr.N3_C4(j,11)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,11)=0;
    else
        corr.N8_C7(j,11)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,11)=0;
    else
        corr.NA2_C2(j,11)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,11)=0;
    else
        corr.O_C(j,11)=s(j);
    end
end



cd ../160-170ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,12)=0;
    else
        corr.C6_C9(j,12)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,12)=0;
    else
        corr.CG_CD(j,12)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,12)=0;
    else
        corr.C9_N10(j,12)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,12)=0;
    else
        corr.CT_CA(j,12)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,12)=0;
    else
        corr.N3_C4(j,12)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,12)=0;
    else
        corr.N8_C7(j,12)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,12)=0;
    else
        corr.NA2_C2(j,12)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,12)=0;
    else
        corr.O_C(j,12)=s(j);
    end
end
cd ../170-180ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,13)=0;
    else
        corr.C6_C9(j,13)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,13)=0;
    else
        corr.CG_CD(j,13)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,13)=0;
    else
        corr.C9_N10(j,13)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,13)=0;
    else
        corr.CT_CA(j,13)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,13)=0;
    else
        corr.N3_C4(j,13)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,13)=0;
    else
        corr.N8_C7(j,13)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,13)=0;
    else
        corr.NA2_C2(j,13)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,13)=0;
    else
        corr.O_C(j,13)=s(j);
    end
end
cd ../180-190ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,14)=0;
    else
        corr.C6_C9(j,14)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,14)=0;
    else
        corr.CG_CD(j,14)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,14)=0;
    else
        corr.C9_N10(j,14)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,14)=0;
    else
        corr.CT_CA(j,14)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,14)=0;
    else
        corr.N3_C4(j,14)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,14)=0;
    else
        corr.N8_C7(j,14)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,14)=0;
    else
        corr.NA2_C2(j,14)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,14)=0;
    else
        corr.O_C(j,14)=s(j);
    end
end
cd ../190-200ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,15)=0;
    else
        corr.C6_C9(j,15)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,15)=0;
    else
        corr.CG_CD(j,15)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,15)=0;
    else
        corr.C9_N10(j,15)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,15)=0;
    else
        corr.CT_CA(j,15)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,15)=0;
    else
        corr.N3_C4(j,15)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,15)=0;
    else
        corr.N8_C7(j,15)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,15)=0;
    else
        corr.NA2_C2(j,15)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,15)=0;
    else
        corr.O_C(j,15)=s(j);
    end
end

cd ../200-210ns

x=importdata(sprintf('DHF_Corr_Func_C6_C9.dat'));
[a,~]=size(x);
for j=1:a
    if x(j) < 0
        corr.C6_C9(j,16)=0;
    else
        corr.C6_C9(j,16)=x(j);
    end
end

k=importdata(sprintf('DHF_Corr_Func_CG_CD.dat'));
[a,b]=size(k);
for j=1:a
    if k(j) < 0
        corr.CG_CD(j,16)=0;
    else
        corr.CG_CD(j,16)=k(j);
    end
end

y=importdata(sprintf('DHF_Corr_Func_C9_N10.dat'));
[a,b]=size(y);
for j=1:a
    if y(j) < 0
        corr.C9_N10(j,16)=0;
    else
        corr.C9_N10(j,16)=y(j);
    end
end

z=importdata(sprintf('DHF_Corr_Func_CT_CA.dat'));
[a,b]=size(z);
for j=1:a
    if z(j) < 0
        corr.CT_CA(j,16)=0;
    else
        corr.CT_CA(j,16)=z(j);
    end
end

t=importdata(sprintf('DHF_Corr_Func_N3_C4.dat'));
[a,b]=size(t);
for j=1:a
    if t(j) < 0
        corr.N3_C4(j,16)=0;
    else
        corr.N3_C4(j,16)=t(j);
    end
end

v=importdata(sprintf('DHF_Corr_Func_N8_C7.dat'));
[a,b]=size(v);
for j=1:a
    if v(j) < 0
        corr.N8_C7(j,16)=0;
    else
        corr.N8_C7(j,16)=v(j);
    end
end

r=importdata(sprintf('DHF_Corr_Func_NA2_C2.dat'));
[a,b]=size(r);
for j=1:a
    if r(j) < 0
        corr.NA2_C2(j,16)=0;
    else
        corr.NA2_C2(j,16)=r(j);
    end
end

s=importdata(sprintf('DHF_Corr_Func_O_C.dat'));
[a,b]=size(s);
for j=1:a
    if s(j) < 0
        corr.O_C(j,16)=0;
    else
        corr.O_C(j,16)=s(j);
    end
end

cd ..
mkdir average
cd average
save('corr_data','corr')


