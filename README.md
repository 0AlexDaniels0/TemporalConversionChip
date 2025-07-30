

This project implements a temporal-to-binary and binary-to-temporal conversion chip, developed in collaboration with NIST. It uses a Vernier delay line constructed from D flip-flops to translate pulse timing into binary values. The system will later incorporate ReRAM (simulated via OpenVAF) and a full chip layout in Magic. All work is done within the TemporalConversionChip folder that you are cloning, and for this project, you need to have already Xschem, Magic, Netgen, NGSPICE, and IRSIM working on your default directories. Afterwards, when cloning this repository, all work will be done inside of it as it has local varaibles.

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

### 1. Clone the repository

```bash
git clone https://github.com/0AlexDaniels0/TemporalConversionChip.git
cd TemporalConversionChip
```

### 2. Initialize the environment

Before launching Xschem or other tools, run:

```bash
source setup_env.sh
```

🔁 **You must run this command in every new terminal session before working on the project.**

This script:

- Sets local environment variables (e.g., `PDK_ROOT`, `XSCHEM_LIBRARY_PATH`, etc.)
- Ensures tools like Xschem, NGSpice, and Magic use the local project directories
- Redirects simulation outputs to `xschem/simulations/` instead of cluttering your schematic folder
- Prevents hardcoded `/home/username/...` paths, making this project portable across machines

---

### ✅ Optional: Automate setup

To avoid running the script manually every time, add this to your `~/.bashrc` or `~/.zshrc`:

```bash
if [ -f "$HOME/TemporalChip/setup_env.sh" ]; then
  source "$HOME/TemporalChip/setup_env.sh"
fi
```
