#!/bin/bash

# Get absolute path to this script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export CHIP_ROOT="$SCRIPT_DIR"

# -------------------------------
# Common design variables
# -------------------------------
export PDK=sky130B
export PDK_ROOT="$HOME/open_pdks/sky130"
export OPEN_PDKS_ROOT="$HOME/open_pdks/sky130"

# -------------------------------
# Xschem
# -------------------------------
export XSCHEM_LIBRARY_PATH="$CHIP_ROOT/xschem/symbols:$CHIP_ROOT/xschem/projects"
export XSCHEMRC="$CHIP_ROOT/xschem/projects/xschemrc"

# -------------------------------
# Ngspice
# -------------------------------
export NGSPICE_SIM_DIR="$CHIP_ROOT/ngspice"

# -------------------------------
# Magic
# -------------------------------
export MAGIC_RC="$CHIP_ROOT/magic/magicrc"
export MAGTYPE=mag

# -------------------------------
# Netgen
# -------------------------------
export NETGEN_SETUP="$CHIP_ROOT/netgen/netgen_setup.tcl"

# -------------------------------
# IRSim (optional)
# -------------------------------
export IRSIM_RC="$CHIP_ROOT/irsim/irsimrc"

# -------------------------------
# Final check
# -------------------------------
echo "✅ Environment setup complete!"
echo "CHIP_ROOT  = $CHIP_ROOT"
echo "PDK        = $PDK"
echo "PDK_ROOT   = $PDK_ROOT"
echo "XSCHEMRC   = $XSCHEMRC"
