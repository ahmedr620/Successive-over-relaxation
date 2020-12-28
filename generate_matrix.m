function A = generate_matrix(n, h)

if n < 0
    disp('Error: n must be greater than 0!');
else
    A = ( 2 * ( h + h ) )  * eye(n);

    for i = 1 : n - 1
        A(i + 1, i) = h;
    end
    for i = 1 : n - 1
        A(i, i + 1) = h;
    end

end 