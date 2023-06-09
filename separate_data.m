function separated = separate_data(data, column)
    col_data = data(:, column);

    [~, ~, x] = unique(col_data);

    separated = accumarray(x, 1:size(data,1), [], @(r){data(r,:)});

end

