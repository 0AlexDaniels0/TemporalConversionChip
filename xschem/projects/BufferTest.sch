v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -70 70 -70 {lab=GND}
N 130 -70 180 -70 {lab=VIN}
N 210 120 210 150 {lab=VDD}
N 210 210 210 250 {lab=GND}
N 260 -70 300 -70 {lab=VOUT}
C {gnd.sym} 30 -70 1 0 {name=l1 lab=GND}
C {vsource.sym} 100 -70 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 5n 10n)" savecurrent=false}
C {lab_pin.sym} 150 -70 1 0 {name=p1 sig_type=std_logic lab=VIN}
C {ngspice_probe.sym} 160 -70 0 0 {name=r3}
C {code_shown.sym} -300 -390 0 0 {name=s1 only_toplevel=false 
value="
.include /home/alexa/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
tran 10p 50n
write /home/alexa/chip_design/xschem/simulations/BinaryToTemporal.raw
.save all
plot v(VOUT)
.endc
.options acct list
.option numdgt=6
"}
C {sky130_fd_pr/corner.sym} 440 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 210 180 0 0 {name=V2 value=DC 1.8 savecurrent=false}
C {lab_pin.sym} 210 130 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 210 250 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 290 -70 1 0 {name=p2 sig_type=std_logic lab=VOUT}
C {ngspice_probe.sym} 300 -70 0 0 {name=r1}
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_stdcells/buf_2.sym} 220 -70 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
