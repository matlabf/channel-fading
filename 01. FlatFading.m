% Construct a Rayleigh flat fading object
channel = comm.RayleighChannel('SampleRate', 10000, 'MaximumDopplerShift', 100);
signal = 1i * ones(2000, 1);  
output = channel(signal);     

% Plot power of faded signal, versus sample number.
plot(20*log10(abs(output)));
