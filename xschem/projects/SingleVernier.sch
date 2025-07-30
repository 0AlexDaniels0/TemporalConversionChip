v {xschem version=3.4.8RC file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 1250 -1050 1280 -1050 {lab=GND}
N 2530 -1050 2560 -1050 {lab=VOUT}
N 1250 -910 1280 -910 {lab=GND}
N 1340 -910 1420 -910 {lab=VIN2}
N 1340 -1050 1420 -1050 {lab=VIN1}
N 2410 -1330 2410 -1300 {lab=VDD}
N 2410 -1240 2410 -1200 {lab=GND}
N 1500 -1050 1540 -1050 {lab=#net1}
N 1620 -1050 1660 -1050 {lab=#net2}
N 1740 -1050 1780 -1050 {lab=#net3}
N 1500 -910 1540 -910 {lab=#net4}
N 1620 -910 1660 -910 {lab=#net5}
N 1960 -1050 2000 -1050 {lab=#net6}
N 2080 -1050 2120 -1050 {lab=#net7}
N 2200 -1050 2240 -1050 {lab=#net8}
N 1860 -1050 1880 -1050 {lab=#net9}
N 1740 -910 1770 -910 {lab=#net10}
N 1850 -910 2350 -910 {lab=#net11}
N 2320 -1050 2350 -1050 {lab=#net12}
N 2350 -1030 2350 -910 {lab=#net11}
C {vsource.sym} 1310 -1050 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 5n 10n)" savecurrent=false}
C {gnd.sym} 1250 -1050 1 0 {name=l2 lab=GND}
C {code_shown.sym} 1240 -1360 0 0 {name=s1 only_toplevel=false 
value="
.include /home/alexa/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
tran 10p 30n
write /home/alexa/chip_design/xschem/simulations/VernierDelay.raw
plot v(VIN1) v(VOUT)
.endc

.options acct list
" }
C {lab_pin.sym} 2550 -1050 1 0 {name=p7 sig_type=std_logic lab=VOUT}
C {gnd.sym} 1250 -910 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 1370 -1050 1 0 {name=p3 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 1380 -910 1 0 {name=p5 sig_type=std_logic lab=VIN2}
C {ngspice_probe.sym} 2550 -1050 0 0 {name=r2}
C {ngspice_probe.sym} 1400 -1050 0 0 {name=r3}
C {ngspice_probe.sym} 1380 -910 0 0 {name=r4}
C {vsource.sym} 1310 -910 1 0 {name=V2 value="PULSE(0 1.8 0n 100p 100p 5n 10n)" savecurrent=false}
C {sky130_fd_pr/corner.sym} 2240 -1300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 2410 -1270 0 0 {name=V3 value=1.8 savecurrent=false}
C {lab_pin.sym} 2410 -1320 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 2410 -1200 0 0 {name=l3 lab=GND}
C {sky130_stdcells/dlxtp_1.sym} 2440 -1040 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1700 -910 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1580 -910 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1460 -910 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1820 -1050 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1700 -1050 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1580 -1050 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1460 -1050 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 2280 -1050 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 2160 -1050 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 2040 -1050 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1920 -1050 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1810 -910 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
