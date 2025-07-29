v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 -10 -190 -10 {lab=GND}
N -130 -10 -100 -10 {lab=VIN}
N 1080 -290 1080 -260 {lab=VDD}
N 1080 -200 1080 -160 {lab=GND}
N -20 -10 20 -10 {lab=#net1}
N 100 -10 140 -10 {lab=#net2}
N 220 -10 260 -10 {lab=#net3}
N 340 -10 380 -10 {lab=#net4}
N 460 -10 500 -10 {lab=#net5}
N 580 -10 620 -10 {lab=#net6}
N 700 -10 740 -10 {lab=#net7}
N 820 -10 860 -10 {lab=#net8}
N 940 -10 980 -10 {lab=#net9}
N 1060 -10 1100 -10 {lab=#net10}
N 1180 -10 1220 -10 {lab=#net11}
N 1300 -10 1340 -10 {lab=#net12}
N 1420 -10 1460 -10 {lab=#net13}
N 1540 -10 1580 -10 {lab=#net14}
N 1660 -10 1700 -10 {lab=VOUT}
N 1780 -10 1820 -10 {lab=#net15}
N 1800 -10 1820 -10 {lab=#net15}
C {vsource.sym} -160 -10 1 0 {name=V1 value="PULSE(0 1.8 0n 100p 100p 2.5n 5n)" savecurrent=false}
C {gnd.sym} -220 -10 1 0 {name=l2 lab=GND}
C {lab_pin.sym} -110 -10 1 0 {name=p3 sig_type=std_logic lab=VIN}
C {ngspice_probe.sym} -120 -10 0 0 {name=r2}
C {vsource.sym} 1080 -230 0 0 {name=V2 value=DC 1.8 savecurrent=false}
C {lab_pin.sym} 1080 -280 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} 1080 -160 0 0 {name=l3 lab=GND}
C {code_shown.sym} 210 -390 0 0 {name=s2 only_toplevel=false 
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
C {sky130_fd_pr/corner.sym} 1240 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_stdcells/inv_1.sym} -60 -10 0 0 {name=x1 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 60 -10 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 180 -10 0 0 {name=x3 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 300 -10 0 0 {name=x4 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 420 -10 0 0 {name=x5 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 540 -10 0 0 {name=x6 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 660 -10 0 0 {name=x7 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 780 -10 0 0 {name=x8 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 900 -10 0 0 {name=x9 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1020 -10 0 0 {name=x10 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1140 -10 0 0 {name=x11 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1260 -10 0 0 {name=x12 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1380 -10 0 0 {name=x13 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1500 -10 0 0 {name=x14 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1620 -10 0 0 {name=x15 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1740 -10 0 0 {name=x16 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ngspice_probe.sym} 1820 -10 0 0 {name=r3}
C {lab_pin.sym} 1680 -10 1 0 {name=p2 sig_type=std_logic lab=VOUT}
