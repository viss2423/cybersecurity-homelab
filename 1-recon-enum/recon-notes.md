# Recon Notes (Ubuntu)

## Target
- IP: 192.168.56.102

## Commands Used
```bash
nmap -sC -sV 192.168.56.102 -oN ubuntu_quickscan.txt
nmap -p- 192.168.56.102 -oN ubuntu_allports.txt
```

## Findings
- Summarize open ports and services here (from your output files).

## Next Steps
- Validate SSH access (legit creds)
- Add a web target for OWASP testing (Juice Shop)
- Start collecting defender-side evidence from logs
