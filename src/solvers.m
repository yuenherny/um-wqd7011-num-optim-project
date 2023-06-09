% collection of solvers
1; % see https://docs.octave.org/interpreter/Script-Files.html

# Steepest descent
function c_next = steepest_descent_univariate(c_curr, df, alpha)

  p_next = -df(c_curr);
  c_next = c_curr + alpha * p_next;

endfunction

function c_next = steepest_descent_bivariate(c_curr, df, alpha)

  p_next = -df(c_curr(1), c_curr(2));
  c_next = c_curr + alpha * p_next;

endfunction

function c_next = steepest_descent_trivariate(c_curr, df, alpha)

  p_next = -df(c_curr(1), c_curr(2), c_curr(3));
  c_next = c_curr + alpha * p_next;

endfunction

function c_next = steepest_descent_quadravariate(c_curr, df, alpha)

  p_next = -df(c_curr(1), c_curr(2), c_curr(3), c_curr(4));
  c_next = c_curr + alpha.*p_next;

endfunction

# Quasi newton
function c_next = quasi_newton_univariate(c_curr, df, alpha, B_curr)

  p_curr = -inv(B_curr) * df(c_curr);
  c_next = c_curr + alpha * p_curr;

endfunction

function c_next = quasi_newton_bivariate(c_curr, df, alpha, B_curr)

  p_curr = -inv(B_curr) * df(c_curr(1), c_curr(2));
  c_next = c_curr + alpha * p_curr;

endfunction

function c_next = quasi_newton_trivariate(c_curr, df, alpha, B_curr)

  p_curr = -inv(B_curr) * df(c_curr(1), c_curr(2), c_curr(3));
  c_next = c_curr + alpha * p_curr;

 endfunction

function c_next = quasi_newton_quadravariate(c_curr, df, alpha, B_curr)

  p_curr = -inv(B_curr) * df(c_curr(1), c_curr(2), c_curr(3), c_curr(4));
  c_next = c_curr + alpha * p_curr;

endfunction

 function thickness = compute_metal_thickness(t)
   if(t > 0)
        thickness = ceil(t/0.0625) * 0.0625;
   elseif( t < 0)
        thickness = floor(t/0.0625) * 0.0625;
   else
        thickness = 0.0625;
   endif
 endfunction

