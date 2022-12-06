function F = Fscore(CM)

CM = CM';
precision = CM(1,1) / (CM(1,1) + CM(1,2));
recall = CM(1,1) / (CM(1,1) + CM(2,1));

F = 2 * (precision * recall) / (precision + recall);

end