function [methyl_param] = dhf_param(index_list,trj)
[m,n3]=size(trj);
x=10;
tao=x*500;

second_op_axis=zeros(tao,1);
if index_list(1)==0
    methyl_param=0;
else
    %%%%%%% C6-C9 of DHF %%%%%%%%%%%%%%%%%%%%%%%
    c_a=trj(:,index_list(1):index_list(1)+2); % C6
    c_a=transpose(c_a);
    c_b=trj(:,index_list(2):index_list(2)+2); % C9
    c_b=transpose(c_b);
    
    %side-chain vector
    r_side=c_b-c_a;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_C6_C9.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_C6_C9.fig'))
    close(h)
    
    %%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%% C9-N10 of DHF %%%%%%%%%%%%%%%%%%%%%%%%%%
    
    c_9=trj(:,index_list(2):index_list(2)+2); % C6
    c_9=transpose(c_9);
    n_10=trj(:,index_list(3):index_list(3)+2); % C9
    n_10=transpose(n_10);
    
    %side-chain vector
    r_side=n_10-c_9;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_C9_N10.dat','s_corr', '-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function C9 N10')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_C9_N10.fig'))
    close(h)
    
    %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% N3-C4 of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    c4=trj(:,index_list(5):index_list(5)+2); % C4
    c4=transpose(c4);
    n3=trj(:,index_list(4):index_list(4)+2); % N3
    n3=transpose(n3);
    
    %side-chain vector
    r_side=n3-c4;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_N3_C4.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function N3-C4')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_N3_C4.fig'))
    close(h)
  %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% NA2-C2 of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    na2=trj(:,index_list(6):index_list(6)+2); % NA2
    na2=transpose(na2);
    c2=trj(:,index_list(7):index_list(7)+2); % C2
    c2=transpose(c2);
    
    %side-chain vector
    r_side=na2-c2;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_NA2_C2.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function NA2-C2')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_NA2_C2.fig'))
    close(h)  
  %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% N8-C7 of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    n8=trj(:,index_list(8):index_list(8)+2); % N8
    n8=transpose(n8);
    c7=trj(:,index_list(9):index_list(9)+2); % C7
    c7=transpose(c7);
    
    %side-chain vector
    r_side=n8-c7;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_N8_C7.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function N8-C7')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_N8_C7.fig'))
    close(h)    
    
      %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% O-C of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    o=trj(:,index_list(10):index_list(10)+2); % O
    o=transpose(o);
    c=trj(:,index_list(11):index_list(11)+2); % C
    c=transpose(c);
    
    %side-chain vector
    r_side=o-c;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_O_C.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function O-C')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_O_C.fig'))
    close(h)  
    
          %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% CT-CA of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    ct=trj(:,index_list(12):index_list(12)+2); % CT
    ct=transpose(ct);
    ca=trj(:,index_list(13):index_list(13)+2); % CA
    ca=transpose(ca);
    
    %side-chain vector
    r_side=ct-ca;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_CT_CA.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function CT-CA')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_CT_CA.fig'))
    close(h)
    
     %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%% CG-CD of DHF %%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%
    
    
    cg=trj(:,index_list(14):index_list(14)+2); % CG
    cg=transpose(cg);
    cd=trj(:,index_list(15):index_list(15)+2); % CD
    cd=transpose(cd);
    
    %side-chain vector
    r_side=cg-cd;
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %normalization of the side chain vector
    nr_side=zeros(3,m);
    for l=1:m
        nr_side(:,l)=r_side(:,l)/norm(r_side(:,l));
    end
    
    %%%%%%%% FIRST ORDER CORRELATION FUNCTION %%%%%%%%%%%%%
    g=zeros(tao,tao);
    for tau=1:tao
        for i=1:m-tau
            g(i,tau)=dot(nr_side(:,i),nr_side(:,i+tau-1));
        end
    end
    
    %first order correlation function
    f_corr=zeros(tao,1);
    for tau=1:tao
        f_corr(tau)=sum(g(:,tau))/nnz(g(:,tau));
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%% SECOND ORDER CORRELATION FUNCTION %%%%%%%%%
    
    l_corr=zeros(tao,tao);
    
    for i=1:tao
        for j=1:tao
            if g(i,j) ~= 0 % g is left-sided upper triangular
                l_corr(i,j)=1.5*g(i,j).^2-0.5; % operate only on non-zero elements
            end
        end
    end
    
    %nnz divides the number to the count of non-zero elements
    % second-order correlation function
    s_corr=zeros(tao,1);
    for i=1:tao
        s_corr(i)=sum(l_corr(:,i))/nnz(l_corr(:,i));
    end
    
    %saving second order correlation function data
    save('DHF_Corr_Func_CG_CD.dat','s_corr','-ascii')
    x_corr=linspace(0,10,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Second Order Correlation Function CG-CD')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('DHF_Corr_Func_CG_CD.fig'))
    close(h)
    
    methyl_param=3;
end
end

