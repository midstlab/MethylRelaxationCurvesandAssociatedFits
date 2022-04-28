function [ind] = pdbIndex(filename)
%This function gets a pdb as an input and gives the indexes of atoms
%related with side-chain order parameters
structure=pdbread(filename);

a=size(structure.Model(1).Atom);
a=a(:,2);
ind=zeros(159,4);
j=1;

for i=1:a
    if strcmp(structure.Model.Atom(i).resName,'MET')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CE')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'ILE')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CG2')==1
            ind(j,4)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CD')==1
            ind(j,3)=i;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'SER')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'OG')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'LEU')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CD1')==1
            ind(j,3)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CD2')==1
            ind(j,4)=i;
            j=j+1;
        end
        
    elseif strcmp(structure.Model.Atom(i).resName,'ALA')==1
        if strcmp(structure.Model.Atom(i).AtomName,'N')==1
            ind(j,3)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,1)=i;  
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'VAL')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CG1')==1
            ind(j,3)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CG2')==1
            ind(j,4)=i;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'ASP')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CG')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'ARG')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CZ')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'GLU')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CD')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'ASN')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'ND2')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'PRO')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CD')==1
            ind(j,3)=i;            
        elseif strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'TRP')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CZ3')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
        
    elseif strcmp(structure.Model.Atom(i).resName,'PHE')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CZ')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'LYS')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'NZ')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'THR')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'OG1')==1
            ind(j,3)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CG2')==1
            ind(j,4)=i;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'HSD')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CE1')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'GLN')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'OE1')==1
            ind(j,3)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'NE2')==1
            ind(j,4)=i;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'CYS')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'SG')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'TYR')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'CB')==1
            ind(j,2)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'OH')==1
            ind(j,3)=i;
            ind(j,4)=2/3;
            j=j+1;
        end
    elseif strcmp(structure.Model.Atom(i).resName,'GLY')==1
        if strcmp(structure.Model.Atom(i).AtomName,'CA')==1
            ind(j,1)=i;
        elseif strcmp(structure.Model.Atom(i).AtomName,'HA1')==1
            ind(j,2)=i;
            ind(j,3)=2/3;
            ind(j,4)=2/3;
            j=j+1;
        end
    end
    
end
%indices of coordinates at DCDparser
ind=(ind-1)*3+1;
end
