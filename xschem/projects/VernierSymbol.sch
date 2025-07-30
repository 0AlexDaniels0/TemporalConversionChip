v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 150 -350 150 {lab=#net1}
N -270 150 -230 150 {lab=#net2}
N -150 150 -110 150 {lab=#net3}
N -390 290 -350 290 {lab=#net4}
N -270 290 -230 290 {lab=#net5}
N -480 390 -450 390 {lab=VDD}
N -480 460 -450 460 {lab=GND}
N -490 150 -470 150 {lab=IN1}
N -490 290 -470 290 {lab=IN2}
N 280 150 300 150 {lab=OUT1}
N -30 150 -10 150 {lab=#net6}
N -150 290 -120 290 {lab=#net7}
N 70 150 100 150 {lab=#net8}
N -40 290 100 290 {lab=OUT2}
N 100 170 100 290 {lab=OUT2}
N 100 290 300 290 {lab=OUT2}
C {sky130_stdcells/dlxtp_1.sym} 190 160 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -480 390 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} -460 390 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} -480 460 0 0 {name=p9 lab=GND}
C {lab_pin.sym} -460 460 1 0 {name=p10 sig_type=std_logic lab=GND}
C {ipin.sym} -490 150 0 0 {name=p1 lab=IN1}
C {ipin.sym} -490 290 0 0 {name=p3 lab=IN2}
C {opin.sym} 300 150 0 0 {name=p4 lab=OUT1}
C {opin.sym} 300 290 0 0 {name=p5 lab=OUT2}
C {sky130_stdcells/buf_1.sym} -190 290 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -310 290 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -430 290 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -70 150 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -190 150 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -310 150 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -430 150 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 30 150 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -80 290 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
