function [ output ] = additive_sin( interval, sins )
%ADDITIVE_SIN returns a signal of summed sin waves over an interval
%   interval - the interval of the signal (1xn vector)
%   sins - a n x 3 matrix containing data about the sin wave
%       each row represents a sin wave
%       [amplitude, frequency, phase]
%       -amplitude is the amplitude of the wave
%       -frequency is in hertz
%       -phase of the sin wave

sinfunc = @(amp, freq, phase, theta) amp * sin(freq*2*pi*theta + phase);

output = zeros(1, length(interval));
for i = 1:length(sins(:,1))
    for j = 1:length(output)
        output(j) = output(j) + sinfunc(sins(i,1), sins(i,2), sins(i,3), ...
            interval(j));
    end
end

end

