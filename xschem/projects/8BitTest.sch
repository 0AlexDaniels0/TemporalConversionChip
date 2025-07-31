v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1400 -50 -1370 -50 {lab=GND}
N -1210 -70 -1130 -70 {lab=#net1}
N -610 -370 -610 -340 {lab=VDD}
N -610 -280 -610 -240 {lab=GND}
N -1150 -30 -1130 -30 {lab=VDD}
N -1150 -30 -1150 80 {lab=VDD}
N -1130 -10 -1130 50 {lab=GND}
N -1210 50 -1130 50 {lab=GND}
N -1270 -90 -1270 -70 {lab=GND}
N -1310 -50 -1130 -50 {lab=#net2}
N -830 -70 -790 -70 {lab=t0}
N -830 -50 -790 -50 {lab=t1}
N -830 -30 -790 -30 {lab=t2}
N -830 -10 -790 -10 {lab=t3}
N -830 10 -790 10 {lab=t4}
N -830 30 -790 30 {lab=t5}
N -830 50 -790 50 {lab=t6}
N -830 70 -790 70 {lab=t7}
C {vsource.sym} -1340 -50 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 5n 50n)" savecurrent=false}
C {gnd.sym} -1270 -90 2 0 {name=l2 lab=GND}
C {code_shown.sym} -1430 -430 0 0 {name=s1 only_toplevel=false 
value="
.include $PDK_ROOT/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
tran 10p 300n
write VernierTest.raw
plot v(VIN1) v(VIN2)
plot v(t0) v(t1)+2 v(t2)+4 v(t3)+6 v(t4)+8 v(t5)+10 v(t6)+12 v(t7)+14
.endc

.options acct list
.option numdgt=6
" }
C {vsource.sym} -1240 -70 1 0 {name=V2 value="PULSE(0 1.8 0n 100p 100p 5n 51n)" savecurrent=false}
C {sky130_fd_pr/corner.sym} -550 -340 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -610 -310 0 0 {name=V3 value=1.8 savecurrent=false}
C {lab_pin.sym} -610 -360 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -610 -240 0 0 {name=l3 lab=GND}
C {gnd.sym} -1400 -50 1 0 {name=l1 lab=GND}
C {lab_pin.sym} -1150 80 2 1 {name=p4 sig_type=std_logic lab=VDD
}
C {gnd.sym} -1210 50 0 0 {name=l4 lab=GND}
C {Vernier8Bit.sym} -980 0 0 0 {name=x1}
C {lab_pin.sym} -790 -70 2 0 {name=p3 sig_type=std_logic lab=t0}
C {lab_pin.sym} -790 -50 2 0 {name=p2 sig_type=std_logic lab=t1}
C {lab_pin.sym} -790 -30 2 0 {name=p5 sig_type=std_logic lab=t2
}
C {lab_pin.sym} -790 -10 2 0 {name=p6 sig_type=std_logic lab=t3}
C {lab_pin.sym} -790 10 2 0 {name=p7 sig_type=std_logic lab=t4}
C {lab_pin.sym} -790 30 2 0 {name=p8 sig_type=std_logic lab=t5}
C {lab_pin.sym} -790 50 2 0 {name=p9 sig_type=std_logic lab=t6}
C {lab_pin.sym} -790 70 2 0 {name=p10 sig_type=std_logic lab=t7}
