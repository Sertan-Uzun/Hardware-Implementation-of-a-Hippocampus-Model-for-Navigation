clear;clc;

%------------------------------------------------------------------------

tao_m=50*10^-3; % Time Constants
Rm=20*10^-2;    % Constant Membrane Potential
E_e=0;          % Excitatory Constant Synapse Potential
E_i=-70;        % Inhibitory Constant Synapse Potential
V_thr=-50;      % Threshold Voltage
Vo=-65;         % Resting Potential
r_time=3;       % Refractory Time

h = 0.0001;    % Euler Step Size

%------------------------------------------------------------------------

% Calculation of Conductivity LUT

g_sym = 40*10^-3;    % Time-Dependent Conductivity of the Synapse
tao_1 = 5*10^-3;     % Time Constant of the Synapse    
firing_time = 0.005; % Arbitrary Firing Time

t = 0:0.0001:0.050;     % Time Space
g = zeros(size(t));     % Conductivity Matrix

for i = 1:length(t)
    if t(i) >= firing_time
        g(i) = g_sym * exp(-(t(i) - firing_time) / tao_1);
    end
end

start_idx = find(t >= firing_time, 1);
lut_indices = start_idx-1 : start_idx + 200; 

g_lut = g(lut_indices)*1000; %LUT as 'mS'

%------------------------------------------------------------------------