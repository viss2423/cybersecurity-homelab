#!/bin/bash

# Automated Nmap Scanning Script
# Usage: ./nmap_auto.sh <target_ip>

if [ -z "$1" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

TARGET=$1
OUTPUT_DIR="../1-recon-enum/outputs"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "[*] Starting Nmap scan on $TARGET"
echo "[*] Timestamp: $TIMESTAMP"

# Quick scan
echo "[*] Running quick scan..."
nmap -sS -T4 -F "$TARGET" -oN "$OUTPUT_DIR/quick_scan_${TARGET}_${TIMESTAMP}.txt"

# Service version detection
echo "[*] Running service version detection..."
nmap -sV -T4 "$TARGET" -oN "$OUTPUT_DIR/service_scan_${TARGET}_${TIMESTAMP}.txt"

# Full port scan
echo "[*] Running full port scan..."
nmap -sS -T4 -p- "$TARGET" -oN "$OUTPUT_DIR/full_scan_${TARGET}_${TIMESTAMP}.txt"

# Aggressive scan
echo "[*] Running aggressive scan..."
nmap -A "$TARGET" -oN "$OUTPUT_DIR/aggressive_scan_${TARGET}_${TIMESTAMP}.txt"

echo "[*] Scans completed. Results saved to $OUTPUT_DIR"
