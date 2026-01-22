# Initial Access (SSH)

## Goal
Validate SSH access to the Ubuntu victim VM from Kali.

## Command
```bash
ssh labuser@192.168.56.102
```

## Evidence Collected
- `authlog_tail_200.txt` (from Ubuntu `/var/log/auth.log`)

## Defender View
- SSH authentication events are recorded in:
  - `/var/log/auth.log`
