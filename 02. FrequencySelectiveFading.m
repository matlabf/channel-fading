% Construct a Rayleigh Frequency selective fading object
bitRate = 500;
channel = comm.RayleighChannel('SampleRate', bitRate, 'MaximumDopplerShift', 4, 'PathDelays', [0 0.5/bitRate], 'AveragePathGains', [0 -10]);
signal = 1i * ones(2000, 1);  
output = channel(signal);     

% Plot power of faded signal, versus sample number.
plot(20*log10(abs(output)));
