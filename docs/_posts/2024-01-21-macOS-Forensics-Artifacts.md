---
title: macOS Forensics Artifacts
date: 2024-01-21 00:00:00 +0000
categories: [TryHackMe, Forensics]
tags: [macos, forensics, artifacts, tryhackme]
image:
  path: https://github.com/user-attachments/assets/bbf1b268-f238-4838-a2bc-7ea707780421
  alt: macOS Forensics Artifacts Room Banner
---

# macOS Forensics Artifacts

This room builds upon the knowledge gained from the "macOS Forensics: The Basics" room, diving deeper into the forensic artifacts present in macOS systems and how to analyze them effectively.

## Task 1: Introduction

To mount the provided disk image, we use the `apfs-fuse` command:

```bash
apfs-fuse -v 4 mac-disk.img ~/mac
```

## Task 2: Before We Begin

For parsing plist files in macOS, we can use the `plistutil` utility.

## Task 3: System Information

### OS Installation Date
The OS was installed on: `2024-12-08 17:42:28 GMT`

### Country Code
The machine's country code is: `AE`

### Last Boot Time
The last system boot occurred at: `2025-01-19 15:47:05 GMT`

## Task 4: Network Information

### Network Interface
The built-in network interface is: `en0`

### Router IP
The last connected router's IP address was: `192.168.64.1`

## Task 5: Account Activity

### Last Logged-in User
Username: `thm`

### Password Hint
The password hint is: `count to 5`

### Last Logout
The last user logout occurred at: `Jan 19 07:52:43`

## Task 6: Evidence of Execution

### Last Command
The last executed command was: `vim creds.txt`

### Terminal Session GUID
Session GUID: `452AEA93-AEE7-420B-871E-C57053E15DD0`

### Terminal Closure
The terminal was last closed at: `2025-01-19 15:52:33`

### Terminal Focus Duration
The terminal was in focus for: `176` seconds

## Task 7: File System Activity

### Users/thm Folder View
Viewing options: `Open in list view`

### Last Finder Directory
Last visited directory: `Recents`

## Task 8: Connected Devices

### Bluetooth Information
The relevant stream in the knowledgeC database is: `Bluetooth/isConnected`

## Task 9: Conclusion

This room provided valuable insights into macOS forensic artifacts and their analysis. Understanding these artifacts is crucial for effective digital forensics investigations on macOS systems.

![Room Completion](https://github.com/user-attachments/assets/51f1a58b-e4c4-4ce1-aafe-368e9b616c00) 