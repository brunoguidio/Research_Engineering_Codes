function y = sh_3_func(i,xi);

switch (i)
                    
    case(1)
        y = ((-9.*xi.^3)/16)+((9.*xi.^2)/16)+(xi/16)-(1/16);
    case(2)
        y = ((27.*xi.^3)/16)-((9.*xi.^2)/16)-(27.*xi/16)+(9/16);
    case(3)
        y = ((-27.*xi.^3)/16)-((9.*xi.^2)/16)+(27.*xi/16)+(9/16);
    case(4)
        y = ((9.*xi.^3)/16)+((9.*xi.^2)/16)-(xi/16)-(1/16);
   
    
end
return