v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 -80 -20 -80 {lab=GND}
N 260 -80 300 -80 {lab=VOUT1}
N 300 -20 300 20 {lab=GND}
N 300 -80 360 -80 {lab=VOUT1}
N 40 -80 90 -80 {lab=VIN}
N 170 -80 200 -80 {lab=#net1}
N 130 0 130 30 {lab=VDD}
N 130 90 130 130 {lab=GND}
N 440 -80 490 -80 {lab=VOUT2}
C {res.sym} 230 -80 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 300 -50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -60 -80 1 0 {name=l1 lab=GND}
C {vsource.sym} 10 -80 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 10n 20n)" savecurrent=false}
C {gnd.sym} 300 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 60 -80 1 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 330 -80 1 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {code_shown.sym} -170 -380 0 0 {name=s1 only_toplevel=false 
value="
.include $PDK_ROOT/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
tran 10p 50n
write BinToTemp.raw
.save all
plot v(VIN) v(VOUT1) v(VOUT2)
.endc
.options acct list
.option numdgt=6
"}
C {ngspice_probe.sym} 340 -80 0 0 {name=r2}
C {ngspice_probe.sym} 70 -80 0 0 {name=r3}
C {sky130_fd_pr/corner.sym} 520 -310 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 130 60 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} 130 10 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 130 130 0 0 {name=l3 lab=GND}
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_stdcells/buf_1.sym} 130 -80 0 0 {name=x1 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_stdcells/buf_1.sym} 400 -80 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 470 -80 1 0 {name=p4 sig_type=std_logic lab=VOUT2}
C {ngspice_probe.sym} 470 -80 0 0 {name=r4}
