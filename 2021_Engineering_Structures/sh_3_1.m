function y = sh_3_1(i,x)

switch (i)
    
    case(1)
        y = ((-27.*x.^2)/16)+(9.*x/8)+(1/16) ;
    case(2)
        y = ((81.*x.^2)/16)-(9.*x/8)-(27/16) ;
    case(3)
        y = ((-81.*x.^2)/16)-(9.*x/8)+(27/16) ;
    case(4)
        y = ((27.*x.^2)/16)+(9.*x/8)-(1/16) ;
end
return