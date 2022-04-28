function [ind] = tmppIndex(filename)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
structure=pdbread(filename);

a=size(structure.Model(1).Atom);
a=a(:,2);
ind=zeros(21,1);
j=1;

for i=1:a
    if strcmp(structure.Model.Atom(i).resName,'TMP')==1
        if strcmp(structure.Model.Atom(i).AtomName,'C5')==1
            ind(1,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C7')==1
            ind(2,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C1P')==1
            ind(3,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'NA2')==1
            ind(4,j)=i;    
        elseif strcmp(structure.Model.Atom(i).AtomName,'C2')==1
            ind(5,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'N3')==1
            ind(6,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'N1')==1
            ind(7,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C6')==1
            ind(8,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C4')==1
            ind(9,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'NA4')==1
            ind(10,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C2P')==1
            ind(11,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C3P')==1
            ind(12,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'O3P')==1
            ind(13,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C8')==1
            ind(14,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C4P')==1
            ind(15,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'O4P')==1
            ind(16,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C9')==1
            ind(17,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C5P')==1
            ind(18,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'O5P')==1
            ind(19,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C10')==1
            ind(20,j)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'C6P')==1
            ind(21,j)=i;
        end
        
    end
    
end

%indices of coordinates at DCDparser
ind=(ind-1)*3+1;
end

