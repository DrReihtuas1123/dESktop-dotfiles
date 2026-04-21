#!/bin/bash

# ==================================================== #
#                                                      #
#       Script to output the network rate formated     #
#       Written by ChatGPT                             #
#                                                      #
# ==================================================== #

# --- Configuration ---
iface=$(ip route get 8.8.8.8 2>/dev/null | awk '{print $5; exit}')
iface=${iface:-eth0}
rx_path="/sys/class/net/$iface/statistics/rx_bytes"
state_file="/tmp/waybar_net_rx_$iface"

# --- Get current RX bytes ---
if [[ ! -r "$rx_path" ]]; then
  echo "   0.0 B/s"
  exit 1
fi

current_rx=$(cat "$rx_path")

# --- On first run, just store and return 0 ---
if [[ ! -f "$state_file" ]]; then
  echo "$current_rx" >"$state_file"
  echo "   0.0 B/s"
  exit 0
fi

# --- Calculate delta ---
prev_rx=$(cat "$state_file")
echo "$current_rx" >"$state_file"
delta=$((current_rx - prev_rx)) # bytes per second

# --- Auto-scale formatting ---
if ((delta < 1024)); then
  # Less than 1 KB
  printf "%6.0f  B/s\n" "$delta"
elif ((delta < 1048576)); then
  # Less than 1 MB
  kb=$(echo "$delta / 1024" | bc -l)
  printf "%6.1fKB/s\n" "$kb"
else
  # 1 MB or more
  mb=$(echo "$delta / 1048576" | bc -l)
  printf "%6.1fMB/s\n" "$mb"
fi
