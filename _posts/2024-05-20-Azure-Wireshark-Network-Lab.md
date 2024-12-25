---
layout: post
title: "Azure Wireshark Network Analysis Lab: Hands-on Network Traffic Monitoring"
date: 2024-05-20
categories: [Networking, Cloud, Security]
tags: [azure, wireshark, network-analysis, security, monitoring, packet-capture]
---

# Azure-Wireshark-Network-Lab

A hands-on lab designed to observe network traffic protocols to and from Azure Virtual Machines (VMs) using Wireshark, while experimenting with Network Security Groups (NSGs) for enhanced understanding of cloud network security and traffic analysis.

![Lab Overview](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/ad6a0d2c-3847-45fa-850d-3e994f63f60d)

---

## Environments and Technologies Used
- **Microsoft Azure**: Virtual Machines (Windows 10 Pro, Ubuntu, Windows 11)
- **Remote Desktop Protocol (RDP)**
- **Command-Line Tools**
- **Network Protocols**: SSH, RDP, DNS, HTTP/S, ICMP
- **Wireshark**: Protocol Analyzer

---

## Lab Setup
### Step 1: Set Up Azure Virtual Machines
1. **Create Virtual Machines**:
   - Windows 10 Pro
   - Ubuntu
   - Windows 11
2. **Configure Network Settings**:
   - Assign static IPs if needed.
   - Create and configure Network Security Groups (NSGs).

### Step 2: Install Necessary Tools
1. **On Windows VMs**:
   - Install **Wireshark**.
   - Install necessary command-line tools (e.g., PowerShell, Command Prompt).
2. **On Ubuntu VMs**:
   - Install and configure network utilities (e.g., `ping`).

### Step 3: Configure Remote Access
1. **Enable Remote Desktop**:
   - Ensure RDP is active on all Windows VMs.
   ![Remote Desktop Configuration](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/37a7b041-1497-407a-85db-7490ceed5e87)
2. **Set Up SSH for Ubuntu**:
   - Configure SSH access for secure connectivity.

---

## Experimentation and Observations
### Step 4: Capture Network Traffic
1. **Use Wireshark**:
   - Launch Wireshark and start capturing traffic on each VM.
   ![Wireshark Interface](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/dff18278-38f0-4817-a638-39b58a44948a)
2. **Generate Traffic**:
   - Use various protocols to create network activity: SSH, RDP, DNS, HTTP/S, ICMP.
   ![Traffic Generation](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/31d1f2c2-6b3c-47cb-b060-af83a2333f59)

3. **Analyze Captured Traffic**:
   - Observe and analyze traffic patterns in Wireshark.
   - Document findings for future reference.
   ![Traffic Analysis](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/f8119c6f-1902-4439-ae27-b25a2caaa63d)

### Step 5: Experiment with Network Security Groups (NSGs)
1. **Configure NSGs**:
   - Create rules to allow or deny specific traffic types.
   ![NSG Configuration](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/e989eaec-8702-4648-9d45-e6ac7427d137)
   - Test different configurations by applying rules and observing their impact.
   ![Testing NSG Rules](https://github.com/ahmed86-star/Azure-Wireshark-Network-Lab/assets/113064932/15f4ad35-017c-473c-b4f4-91d0897b9dcb)

2. **Test Traffic**:
   - Verify connectivity and behavior under different NSG rules.
   - Analyze how traffic is blocked or allowed based on the configurations.

---

## Summary
This lab successfully met its objectives of:
- Capturing and analyzing network traffic using Wireshark.
- Experimenting with NSG configurations to secure and manage network traffic in Azure.

### Key Takeaways:
1. **Practical Skills**: Enhanced understanding of network protocols and traffic analysis in a cloud environment.
2. **Hands-On Experience**: Gained insights into setting up secure network configurations using NSGs.
3. **Documentation**: Created a reference guide for future projects and learning.

The lab highlights the importance of network traffic analysis and security configurations in maintaining secure and efficient cloud-based environments.

---

## References
- [Wireshark Documentation](https://www.wireshark.org/docs/)
- [Microsoft Azure Documentation](https://docs.microsoft.com/en-us/azure/)
