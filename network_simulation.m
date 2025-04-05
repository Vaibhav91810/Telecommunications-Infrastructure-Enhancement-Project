% Basic Network Simulation using MATLAB

% Define network topology
nodes = 10;
links = 15;
network = randi([0, 1], nodes, nodes);

% Simulate data transmission
data_rate = 100; % Mbps
transmission_time = zeros(nodes);

for i = 1:nodes
    for j = 1:nodes
        if network(i, j) == 1
            transmission_time(i, j) = 1 / data_rate;
        else
            transmission_time(i, j) = inf;
        end
    end
end

% Display network topology and transmission times
disp('Network Topology:');
disp(network);
disp('Transmission Times (ms):');
disp(transmission_time * 1000);
