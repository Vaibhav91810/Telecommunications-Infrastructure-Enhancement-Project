import numpy as np

def calculate_latency(data_rate, distance):
    """
    Calculate the latency for data transmission.
    
    Parameters:
    - data_rate: The data transmission rate (Mbps)
    - distance: The distance between nodes (km)
    
    Returns:
    - latency: The calculated latency (ms)
    """
    speed_of_light = 299792.458  # Speed of light in km/s
    latency = (distance / speed_of_light) * 1000  # Convert to ms
    return latency

def calculate_packet_loss(packet_loss_rate, num_packets):
    """
    Calculate the packet loss based on the packet loss rate.
    
    Parameters:
    - packet_loss_rate: The packet loss rate (0 to 1)
    - num_packets: The number of packets transmitted
    
    Returns:
    - lost_packets: The number of packets lost
    """
    lost_packets = int(packet_loss_rate * num_packets)
    return lost_packets
