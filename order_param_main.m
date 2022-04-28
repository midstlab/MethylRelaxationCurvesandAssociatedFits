%n is gonna be index_vector
n=tmppIndex('tmpp_wt2.pdb');
[a,b]=size(n);
trj = readdcd('tmpp-wt-50-60ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);


order_p=tmpp_param(n,trj);

cd ../60-70ns
trj = readdcd('tmpp-wt-60-70ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=tmpp_param(n,trj);

cd ../70-80ns
trj = readdcd('tmpp-wt-70-80ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=tmpp_param(n,trj);
cd ../80-90ns

trj = readdcd('tmpp-wt-80-90ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../90-100ns
trj = readdcd('tmpp-wt-90-100ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../100-110ns
trj = readdcd('tmpp-wt-100-110ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../110-120ns
trj = readdcd('tmpp-wt-110-120ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../120-130ns
trj = readdcd('tmpp-wt-120-130ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../130-140ns
trj = readdcd('tmpp-wt-130-140ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../140-150ns
trj = readdcd('tmpp-wt-140-150ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../150-160ns
trj = readdcd('tmpp-wt-150-160ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../160-170ns
trj = readdcd('tmpp-wt-160-170ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../170-180ns
trj = readdcd('tmpp-wt-170-180ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);

order_p=tmpp_param(n,trj);

cd ../180-190ns
trj = readdcd('tmpp-wt-180-190ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../190-200ns
trj = readdcd('tmpp-wt-190-200ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

cd ../200-210ns
trj = readdcd('tmpp-wt-200-210ns.dcd');
ref = trj(1,:);
[rmsd,trj]=superimpose(ref,trj);
order_p=tmpp_param(n,trj);

