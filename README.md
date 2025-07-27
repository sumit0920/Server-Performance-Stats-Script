# 🖥️ Server Stats - Bash Monitoring Script

A powerful and portable Bash script to monitor essential server performance statistics like CPU, memory, disk usage, running processes, and more. This is a useful tool for system administrators and DevOps engineers.

---

### 🔗 Project URL
```
https://roadmap.sh/projects/server-stats
```
## 📌 Features

- ✅ Total CPU usage (User, System, Idle)
- ✅ Memory usage (Free vs Used with percentage)
- ✅ Disk usage (Free vs Used with percentage)
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by Memory usage
- ✅ OS & Kernel information
- ✅ System uptime and load averages
- ✅ Logged-in users
- ✅ Failed SSH login attempts (last 24 hours)

---

## 🚀 Usage

### 1. Clone the repository

```
git clone https://github.com/sumit0920/server-stats.git
cd server-stats
```
### 2. Make the script executable

```
chmod +x server-stats.sh
```
### 3. Run the script
```
./server-stats.sh
```
### 📷 Sample Output 
```
=========================
Server Performance Stats
========================
```
```
📦 OS & Kernel Info:
Linux ubuntu-server 5.15.0-91-generic ...

⏱️ Uptime:
up 2 days, 3 hours

📊 Load Average (1m, 5m, 15m):
0.15, 0.12, 0.09

👥 Logged In Users:
user1  pts/0   Jul 27 08:15 (10.0.0.5)

💻 Total CPU Usage:
User: 12.0%  System: 5.3%  Idle: 80.7%

🧠 Memory Usage:
Used: 1732MB / Total: 3920MB (44.18%)

💽 Disk Usage:
Used: 8.1G / Total: 25G (34% used)

🔥 Top 5 CPU Consuming Processes:
  PID  PPID CMD                         %CPU
  987  2345 /usr/lib/firefox/firefox    15.3
  ...

🧵 Top 5 Memory Consuming Processes:
  PID  PPID CMD                         %MEM
  1245 1123 /usr/lib/firefox/firefox    12.7
  ...

🚫 Failed Login Attempts (last 24h):
4

✅ Script execution completed!

```
### Summary Table

```

| Section              | Command Used              | Purpose                        |
| -------------------- | ------------------------- | ------------------------------ |
| OS Info              | uname -a                  | System version, kernel         |
| Uptime               | uptime -p                 | Human-readable uptime          |
| Load Average         | uptime, awk               | Load average for 1,5,15 mins   |
| Logged In Users      | who                       | List current users             |
| CPU Usage            | top -bn1, awk             | Show %CPU used by system, user |
| Memory Usage         | free -m, awk              | Show memory in MB and usage %  |
| Disk Usage           | df -h --total, awk`       | Show total disk used/free      |
| Top CPU Processes    | ps, sort, head            | Show top 5 CPU-intensive       |
| Top Memory Processes | ps, sort, head            | Show top 5 RAM-intensive       |
| Failed Logins (24h)  | journalctl, grep, wc -l   | Count SSH failures             |


```
### 📂 File Structure
```
server-stats/
├── server-stats.sh     # Main Bash script
├── README.md           # Documentation

```

### 📜 License
MIT License – use freely, credit appreciated!

### 👤 Author
Sumit Sharma

🌐 LinkedIn: https://www.linkedin.com/in/sumitsharma-ss/

🐙 GitHub: https://github.com/sumit0920

🐦 X / Twitter: https://x.com/sumitsharma_95

### ⭐️ Show Your Support
If you find this useful, give it a ⭐️ on GitHub and share it with others!


