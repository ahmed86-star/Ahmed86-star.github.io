---
title: "🏠 My Homelab Infrastructure - Self-Hosted Services & Learning Lab"
date: 2025-09-21 00:00:00 +0000
categories: [Homelab, Infrastructure, Self-Hosted]
tags: [homelab, proxmox, kubernetes, self-hosted, automation, networking, docker, containers, media-server]
image:
  path: https://images.unsplash.com/flagged/photo-1579274216947-86eaa4b00475?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  alt: Professional homelab setup with servers, networking equipment, and monitoring displays
---

# 🏠 My Homelab Infrastructure

*By Ahmed • September 21, 2025*

![Homelab Infrastructure](https://images.unsplash.com/flagged/photo-1579274216947-86eaa4b00475?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D){: .shadow style="max-width: 100%; height: auto;"}

Welcome to my homelab journey! This is where I experiment with self-hosted services, learn new technologies, and build my personal cloud infrastructure. From media streaming to network monitoring, I run everything locally for privacy, learning, and pure enjoyment.

## 🎯 What is a Homelab?

A homelab is a personal environment where you can experiment with hardware and software without the constraints of production systems. It's your playground for learning, testing new technologies, and hosting services for your home network.

Whether it's a single Raspberry Pi running Pi-hole or a full server rack with enterprise hardware, the goal remains the same: hands-on learning and practical experience with real-world technologies.

## 🖥️ My Hardware Setup

### Proxmox Nodes
- **PVE1** (Primary): Dell PowerEdge R720 - Main virtualization host
- **Ahmed2** (Secondary): HP ProLiant DL380 - Backup and clustering node

### Kubernetes Cluster
- **Control Plane**: Lenovo ThinkCentre M710q Tiny (Intel i3, 16GB RAM)
- **Worker Nodes**: 2x Raspberry Pi 4 (4GB RAM each)

### Storage & Networking
- **Storage**: 8TB RAID-10 array for VM storage
- **Network**: pfSense firewall, managed switches, and VLANs
- **Backup**: Automated daily backups to external storage

## 🔧 Self-Hosted Applications

Here are the key services running in my homelab:

### 📺 Media Services

#### Plex Media Server
![Plex](https://images.unsplash.com/photo-1611162616475-46b635cb6868?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Personal Netflix alternative with hardware transcoding support.
- **Access**: [plex.tv](https://www.plex.tv/)
- **Features**: 4K transcoding, mobile apps, remote access
- **Storage**: 4TB media library

#### Jellyfin
![Jellyfin](https://images.unsplash.com/photo-1489599511986-52c99b50e6e1?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Open-source media server with no subscription requirements.
- **Access**: [jellyfin.org](https://jellyfin.org/)
- **Features**: Free forever, hardware acceleration, live TV

### 🏠 Home Automation

#### Home Assistant
![Home Assistant](https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Central hub for all smart home devices and automation.
- **Access**: [home-assistant.io](https://www.home-assistant.io/)
- **Integrations**: 50+ smart devices
- **Automations**: Lighting, climate, security systems

### 🛡️ Network & Security

#### Pi-hole
![Pi-hole](https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Network-wide ad blocker and DNS sinkhole.
- **Access**: [pi-hole.net](https://pi-hole.net/)
- **Features**: Block ads across all devices
- **Stats**: 30%+ of requests blocked daily

#### Bitwarden
![Bitwarden](https://images.unsplash.com/photo-1555949963-ff9fe0c870eb?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Self-hosted password manager for secure credential storage.
- **Access**: [bitwarden.com](https://bitwarden.com/)
- **Features**: End-to-end encryption, family sharing
- **Security**: Self-hosted for complete control

### 📊 Monitoring & Management

#### Grafana
![Grafana](https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Beautiful dashboards for monitoring all infrastructure metrics.
- **Access**: [grafana.com](https://grafana.com/)
- **Data Sources**: Prometheus, InfluxDB, MySQL
- **Dashboards**: 15+ custom monitoring dashboards

#### Prometheus
![Prometheus](https://images.unsplash.com/photo-1504639725590-34d0984388bd?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Time-series database for collecting and storing metrics.
- **Access**: [prometheus.io](https://prometheus.io/)
- **Metrics**: System resources, application performance
- **Alerts**: Real-time notifications for issues

#### Portainer
![Portainer](https://images.unsplash.com/photo-1605745341112-85968b19335a?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Docker container management made simple.
- **Access**: [portainer.io](https://www.portainer.io/)
- **Features**: Web-based Docker management
- **Containers**: 30+ running containers managed

### ☁️ Cloud Services

#### Nextcloud
![Nextcloud](https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Personal cloud storage and collaboration platform.
- **Access**: [nextcloud.com](https://nextcloud.com/)
- **Features**: File sync, calendar, contacts, notes
- **Storage**: 2TB personal cloud storage

#### Nginx Proxy Manager
![Nginx](https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Reverse proxy with automatic SSL certificate management.
- **Access**: [nginxproxymanager.com](https://nginxproxymanager.com/)
- **Features**: Auto SSL, custom domains, access control
- **Certificates**: Let's Encrypt integration

### 🎮 Entertainment & Media

#### Sonarr & Radarr
![Sonarr](https://images.unsplash.com/photo-1489599511986-52c99b50e6e1?w=400&auto=format&fit=crop){: .shadow style="max-width: 200px; height: auto;"}

Automated TV show and movie collection management.
- **Sonarr**: [sonarr.tv](https://sonarr.tv/)
- **Radarr**: [radarr.video](https://radarr.video/)
- **Features**: Automatic downloads, quality profiles, calendar

## 📈 Infrastructure Monitoring

### System Metrics
- **CPU Usage**: Average 15-25% across all nodes
- **Memory**: 60-70% utilization during peak hours
- **Storage**: 4TB total, 65% utilized
- **Network**: 1Gbps backbone, 100Mbps internet

### Service Uptime
- **Overall Uptime**: 99.8% across all services
- **Planned Maintenance**: Monthly update windows
- **Backup Status**: Daily automated backups successful
- **Security Updates**: Auto-applied for critical patches

## 🔧 Technology Stack

### Virtualization & Containers
```yaml
platforms:
  virtualization: "Proxmox VE 8.0"
  containers: "Docker & Docker Compose"
  orchestration: "Kubernetes (K3s)"
  storage: "ZFS with snapshots"
```

### Networking
```yaml
network:
  firewall: "pfSense with VLANs"
  dns: "Pi-hole + Unbound"
  vpn: "WireGuard for remote access"
  monitoring: "PRTG Network Monitor"
```

### Automation
```yaml
automation:
  configuration: "Ansible playbooks"
  monitoring: "Prometheus + Grafana"
  backups: "Restic + Rclone"
  updates: "Watchtower for containers"
```

## 🚀 Future Plans

### Upcoming Projects
- **AI/ML Lab**: TensorFlow Serving on Kubernetes
- **Edge Computing**: Additional Raspberry Pi nodes
- **Security Lab**: Vulnerability scanning and SIEM
- **Development**: GitLab CE for code repositories

### Hardware Upgrades
- **Storage Expansion**: Add 10TB NAS for long-term archival
- **Network Upgrade**: 10Gbps backbone infrastructure
- **Power Management**: UPS systems for clean shutdowns
- **Cooling**: Improved ventilation for summer months

## 📚 Learning Resources

### Documentation
All configurations, scripts, and documentation are available in my GitHub repository:

**Repository**: [github.com/ahmed86-star/Homelab](https://github.com/ahmed86-star/Homelab)

### What You'll Find
- Docker Compose files for all services
- Ansible playbooks for automation
- Network diagrams and architecture docs
- Troubleshooting guides and best practices

## 💡 Key Takeaways

Building a homelab has been an incredible learning journey. Here are the most important lessons:

1. **Start Small**: Begin with one service and gradually expand
2. **Document Everything**: Future you will thank present you
3. **Monitor Proactively**: Know when things break before users do
4. **Backup Religiously**: Test your backups regularly
5. **Security First**: Keep everything updated and secured

## 🌐 Connect With Me

Want to discuss homelab projects or need advice on self-hosting?

- **Website**: [ahmed1.live](https://www.ahmed1.live)
- **GitHub**: [@ahmed86-star](https://github.com/ahmed86-star)
- **Repository**: [Homelab Documentation](https://github.com/ahmed86-star/Homelab)

## 📊 Current Service Status

All services are monitored in real-time with automated health checks:

| Service | Status | Uptime | Notes |
|---------|--------|--------|-------|
| Plex Media Server | 🟢 Online | 99.9% | Hardware transcoding active |
| Home Assistant | 🟢 Online | 99.8% | 50+ devices connected |
| Pi-hole | 🟢 Online | 99.9% | Blocking 30% of requests |
| Nextcloud | 🟢 Online | 99.7% | 2TB storage, 5 users |
| Bitwarden | 🟢 Online | 99.9% | Secure vault operational |
| Grafana | 🟢 Online | 99.8% | 15 dashboards active |
| Proxmox Cluster | 🟢 Online | 99.9% | HA configuration active |

---

*Last updated: September 21, 2025 | Built with passion for learning and self-hosting 🚀*