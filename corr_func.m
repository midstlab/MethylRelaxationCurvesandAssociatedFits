function [ corr_func ] = corr_func( index_list,resid,trj,x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(trj);
tao=x*500;

second_op_axis=zeros(tao,1);
if index_list(1)==0
    corr_func=0;
else
    c_a=trj(:,index_list(1):index_list(1)+2); % CA
    c_a=transpose(c_a);
    c_b=trj(:,index_list(2):index_list(2)+2); % CB
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
    save(sprintf('M_Corr_Func_R%d.dat',resid),'s_corr','-ascii')
    x_corr=linspace(0,x,tao);
    h=figure;
    plot(x_corr,s_corr)
    ylim([0 1])
    title('Methyl Axis Second Order Correlation Function')
    xlabel('Time (ns)')
    ylabel('C(t)')
    savefig(h,sprintf('M_Corr_Func_R%d.fig',resid))
    close(h)
    corr_func=s_corr(end);
        
end

