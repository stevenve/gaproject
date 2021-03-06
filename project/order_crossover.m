% low level function for calculating an offspring
% given 2 parent in the Parents - argument
% Parents is a matrix with 2 rows, each row
% represent the genocode of the parent
%
% Input parameters:
%    Parents         - The parents' chromosomes

function Offspring=order_crossover(Parents)
    chromSize=size(Parents,2);
    Offspring = zeros(1,chromSize);
    rndi=zeros(1,2);
    
    while rndi(1)==rndi(2)
        rndi=rand_int(1,2,[1 chromSize]);
    end
    rndi = sort(rndi);
    Offspring(rndi(1):rndi(2))= Parents(1,rndi(1):rndi(2));
    for i=1:chromSize
        if i>=rndi(1) && i<=rndi(2)
            continue;
        end
        for j=1:chromSize
            candidate = Parents(2,j);
            if ismembc(candidate,sort(Offspring))
                continue;
            else
                Offspring(i)=candidate;
                break;
            end
        end
    end
            
    
    
end
    
    

% end function
