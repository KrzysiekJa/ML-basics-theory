function F = Fscore(CM)

CM = rot90(  CM' ,2);
precision = CM(1,1) / ( CM(1,1) + CM(2,1) );
recall = CM(1,1) / ( CM(1,1) + CM(1,2) );

F = 2 * (precision * recall) / (precision + recall);

end