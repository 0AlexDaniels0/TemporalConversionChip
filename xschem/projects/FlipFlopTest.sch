v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -510 -30 -480 -30 {lab=GND}
N -510 110 -480 110 {lab=GND}
N -420 110 -340 110 {lab=#net1}
N -420 -30 -340 -30 {lab=VIN1}
N 650 -310 650 -280 {lab=VDD}
N 650 -220 650 -180 {lab=GND}
N -340 -10 -340 110 {lab=#net1}
N -340 -10 -240 -10 {lab=#net1}
N -260 -30 -240 -30 {lab=TEST1}
N -60 -30 -30 -30 {lab=VOUT}
C {vsource.sym} -450 -30 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 3n 5n)" savecurrent=false}
C {gnd.sym} -510 -30 1 0 {name=l2 lab=GND}
C {code_shown.sym} -520 -340 0 0 {name=s1 only_toplevel=false 
value="
.include $PDK_ROOT/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
tran 10p 30n
write FlipFlopTest.raw
plot v(VIN1) v(TEST1) v(VOUT)
.endc

.options acct list
" }
C {gnd.sym} -510 110 1 0 {name=l1 lab=GND}
C {lab_pin.sym} -390 -30 1 0 {name=p3 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} -250 -30 1 0 {name=p5 sig_type=std_logic lab=TEST1}
C {ngspice_probe.sym} -360 -30 0 0 {name=r3}
C {vsource.sym} -450 110 1 0 {name=V2 value="PULSE(0 1.8 0n 100p 100p 3n 5n)" savecurrent=false}
C {sky130_fd_pr/corner.sym} 480 -280 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 650 -250 0 0 {name=V3 value=1.8 savecurrent=false}
C {lab_pin.sym} 650 -300 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 650 -180 0 0 {name=l3 lab=GND}
C {sky130_stdcells/dlxtp_1.sym} -150 -20 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -300 -30 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} -40 -30 1 0 {name=p7 sig_type=std_logic lab=VOUT}
C {ngspice_probe.sym} -40 -30 0 0 {name=r1}
