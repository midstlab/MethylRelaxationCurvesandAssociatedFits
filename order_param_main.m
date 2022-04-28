%n is gonna be index_vector
n=pdbIndex('dhf-a107f.pdb');
[a,b]=size(n);
trj = readdcd('dhf-a107f-50-60ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../60-70ns %2

trj = readdcd('dhf-a107f-60-70ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../70-80ns %3

trj = readdcd('dhf-a107f-70-80ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../80-90ns %4

trj = readdcd('dhf-a107f-80-90ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../90-100ns %5

trj = readdcd('dhf-a107f-90-100ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../100-110ns %6

trj = readdcd('dhf-a107f-100-110ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../110-120ns %7

trj = readdcd('dhf-a107f-110-120ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../120-130ns %8

trj = readdcd('dhf-a107f-120-130ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../130-140ns %9

trj = readdcd('dhf-a107f-130-140ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')



cd ../140-150ns %10

trj = readdcd('dhf-a107f-140-150ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../150-160ns %11

trj = readdcd('dhf-a107f-150-160ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue,:)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../160-170ns %12

trj = readdcd('dhf-a107f-160-170ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../170-180ns %13

trj = readdcd('dhf-a107f-170-180ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../180-190ns %14

trj = readdcd('dhf-a107f-180-190ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../190-200ns %15

trj = readdcd('dhf-a107f-190-200ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')

cd ../200-210ns %16

trj = readdcd('dhf-a107f-200-210ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=zeros(159,1);
for residue=1:159
    order_p(residue)=corr_func(n(residue,:),residue,trj,10);
end
    
save(sprintf('Methyl_Order_Parameters_WT.dat'),'order_p','-ascii')
save(sprintf('rmsd.dat'),'rmsd','-ascii')
