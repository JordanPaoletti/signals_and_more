function [ interval ] = time_interval(sample_rate, seconds)
%TIMEINTERVAL returns a linear spacing of time at a sample rate
%   sample_rate - number of samples per second
%   seconds - number of seconds

interval = linspace(0, seconds, seconds*sample_rate);


end

