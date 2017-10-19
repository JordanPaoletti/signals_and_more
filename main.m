interval = time_interval(44100, 0.5);
ys = additive_sin(interval, [1,10,0 ; 0.5,20,0 ]);
plot(interval, ys);