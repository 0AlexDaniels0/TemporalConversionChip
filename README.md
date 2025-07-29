

This project implements a temporal-to-binary and binary-to-temporal conversion chip, developed in collaboration with NIST. It uses a Vernier delay line constructed from D flip-flops to translate pulse timing into binary values. The system will later incorporate ReRAM (simulated via OpenVAF) and full chip layout in Magic.

## 🔧 Tools & Folders

- **xschem/**: Schematics, symbols, and simulations
  - `xschem/projects`: Primary schematics
  - `xschem/symbols`: Custom and reused symbols
  - `xschem/simulations`: Netlists and SPICE outputs
- **ngspice/**: Standalone simulation experiments
- **magic/**: Layout design (to be added)
- **netgen/**: Layout vs. Schematic verification
- **irsim/**: Logic simulation experiments
- **sky130/**: Device configuration / setup scripts

## 📦 Setup Instructions

```bash
git clone https://github.com/0AlexDaniels0/TemporalConversionChip.git
cd TemporalConversionChip
source setup_env.sh
