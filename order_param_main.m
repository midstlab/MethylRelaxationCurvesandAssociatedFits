%n is gonna be index-vector
n=dhfIndex('dhf-a107f.pdb');
[a,b]=size(n);
trj = readdcd('dhf-a107f-50-60ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);


order_p=dhf_param_new(n,trj);

cd ../60-70ns
trj = readdcd('dhf-a107f-60-70ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=dhf_param_new(n,trj);

cd ../70-80ns
trj = readdcd('dhf-a107f-70-80ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=dhf_param_new(n,trj);
cd ../80-90ns

trj = readdcd('dhf-a107f-80-90ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../90-100ns
trj = readdcd('dhf-a107f-90-100ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../100-110ns
trj = readdcd('dhf-a107f-100-110ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../110-120ns
trj = readdcd('dhf-a107f-110-120ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../120-130ns
trj = readdcd('dhf-a107f-120-130ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../130-140ns
trj = readdcd('dhf-a107f-130-140ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../140-150ns
trj = readdcd('dhf-a107f-140-150ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../150-160ns
trj = readdcd('dhf-a107f-150-160ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../160-170ns
trj = readdcd('dhf-a107f-160-170ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../170-180ns
trj = readdcd('dhf-a107f-170-180ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=dhf_param_new(n,trj);

cd ../180-190ns
trj = readdcd('dhf-a107f-180-190ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../190-200ns
trj = readdcd('dhf-a107f-190-200ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

cd ../200-210ns
trj = readdcd('dhf-a107f-200-210ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=dhf_param_new(n,trj);

