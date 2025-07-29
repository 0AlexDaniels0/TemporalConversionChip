v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 150 -350 150 {lab=#net1}
N 450 150 500 150 {lab=#net2}
N -30 290 500 170 {lab=OUT2}
N -270 150 -230 150 {lab=#net3}
N -150 150 -110 150 {lab=#net4}
N -30 150 10 150 {lab=#net5}
N 90 150 130 150 {lab=#net6}
N 210 150 250 150 {lab=#net7}
N 330 150 370 150 {lab=#net8}
N -390 290 -350 290 {lab=#net9}
N -270 290 -230 290 {lab=#net10}
N -150 290 -110 290 {lab=#net11}
N 290 520 320 520 {lab=VDD}
N 290 590 320 590 {lab=GND}
N -490 150 -470 150 {lab=IN1}
N -490 290 -470 290 {lab=IN2}
N 680 150 700 150 {lab=OUT1}
N -30 290 500 280 {lab=OUT2}
C {sky130_stdcells/dlxtp_1.sym} 590 160 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -70 290 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} 290 520 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} 310 520 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} 290 590 0 0 {name=p9 lab=GND}
C {lab_pin.sym} 310 590 1 0 {name=p10 sig_type=std_logic lab=GND}
C {ipin.sym} -490 150 0 0 {name=p1 lab=IN1}
C {ipin.sym} -490 290 0 0 {name=p3 lab=IN2}
C {opin.sym} 700 150 0 0 {name=p4 lab=OUT1}
C {opin.sym} 500 280 0 0 {name=p5 lab=OUT2}
C {sky130_stdcells/buf_1.sym} -190 290 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -310 290 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -430 290 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 410 150 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 290 150 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 170 150 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 50 150 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -70 150 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -190 150 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -310 150 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -430 150 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
