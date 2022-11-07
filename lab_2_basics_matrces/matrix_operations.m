%% count_max_A
clearvars; close all; clc;
format compact;

A = randi(10, 4);

disp(A);

max_A = max( max(A) );
count_max_A = nnz( A==max_A );

disp(count_max_A);

%% count_near_maen_A
clearvars; close all; clc;
format compact;

A = randi(10, 4);

disp(A);

mean_A = mean( mean(A) );
threshold = 1;
count_near_maen_A = abs( mean_A - A ) < threshold;

disp(count_near_maen_A);

%% matrix sorted by columns' sums
clearvars; close all; clc;
format compact;

A = randi(10, 4);

disp(A);

sum_A = sum(A)
[a, i] = sort(sum_A)

disp("Sorted by columns' sums:");
A(:, i)

%% matrix sorted by rows' sums
clearvars; close all; clc;
format compact;

A = randi(10, 4);

disp(A);

sum_A = sum(A, 2)
[~, i] = sort(sum_A)

disp("Sorted by rows' sums:");
A(i, :)

%% matrix sorted by rows' first elements
clearvars; close all; clc;
format compact;

A = randi(10, 4);

disp(A);

no = 1;
[~, i] = sort(A(:, no))

disp("Sorted:");
A(i, :)

%% random permutation of matrix
clearvars; close all; clc;
format compact;

X = reshape(1:20, 2, [])
rand_i = randperm(10)
X_te = X(:, 1:3)

% deletion of rand indices
X(:, 1:3) = []

%% find min neigh of matrix
clearvars; close all; clc;
format compact;

B = randi(100, 5)
min_B = min( min(B) )

[i, j] = find( B==min_B )

B( max(1, i-1) : min(size(B, 1), i+1) , max(1, j-1) : min(size(B, 2), j+1) )

