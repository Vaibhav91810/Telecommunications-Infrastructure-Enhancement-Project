% Advanced Network Simulation with Additional Features

% Define network topology
nodes = 10;
links = 15;
network = randi([0, 1], nodes, nodes);

% Define additional network parameters
packet_loss_rate = 0.05;
latency = 5; % ms

% Simulate data transmission with packet loss and latency
data_rate = 100; % Mbps
transmission_time = zeros(nodes);
packet_loss = zeros(nodes);

for i = 1:nodes
    for j = 1:nodes
        if network(i, j) == 1
            transmission_time(i, j) = 1 / data_rate + latency / 1000;
            packet_loss(i, j) = packet_loss_rate;
        else
            transmission_time(i, j) = inf;
            packet_loss(i, j) = 0;
        end
    end
end

% Display network topology, transmission times, and packet loss rates
disp('Network Topology:');
disp(network);
disp('Transmission Times (ms):');
disp(transmission_time * 1000);
disp('Packet Loss Rates:');
disp(packet_loss);
