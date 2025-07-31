v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 -340 -780 -340 {lab=GND}
N -620 -360 -540 -360 {lab=VIN1}
N -150 -580 -150 -550 {lab=VDD}
N -150 -490 -150 -450 {lab=GND}
N -240 -340 -200 -340 {lab=#net1}
N -240 -360 -200 -360 {lab=t0}
N 100 -360 120 -360 {lab=t1}
N 100 -340 120 -340 {lab=#net2}
N 420 -360 440 -360 {lab=t2}
N 420 -340 440 -340 {lab=#net3}
N -220 -320 -200 -320 {lab=VDD}
N 100 -320 120 -320 {lab=VDD}
N 420 -320 440 -320 {lab=VDD}
N -560 -320 -540 -320 {lab=VDD}
N 420 -320 420 -210 {lab=VDD}
N -560 -320 -560 -210 {lab=VDD}
N 440 -300 440 -240 {lab=GND}
N -540 -240 440 -240 {lab=GND}
N -540 -300 -540 -240 {lab=GND}
N -620 -240 -540 -240 {lab=GND}
N 120 -300 120 -240 {lab=GND}
N 100 -320 100 -210 {lab=VDD}
N -200 -300 -200 -240 {lab=GND}
N -220 -320 -220 -210 {lab=VDD}
N -560 -210 1140 -210 {lab=VDD}
N 1140 -210 1980 -210 {lab=VDD}
N 1060 -340 1100 -340 {lab=#net4}
N 1060 -360 1100 -360 {lab=t4}
N 1400 -360 1420 -360 {lab=t5}
N 1400 -340 1420 -340 {lab=#net5}
N 1720 -360 1740 -360 {lab=t6}
N 1720 -340 1740 -340 {lab=#net6}
N 1080 -320 1100 -320 {lab=VDD}
N 1400 -320 1420 -320 {lab=VDD}
N 1720 -320 1740 -320 {lab=VDD}
N 1720 -320 1720 -210 {lab=VDD}
N 1740 -300 1740 -240 {lab=GND}
N 1420 -300 1420 -240 {lab=GND}
N 1400 -320 1400 -210 {lab=VDD}
N 1100 -300 1100 -240 {lab=GND}
N 1080 -320 1080 -210 {lab=VDD}
N 440 -240 1460 -240 {lab=GND}
N 1460 -240 1980 -240 {lab=GND}
N 740 -320 740 -210 {lab=VDD}
N 760 -300 760 -240 {lab=GND}
N 740 -320 760 -320 {lab=VDD}
N 740 -340 760 -340 {lab=#net7}
N 740 -360 760 -360 {lab=t3}
N -680 -380 -680 -360 {lab=GND}
N -720 -340 -540 -340 {lab=VIN2}
N 2040 -340 2110 -340 {lab=#net8}
N 2040 -360 2060 -360 {lab=t7}
N 2060 -420 2060 -360 {lab=t7}
N 1740 -420 1740 -360 {lab=t6}
N 1420 -420 1420 -360 {lab=t5}
N 1100 -420 1100 -360 {lab=t4}
N 760 -410 760 -360 {lab=t3}
N 440 -420 440 -360 {lab=t2}
N 120 -420 120 -360 {lab=t1}
N -200 -420 -200 -360 {lab=t0}
C {vsource.sym} -750 -340 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 5n 50n)" savecurrent=false}
C {gnd.sym} -680 -380 2 0 {name=l2 lab=GND}
C {code_shown.sym} -780 -880 0 0 {name=s1 only_toplevel=false 
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
C {lab_pin.sym} -580 -360 1 0 {name=p3 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} -580 -340 3 0 {name=p5 sig_type=std_logic lab=VIN2}
C {ngspice_probe.sym} -580 -360 0 0 {name=r3}
C {ngspice_probe.sym} -580 -340 1 0 {name=r4}
C {vsource.sym} -650 -360 1 0 {name=V2 value="PULSE(0 1.8 0n 100p 100p 5n 51n)" savecurrent=false}
C {sky130_fd_pr/corner.sym} -370 -550 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -150 -520 0 0 {name=V3 value=1.8 savecurrent=false}
C {lab_pin.sym} -150 -570 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -150 -450 0 0 {name=l3 lab=GND}
C {gnd.sym} -810 -340 1 0 {name=l1 lab=GND}
C {lab_pin.sym} -560 -210 2 1 {name=p4 sig_type=std_logic lab=VDD
}
C {gnd.sym} -620 -240 0 0 {name=l4 lab=GND}
C {VernierSymbol.sym} -390 -330 0 0 {name=x16}
C {VernierSymbol.sym} -50 -330 0 0 {name=x1}
C {VernierSymbol.sym} 270 -330 0 0 {name=x2}
C {VernierSymbol.sym} 590 -330 0 0 {name=x3}
C {VernierSymbol.sym} 910 -330 0 0 {name=x4}
C {VernierSymbol.sym} 1250 -330 0 0 {name=x7}
C {VernierSymbol.sym} 1570 -330 0 0 {name=x8}
C {VernierSymbol.sym} 1890 -330 0 0 {name=x9}
C {opin.sym} -200 -420 0 0 {name=p2 lab=t0}
C {opin.sym} 120 -420 0 0 {name=p6 lab=t1}
C {opin.sym} 440 -420 0 0 {name=p7 lab=t2}
C {opin.sym} 760 -410 0 0 {name=p8 lab=t3}
C {opin.sym} 1100 -420 0 0 {name=p9 lab=t4}
C {opin.sym} 1420 -420 0 0 {name=p10 lab=t5}
C {opin.sym} 1740 -420 0 0 {name=p11 lab=t6}
C {opin.sym} 2060 -420 0 0 {name=p12 lab=t7}
C {noconn.sym} 2110 -340 0 1 {name=l5}
