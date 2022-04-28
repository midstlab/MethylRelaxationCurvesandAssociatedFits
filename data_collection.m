corr=struct;

for i=1:159
    corr(i).Residue=zeros(5000,16);
end



for i=1:159
    if exist(sprintf('M_Corr_Func_R%d.dat',i))==0
        continue;
    else
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    [a,b]=size(x);
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,1)=0;
        else
            corr(i).Residue(j,1)=x(j);
        end
    end
    
    cd ../60-70ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,2)=0;
        else
            corr(i).Residue(j,2)=x(j);
        end
    end   
    
    cd ../70-80ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,3)=0;
        else
            corr(i).Residue(j,3)=x(j);
        end
    end   
    
    cd ../80-90ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,4)=0;
        else
            corr(i).Residue(j,4)=x(j);
        end
    end   
    
    cd ../90-100ns
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,5)=0;
        else
            corr(i).Residue(j,5)=x(j);
        end
    end   
    
    cd ../100-110ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,6)=0;
        else
            corr(i).Residue(j,6)=x(j);
        end
    end   
    
    cd ../110-120ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,7)=0;
        else
            corr(i).Residue(j,7)=x(j);
        end
    end   
    
    cd ../120-130ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,8)=0;
        else
            corr(i).Residue(j,8)=x(j);
        end
    end   
    
    cd ../130-140ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,9)=0;
        else
            corr(i).Residue(j,9)=x(j);
        end
    end   
    
    cd ../140-150ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,10)=0;
        else
            corr(i).Residue(j,10)=x(j);
        end
    end   
    
    cd ../150-160ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,11)=0;
        else
            corr(i).Residue(j,11)=x(j);
        end
    end   
    
    cd ../160-170ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,12)=0;
        else
            corr(i).Residue(j,12)=x(j);
        end
    end   
    
    cd ../170-180ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,13)=0;
        else
            corr(i).Residue(j,13)=x(j);
        end
    end   
    
    cd ../180-190ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,14)=0;
        else
            corr(i).Residue(j,14)=x(j);
        end
    end   
    
    cd ../190-200ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:a
        if x(j) < 0
            corr(i).Residue(j,15)=0;
        else
            corr(i).Residue(j,15)=x(j);
        end
    end   
    
    cd ../200-210ns
    
    x=importdata(sprintf('M_Corr_Func_R%d.dat',i));
    for j=1:4990
        if x(j) < 0
            corr(i).Residue(j,16)=0;
        else
            corr(i).Residue(j,16)=x(j);
        end
    end   
    end
    cd ../50-60ns
end

cd ..
mkdir Average
cd Average
save('corr_data','corr')
