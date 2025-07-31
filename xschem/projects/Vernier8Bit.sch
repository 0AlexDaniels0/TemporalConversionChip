v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1110 250 -1080 250 {lab=VDD}
N -1110 320 -1080 320 {lab=GND}
N -1080 -10 -920 -10 {lab=IN1}
N -1080 10 -920 10 {lab=IN2}
N -620 10 -580 10 {lab=#net1}
N -620 -10 -580 -10 {lab=t0}
N -280 -10 -260 -10 {lab=t1}
N -280 10 -260 10 {lab=#net2}
N 40 -10 60 -10 {lab=t2}
N 40 10 60 10 {lab=#net3}
N -600 30 -580 30 {lab=VDD}
N -280 30 -260 30 {lab=VDD}
N 40 30 60 30 {lab=VDD}
N -940 30 -920 30 {lab=VDD}
N 40 30 40 140 {lab=VDD}
N -940 30 -940 140 {lab=VDD}
N 60 50 60 110 {lab=GND}
N -920 110 60 110 {lab=GND}
N -920 50 -920 110 {lab=GND}
N -1000 110 -920 110 {lab=GND}
N -260 50 -260 110 {lab=GND}
N -280 30 -280 140 {lab=VDD}
N -580 50 -580 110 {lab=GND}
N -600 30 -600 140 {lab=VDD}
N -940 140 760 140 {lab=VDD}
N 760 140 1600 140 {lab=VDD}
N 680 10 720 10 {lab=#net4}
N 680 -10 720 -10 {lab=t4}
N 1020 -10 1040 -10 {lab=t5}
N 1020 10 1040 10 {lab=#net5}
N 1340 -10 1360 -10 {lab=t6}
N 1340 10 1360 10 {lab=#net6}
N 700 30 720 30 {lab=VDD}
N 1020 30 1040 30 {lab=VDD}
N 1340 30 1360 30 {lab=VDD}
N 1340 30 1340 140 {lab=VDD}
N 1360 50 1360 110 {lab=GND}
N 1040 50 1040 110 {lab=GND}
N 1020 30 1020 140 {lab=VDD}
N 720 50 720 110 {lab=GND}
N 700 30 700 140 {lab=VDD}
N 60 110 1080 110 {lab=GND}
N 1080 110 1600 110 {lab=GND}
N 360 30 360 140 {lab=VDD}
N 380 50 380 110 {lab=GND}
N 360 30 380 30 {lab=VDD}
N 360 10 380 10 {lab=#net7}
N 360 -10 380 -10 {lab=t3}
N 1660 10 1730 10 {lab=#net8}
N 1660 -10 1680 -10 {lab=t7}
N 1680 -70 1680 -10 {lab=t7}
N -580 -280 1680 -280 {lab=t0}
N -580 -280 -580 -10 {lab=t0}
N -260 -250 1680 -250 {lab=t1}
N -260 -250 -260 -10 {lab=t1}
N 60 -220 1680 -220 {lab=t2}
N 60 -220 60 -10 {lab=t2}
N 380 -190 1680 -190 {lab=t3}
N 380 -190 380 -10 {lab=t3}
N 720 -160 1680 -160 {lab=t4}
N 720 -160 720 -10 {lab=t4}
N 1040 -130 1680 -130 {lab=t5}
N 1040 -130 1040 -10 {lab=t5}
N 1360 -100 1680 -100 {lab=t6}
N 1360 -100 1360 -10 {lab=t6}
C {ipin.sym} -1110 250 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} -1090 250 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} -1110 320 0 0 {name=p9 lab=GND}
C {lab_pin.sym} -1090 320 1 0 {name=p10 sig_type=std_logic lab=GND}
C {ipin.sym} -1080 -10 0 0 {name=p1 lab=IN1}
C {ipin.sym} -1080 10 0 0 {name=p3 lab=IN2}
C {lab_pin.sym} -940 140 2 1 {name=p4 sig_type=std_logic lab=VDD
}
C {VernierSymbol.sym} -770 20 0 0 {name=x16}
C {VernierSymbol.sym} -430 20 0 0 {name=x1}
C {VernierSymbol.sym} -110 20 0 0 {name=x2}
C {VernierSymbol.sym} 210 20 0 0 {name=x3}
C {VernierSymbol.sym} 530 20 0 0 {name=x4}
C {VernierSymbol.sym} 870 20 0 0 {name=x7}
C {VernierSymbol.sym} 1190 20 0 0 {name=x8}
C {VernierSymbol.sym} 1510 20 0 0 {name=x9}
C {opin.sym} 1680 -280 0 0 {name=p5 lab=t0}
C {opin.sym} 1680 -70 0 0 {name=p15 lab=t7}
C {gnd.sym} -1000 110 1 0 {name=l4 lab=GND}
C {opin.sym} 1680 -250 0 0 {name=p16 lab=t1}
C {opin.sym} 1680 -220 0 0 {name=p17 lab=t2}
C {opin.sym} 1680 -190 0 0 {name=p18 lab=t3}
C {opin.sym} 1680 -160 0 0 {name=p19 lab=t4}
C {opin.sym} 1680 -130 0 0 {name=p20 lab=t5}
C {opin.sym} 1680 -100 0 0 {name=p21 lab=t6}
C {noconn.sym} 1730 10 0 1 {name=l5}
