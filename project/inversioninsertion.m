% Inversion mutation: A subtour is randomly selected and inserted again in
% reversed order in a random place.

function NewChrom = inversioninsertion(OldChrom,Representation);

NewChrom=OldChrom;

if Representation==1 
	NewChrom=adj2path(NewChrom);
end

% select two positions in the tour

rndi=zeros(1,2);

while rndi(1)==rndi(2)
	rndi=rand_int(1,2,[1 size(NewChrom,2)]);
end
rndi = sort(rndi);

tmp = NewChrom(rndi(2):-1:rndi(1));
NewChrom = [NewChrom(1:rndi(1)-1) tmp NewChrom(rndi(2)+1:length(NewChrom))]; 



if Representation==1
	NewChrom=path2adj(NewChrom);
end


% End of function
