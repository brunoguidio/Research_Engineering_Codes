function [F_m] = force_x_t (F_m)
global sm; global h; global Ntimestep; global Force_type;

if (strcmp(Force_type,'F1'))
    %UP Smooth Snake (a)
    dk(1) = 0;
    dk(2:11) = [5 4 3 2 1 1 2 3 4 5];
    dk(12:21) = [5 4 3 2 1 1 2 3 4 5];
    dk(22:31) = [5 4 3 2 1 1 2 3 4 5];
    dk(32:41) = [5 4 3 2 1 1 2 3 4 5];
    dk(42:51) = [5 4 3 2 1 1 2 3 4 5];
    dk(52:61) = [5 4 3 2 1 1 2 3 4 5];
    
elseif (strcmp(Force_type,'F2'))
    %Boomerang snake (b)
    dk(1) = 0;
    dk(2:11) = [5 4 3 2 1 1 2 3 4 5];
    dk(12:21) = [5 4 3 2 1 1 2 3 4 5];
    dk(22:31) = [5 4 3 2 1 1 2 3 4 5];
    dk(32:41) = [-5 -4 -3 -2 -1 -1 -2 -3 -4 -5];
    dk(42:51) = [-5 -4 -3 -2 -1 -1 -2 -3 -4 -5];
    dk(52:61) = [-5 -4 -3 -2 -1 -1 -2 -3 -4 -5];
    
elseif (strcmp(Force_type,'F3'))
    % %ARC (c)
    dk(1) = 0;
    dk(2:11) =  [5 5 5 5 5 4 4 4 4 4];
    dk(12:21) = [3 3 3 3 3 2 2 2 2 2];
    dk(22:31) = [1 1 1 1 1 0 0 0 0 0];
    dk(32:41) = [0 0 0 0 0 -1 -1 -1 -1 -1];
    dk(42:51) = [-2 -2 -2 -2 -2 -3 -3 -3 -3 -3];
    dk(52:61) = [-4 -4 -4 -4 -4 -5 -5 -5 -5 -5];
    
elseif (strcmp(Force_type,'F4'))
   %two arc (d)
    dk(1) = 0;
    dk(2:11) =  [5 5 5 5 4 4 4 4 3 3];
    dk(12:21) = [3 3 2 2 2 2 1 1 1 1];
    dk(22:31) = [1 1 1 1 2 2 2 2 3 3];
    dk(32:41) = [3 3 2 2 2 2 1 1 1 1];
    dk(42:51) = [-1 -1 -1 -1 -2 -2 -2 -2 -3 -3];
    dk(52:61) = [-3 -3 -4 -4 -4 -4 -5 -5 -5 -5];  
    
elseif (strcmp(Force_type,'F5'))
    %SNAKE (e)
    if h == 1
    dk(1) = 0;
    dk(2:11) =  [5 5 5 5 4 4 4 4 3 3];
    dk(12:21) = [3 3 2 2 2 2 1 1 1 1];
    dk(22:31) = [-1 -1 -1 -2 -2 -2 -3 -3 -3 -4];
    dk(32:41) = [-4 -4 -3 -2 -1 0 0 1 1 2];
    dk(42:51) = [2 2 3 4 4 5 5 4 4 3];
    dk(52:61) = [3 2 2 1 1 0 0 -1 -2 -3];
    
    elseif h == 0.5
    dk(1) = 0;
    dk(2:21) =  [2 3 2 3 2 3 2 3 2 2 2 2 2 2 2 2 1 2 1 2];
    dk(22:41) = [1 2 1 2 1 1 1 1 1 1 1 1  0 1 0 1 0 1 0 1];
    dk(42:61) = [ 0 -1  0 -1  0 -1 -1 -1 -1 -1 -1 -1 -1 -2 -1 -2 -1 -2 -2 -2];
    dk(62:81) = [-2 -2 -2 -2 -1 -2 -1 -1  0 -1  0  0  0  0  0  1  0  1  1  1];
    dk(82:101) = [1 1 1 1 1 2 2 2 2 2 2 3 2 3 2 2 2 2 1 2];
    dk(102:121) = [1 2 1 1 1 1 0 1 0 1 0 0 0 0 0 -1 -1 -1 -1 -2];
    
    elseif h == 0.25
    dk(1) = 0;
    dk(2:41) =  [1 1 1 2 1 1 1 2 1 1 1 2 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1];
    dk(42:81) = [0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1];
    dk(82:121) = [0 0 0 -1 0 0 0 -1 0 0 0 -1 0 -1 0 -1 0 -1 0 -1 0 -1 0 -1 0 -1 -1 -1 0 -1 -1 -1 0 -1 -1 -1 -1 -1 -1 -1];
    dk(122:161) = [-1 -1 -1 -1 -1 -1 -1 -1 0 -1 -1 -1 0 -1 0 -1 0 0 0 -1  0 0  0 0 0 0 0 0 0 0  0 1  0 0  0 1  0 1  0 1];
    dk(162:201) = [0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 2 1 1 1 1 1 1 1 1 0 1 1 1];
    dk(202:241) = [0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 -1 0 -1 0 -1 0 -1 -1 -1];    
    
    end
elseif (strcmp(Force_type,'F6'))
    if h == 1
    dk(1:61) = 0;
    elseif h == 0.5
    dk(1:121) = 0;
    end
end

    for i = 2:sm/h+1
    F_m(sum(dk(1:i))+1:end,i) = F_m(1:end-(sum(dk(1:i))),1);
    end
    
    a = linspace(1,2,(sm/h)/2 +1);
    b = linspace(2,1,(sm/h)/2 +1); 
    b(1) = [];
    factor = [a,b];
    
    for i = 1:length(factor)
        F_m(:,i) = F_m(:,i).*factor(i);
    end
    
%    x = [1:sm/h+1];
%    y = [1:Ntimestep];
%    [x,y] = meshgrid(x,y); 
%    contourf(x,y,F_m,50,'LineColor','none')
%    colorbar;
%    caxis([-100 200])