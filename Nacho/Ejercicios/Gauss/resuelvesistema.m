% Resolución de sistemas

function x = resuelvesistema(A, b)

    [P,L,U] = pivotingLU(A);
    
    %Ahora tenemos que PAx = Pb, entonces LUx = Pb (porque LU = PA)
    %Nos quedamos con Lz = Pb tal que z = Ux
    
    z = L\(P * b);
    
    %Ahora z = Ux
    
    x = U\z;
    
    

end