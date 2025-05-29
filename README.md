# max_finder
max_finder is a function that find max in matlab

# How to use?
f = @(x) sin(x).*exp(-0.1*x);   % define your function

max_finder(f, 2, 5);            % set searching area if you want, if you don't their will start at 0 with epsilon 10

max is 0.858913 in f(1.471176609848484862) % here is the output


You can also use help command in matlab
