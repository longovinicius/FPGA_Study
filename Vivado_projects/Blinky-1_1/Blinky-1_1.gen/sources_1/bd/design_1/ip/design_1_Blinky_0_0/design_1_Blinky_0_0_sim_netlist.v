// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Mar 28 14:12:29 2025
// Host        : BRJGSN325259 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/longo/FPGA_projects/Blinky-1_1/Blinky-1_1.gen/sources_1/bd/design_1/ip/design_1_Blinky_0_0/design_1_Blinky_0_0_sim_netlist.v
// Design      : design_1_Blinky_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Blinky_0_0,Blinky,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Blinky,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_Blinky_0_0
   (sysclk,
    blinky_o);
  input sysclk;
  output blinky_o;

  wire blinky_o;
  wire sysclk;

  design_1_Blinky_0_0_Blinky U0
       (.blinky_o(blinky_o),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Blinky" *) 
module design_1_Blinky_0_0_Blinky
   (blinky_o,
    sysclk);
  output blinky_o;
  input sysclk;

  wire blinky_o;
  wire blinky_reg_i_1_n_0;
  wire clear;
  wire ctr_reg1;
  wire ctr_reg1_carry__0_n_0;
  wire ctr_reg1_carry__0_n_1;
  wire ctr_reg1_carry__0_n_2;
  wire ctr_reg1_carry__0_n_3;
  wire ctr_reg1_carry__1_n_0;
  wire ctr_reg1_carry__1_n_1;
  wire ctr_reg1_carry__1_n_2;
  wire ctr_reg1_carry__1_n_3;
  wire ctr_reg1_carry__2_n_1;
  wire ctr_reg1_carry__2_n_2;
  wire ctr_reg1_carry__2_n_3;
  wire ctr_reg1_carry_i_1__0_n_0;
  wire ctr_reg1_carry_i_1__1_n_0;
  wire ctr_reg1_carry_i_1__2_n_0;
  wire ctr_reg1_carry_i_1_n_0;
  wire ctr_reg1_carry_i_2__0_n_0;
  wire ctr_reg1_carry_i_2__1_n_0;
  wire ctr_reg1_carry_i_2__2_n_0;
  wire ctr_reg1_carry_i_2_n_0;
  wire ctr_reg1_carry_i_3__0_n_0;
  wire ctr_reg1_carry_i_3__1_n_0;
  wire ctr_reg1_carry_i_3__2_n_0;
  wire ctr_reg1_carry_i_3_n_0;
  wire ctr_reg1_carry_i_4__0_n_0;
  wire ctr_reg1_carry_i_4__1_n_0;
  wire ctr_reg1_carry_i_4__2_n_0;
  wire ctr_reg1_carry_i_4_n_0;
  wire ctr_reg1_carry_i_5__0_n_0;
  wire ctr_reg1_carry_i_5__1_n_0;
  wire ctr_reg1_carry_i_5__2_n_0;
  wire ctr_reg1_carry_i_5_n_0;
  wire ctr_reg1_carry_i_6__0_n_0;
  wire ctr_reg1_carry_i_6__1_n_0;
  wire ctr_reg1_carry_i_6_n_0;
  wire ctr_reg1_carry_i_7__0_n_0;
  wire ctr_reg1_carry_i_7_n_0;
  wire ctr_reg1_carry_i_8__0_n_0;
  wire ctr_reg1_carry_i_8_n_0;
  wire ctr_reg1_carry_n_0;
  wire ctr_reg1_carry_n_1;
  wire ctr_reg1_carry_n_2;
  wire ctr_reg1_carry_n_3;
  wire \ctr_reg[0]_i_2_n_0 ;
  wire [31:0]ctr_reg_reg;
  wire \ctr_reg_reg[0]_i_1_n_0 ;
  wire \ctr_reg_reg[0]_i_1_n_1 ;
  wire \ctr_reg_reg[0]_i_1_n_2 ;
  wire \ctr_reg_reg[0]_i_1_n_3 ;
  wire \ctr_reg_reg[0]_i_1_n_4 ;
  wire \ctr_reg_reg[0]_i_1_n_5 ;
  wire \ctr_reg_reg[0]_i_1_n_6 ;
  wire \ctr_reg_reg[0]_i_1_n_7 ;
  wire \ctr_reg_reg[12]_i_1_n_0 ;
  wire \ctr_reg_reg[12]_i_1_n_1 ;
  wire \ctr_reg_reg[12]_i_1_n_2 ;
  wire \ctr_reg_reg[12]_i_1_n_3 ;
  wire \ctr_reg_reg[12]_i_1_n_4 ;
  wire \ctr_reg_reg[12]_i_1_n_5 ;
  wire \ctr_reg_reg[12]_i_1_n_6 ;
  wire \ctr_reg_reg[12]_i_1_n_7 ;
  wire \ctr_reg_reg[16]_i_1_n_0 ;
  wire \ctr_reg_reg[16]_i_1_n_1 ;
  wire \ctr_reg_reg[16]_i_1_n_2 ;
  wire \ctr_reg_reg[16]_i_1_n_3 ;
  wire \ctr_reg_reg[16]_i_1_n_4 ;
  wire \ctr_reg_reg[16]_i_1_n_5 ;
  wire \ctr_reg_reg[16]_i_1_n_6 ;
  wire \ctr_reg_reg[16]_i_1_n_7 ;
  wire \ctr_reg_reg[20]_i_1_n_0 ;
  wire \ctr_reg_reg[20]_i_1_n_1 ;
  wire \ctr_reg_reg[20]_i_1_n_2 ;
  wire \ctr_reg_reg[20]_i_1_n_3 ;
  wire \ctr_reg_reg[20]_i_1_n_4 ;
  wire \ctr_reg_reg[20]_i_1_n_5 ;
  wire \ctr_reg_reg[20]_i_1_n_6 ;
  wire \ctr_reg_reg[20]_i_1_n_7 ;
  wire \ctr_reg_reg[24]_i_1_n_0 ;
  wire \ctr_reg_reg[24]_i_1_n_1 ;
  wire \ctr_reg_reg[24]_i_1_n_2 ;
  wire \ctr_reg_reg[24]_i_1_n_3 ;
  wire \ctr_reg_reg[24]_i_1_n_4 ;
  wire \ctr_reg_reg[24]_i_1_n_5 ;
  wire \ctr_reg_reg[24]_i_1_n_6 ;
  wire \ctr_reg_reg[24]_i_1_n_7 ;
  wire \ctr_reg_reg[28]_i_1_n_1 ;
  wire \ctr_reg_reg[28]_i_1_n_2 ;
  wire \ctr_reg_reg[28]_i_1_n_3 ;
  wire \ctr_reg_reg[28]_i_1_n_4 ;
  wire \ctr_reg_reg[28]_i_1_n_5 ;
  wire \ctr_reg_reg[28]_i_1_n_6 ;
  wire \ctr_reg_reg[28]_i_1_n_7 ;
  wire \ctr_reg_reg[4]_i_1_n_0 ;
  wire \ctr_reg_reg[4]_i_1_n_1 ;
  wire \ctr_reg_reg[4]_i_1_n_2 ;
  wire \ctr_reg_reg[4]_i_1_n_3 ;
  wire \ctr_reg_reg[4]_i_1_n_4 ;
  wire \ctr_reg_reg[4]_i_1_n_5 ;
  wire \ctr_reg_reg[4]_i_1_n_6 ;
  wire \ctr_reg_reg[4]_i_1_n_7 ;
  wire \ctr_reg_reg[8]_i_1_n_0 ;
  wire \ctr_reg_reg[8]_i_1_n_1 ;
  wire \ctr_reg_reg[8]_i_1_n_2 ;
  wire \ctr_reg_reg[8]_i_1_n_3 ;
  wire \ctr_reg_reg[8]_i_1_n_4 ;
  wire \ctr_reg_reg[8]_i_1_n_5 ;
  wire \ctr_reg_reg[8]_i_1_n_6 ;
  wire \ctr_reg_reg[8]_i_1_n_7 ;
  wire sysclk;
  wire [3:0]NLW_ctr_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ctr_reg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ctr_reg1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ctr_reg1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ctr_reg1_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_ctr_reg1_carry__3_O_UNCONNECTED;
  wire [3:3]\NLW_ctr_reg_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    blinky_reg_i_1
       (.I0(clear),
        .I1(blinky_o),
        .O(blinky_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blinky_reg_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(blinky_reg_i_1_n_0),
        .Q(blinky_o),
        .R(1'b0));
  CARRY4 ctr_reg1_carry
       (.CI(1'b0),
        .CO({ctr_reg1_carry_n_0,ctr_reg1_carry_n_1,ctr_reg1_carry_n_2,ctr_reg1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ctr_reg1_carry_i_1__2_n_0,ctr_reg1_carry_i_2_n_0,ctr_reg1_carry_i_3__1_n_0,ctr_reg1_carry_i_4__1_n_0}),
        .O(NLW_ctr_reg1_carry_O_UNCONNECTED[3:0]),
        .S({ctr_reg1_carry_i_5__2_n_0,ctr_reg1_carry_i_6_n_0,ctr_reg1_carry_i_7_n_0,ctr_reg1_carry_i_8_n_0}));
  CARRY4 ctr_reg1_carry__0
       (.CI(ctr_reg1_carry_n_0),
        .CO({ctr_reg1_carry__0_n_0,ctr_reg1_carry__0_n_1,ctr_reg1_carry__0_n_2,ctr_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ctr_reg1_carry_i_1__0_n_0,ctr_reg1_carry_i_2__0_n_0,1'b0,1'b0}),
        .O(NLW_ctr_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({ctr_reg1_carry_i_3_n_0,ctr_reg1_carry_i_4_n_0,ctr_reg1_carry_i_5__1_n_0,ctr_reg1_carry_i_6__1_n_0}));
  CARRY4 ctr_reg1_carry__1
       (.CI(ctr_reg1_carry__0_n_0),
        .CO({ctr_reg1_carry__1_n_0,ctr_reg1_carry__1_n_1,ctr_reg1_carry__1_n_2,ctr_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ctr_reg1_carry_i_1__1_n_0,ctr_reg1_carry_i_2__1_n_0,ctr_reg1_carry_i_3__0_n_0,ctr_reg1_carry_i_4__0_n_0}),
        .O(NLW_ctr_reg1_carry__1_O_UNCONNECTED[3:0]),
        .S({ctr_reg1_carry_i_5_n_0,ctr_reg1_carry_i_6__0_n_0,ctr_reg1_carry_i_7__0_n_0,ctr_reg1_carry_i_8__0_n_0}));
  CARRY4 ctr_reg1_carry__2
       (.CI(ctr_reg1_carry__1_n_0),
        .CO({ctr_reg1,ctr_reg1_carry__2_n_1,ctr_reg1_carry__2_n_2,ctr_reg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ctr_reg_reg[31],1'b0,1'b0,ctr_reg1_carry_i_1_n_0}),
        .O(NLW_ctr_reg1_carry__2_O_UNCONNECTED[3:0]),
        .S({ctr_reg1_carry_i_2__2_n_0,ctr_reg1_carry_i_3__2_n_0,ctr_reg1_carry_i_4__2_n_0,ctr_reg1_carry_i_5__0_n_0}));
  CARRY4 ctr_reg1_carry__3
       (.CI(ctr_reg1),
        .CO(NLW_ctr_reg1_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ctr_reg1_carry__3_O_UNCONNECTED[3:1],clear}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    ctr_reg1_carry_i_1
       (.I0(ctr_reg_reg[25]),
        .O(ctr_reg1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_1__0
       (.I0(ctr_reg_reg[14]),
        .I1(ctr_reg_reg[15]),
        .O(ctr_reg1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_1__1
       (.I0(ctr_reg_reg[22]),
        .I1(ctr_reg_reg[23]),
        .O(ctr_reg1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_1__2
       (.I0(ctr_reg_reg[6]),
        .I1(ctr_reg_reg[7]),
        .O(ctr_reg1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_2
       (.I0(ctr_reg_reg[4]),
        .I1(ctr_reg_reg[5]),
        .O(ctr_reg1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_2__0
       (.I0(ctr_reg_reg[12]),
        .I1(ctr_reg_reg[13]),
        .O(ctr_reg1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_2__1
       (.I0(ctr_reg_reg[20]),
        .I1(ctr_reg_reg[21]),
        .O(ctr_reg1_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_2__2
       (.I0(ctr_reg_reg[30]),
        .I1(ctr_reg_reg[31]),
        .O(ctr_reg1_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_3
       (.I0(ctr_reg_reg[14]),
        .I1(ctr_reg_reg[15]),
        .O(ctr_reg1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ctr_reg1_carry_i_3__0
       (.I0(ctr_reg_reg[19]),
        .O(ctr_reg1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_3__1
       (.I0(ctr_reg_reg[2]),
        .I1(ctr_reg_reg[3]),
        .O(ctr_reg1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_3__2
       (.I0(ctr_reg_reg[28]),
        .I1(ctr_reg_reg[29]),
        .O(ctr_reg1_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_4
       (.I0(ctr_reg_reg[12]),
        .I1(ctr_reg_reg[13]),
        .O(ctr_reg1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ctr_reg1_carry_i_4__0
       (.I0(ctr_reg_reg[17]),
        .O(ctr_reg1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_reg1_carry_i_4__1
       (.I0(ctr_reg_reg[0]),
        .I1(ctr_reg_reg[1]),
        .O(ctr_reg1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_4__2
       (.I0(ctr_reg_reg[26]),
        .I1(ctr_reg_reg[27]),
        .O(ctr_reg1_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_5
       (.I0(ctr_reg_reg[22]),
        .I1(ctr_reg_reg[23]),
        .O(ctr_reg1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctr_reg1_carry_i_5__0
       (.I0(ctr_reg_reg[25]),
        .I1(ctr_reg_reg[24]),
        .O(ctr_reg1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_5__1
       (.I0(ctr_reg_reg[10]),
        .I1(ctr_reg_reg[11]),
        .O(ctr_reg1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctr_reg1_carry_i_5__2
       (.I0(ctr_reg_reg[6]),
        .I1(ctr_reg_reg[7]),
        .O(ctr_reg1_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_6
       (.I0(ctr_reg_reg[4]),
        .I1(ctr_reg_reg[5]),
        .O(ctr_reg1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_6__0
       (.I0(ctr_reg_reg[20]),
        .I1(ctr_reg_reg[21]),
        .O(ctr_reg1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctr_reg1_carry_i_6__1
       (.I0(ctr_reg_reg[8]),
        .I1(ctr_reg_reg[9]),
        .O(ctr_reg1_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_7
       (.I0(ctr_reg_reg[2]),
        .I1(ctr_reg_reg[3]),
        .O(ctr_reg1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctr_reg1_carry_i_7__0
       (.I0(ctr_reg_reg[19]),
        .I1(ctr_reg_reg[18]),
        .O(ctr_reg1_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctr_reg1_carry_i_8
       (.I0(ctr_reg_reg[0]),
        .I1(ctr_reg_reg[1]),
        .O(ctr_reg1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctr_reg1_carry_i_8__0
       (.I0(ctr_reg_reg[17]),
        .I1(ctr_reg_reg[16]),
        .O(ctr_reg1_carry_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ctr_reg[0]_i_2 
       (.I0(ctr_reg_reg[0]),
        .O(\ctr_reg[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[0]_i_1_n_7 ),
        .Q(ctr_reg_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ctr_reg_reg[0]_i_1_n_0 ,\ctr_reg_reg[0]_i_1_n_1 ,\ctr_reg_reg[0]_i_1_n_2 ,\ctr_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ctr_reg_reg[0]_i_1_n_4 ,\ctr_reg_reg[0]_i_1_n_5 ,\ctr_reg_reg[0]_i_1_n_6 ,\ctr_reg_reg[0]_i_1_n_7 }),
        .S({ctr_reg_reg[3:1],\ctr_reg[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[8]_i_1_n_5 ),
        .Q(ctr_reg_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[8]_i_1_n_4 ),
        .Q(ctr_reg_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[12]_i_1_n_7 ),
        .Q(ctr_reg_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[12]_i_1 
       (.CI(\ctr_reg_reg[8]_i_1_n_0 ),
        .CO({\ctr_reg_reg[12]_i_1_n_0 ,\ctr_reg_reg[12]_i_1_n_1 ,\ctr_reg_reg[12]_i_1_n_2 ,\ctr_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[12]_i_1_n_4 ,\ctr_reg_reg[12]_i_1_n_5 ,\ctr_reg_reg[12]_i_1_n_6 ,\ctr_reg_reg[12]_i_1_n_7 }),
        .S(ctr_reg_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[12]_i_1_n_6 ),
        .Q(ctr_reg_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[12]_i_1_n_5 ),
        .Q(ctr_reg_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[12]_i_1_n_4 ),
        .Q(ctr_reg_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[16] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[16]_i_1_n_7 ),
        .Q(ctr_reg_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[16]_i_1 
       (.CI(\ctr_reg_reg[12]_i_1_n_0 ),
        .CO({\ctr_reg_reg[16]_i_1_n_0 ,\ctr_reg_reg[16]_i_1_n_1 ,\ctr_reg_reg[16]_i_1_n_2 ,\ctr_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[16]_i_1_n_4 ,\ctr_reg_reg[16]_i_1_n_5 ,\ctr_reg_reg[16]_i_1_n_6 ,\ctr_reg_reg[16]_i_1_n_7 }),
        .S(ctr_reg_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[17] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[16]_i_1_n_6 ),
        .Q(ctr_reg_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[18] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[16]_i_1_n_5 ),
        .Q(ctr_reg_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[19] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[16]_i_1_n_4 ),
        .Q(ctr_reg_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[0]_i_1_n_6 ),
        .Q(ctr_reg_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[20] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[20]_i_1_n_7 ),
        .Q(ctr_reg_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[20]_i_1 
       (.CI(\ctr_reg_reg[16]_i_1_n_0 ),
        .CO({\ctr_reg_reg[20]_i_1_n_0 ,\ctr_reg_reg[20]_i_1_n_1 ,\ctr_reg_reg[20]_i_1_n_2 ,\ctr_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[20]_i_1_n_4 ,\ctr_reg_reg[20]_i_1_n_5 ,\ctr_reg_reg[20]_i_1_n_6 ,\ctr_reg_reg[20]_i_1_n_7 }),
        .S(ctr_reg_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[21] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[20]_i_1_n_6 ),
        .Q(ctr_reg_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[22] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[20]_i_1_n_5 ),
        .Q(ctr_reg_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[23] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[20]_i_1_n_4 ),
        .Q(ctr_reg_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[24] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[24]_i_1_n_7 ),
        .Q(ctr_reg_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[24]_i_1 
       (.CI(\ctr_reg_reg[20]_i_1_n_0 ),
        .CO({\ctr_reg_reg[24]_i_1_n_0 ,\ctr_reg_reg[24]_i_1_n_1 ,\ctr_reg_reg[24]_i_1_n_2 ,\ctr_reg_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[24]_i_1_n_4 ,\ctr_reg_reg[24]_i_1_n_5 ,\ctr_reg_reg[24]_i_1_n_6 ,\ctr_reg_reg[24]_i_1_n_7 }),
        .S(ctr_reg_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[25] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[24]_i_1_n_6 ),
        .Q(ctr_reg_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[26] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[24]_i_1_n_5 ),
        .Q(ctr_reg_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[27] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[24]_i_1_n_4 ),
        .Q(ctr_reg_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[28] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[28]_i_1_n_7 ),
        .Q(ctr_reg_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[28]_i_1 
       (.CI(\ctr_reg_reg[24]_i_1_n_0 ),
        .CO({\NLW_ctr_reg_reg[28]_i_1_CO_UNCONNECTED [3],\ctr_reg_reg[28]_i_1_n_1 ,\ctr_reg_reg[28]_i_1_n_2 ,\ctr_reg_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[28]_i_1_n_4 ,\ctr_reg_reg[28]_i_1_n_5 ,\ctr_reg_reg[28]_i_1_n_6 ,\ctr_reg_reg[28]_i_1_n_7 }),
        .S(ctr_reg_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[29] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[28]_i_1_n_6 ),
        .Q(ctr_reg_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[0]_i_1_n_5 ),
        .Q(ctr_reg_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[30] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[28]_i_1_n_5 ),
        .Q(ctr_reg_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[31] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[28]_i_1_n_4 ),
        .Q(ctr_reg_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[0]_i_1_n_4 ),
        .Q(ctr_reg_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[4]_i_1_n_7 ),
        .Q(ctr_reg_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[4]_i_1 
       (.CI(\ctr_reg_reg[0]_i_1_n_0 ),
        .CO({\ctr_reg_reg[4]_i_1_n_0 ,\ctr_reg_reg[4]_i_1_n_1 ,\ctr_reg_reg[4]_i_1_n_2 ,\ctr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[4]_i_1_n_4 ,\ctr_reg_reg[4]_i_1_n_5 ,\ctr_reg_reg[4]_i_1_n_6 ,\ctr_reg_reg[4]_i_1_n_7 }),
        .S(ctr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[4]_i_1_n_6 ),
        .Q(ctr_reg_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[4]_i_1_n_5 ),
        .Q(ctr_reg_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[4]_i_1_n_4 ),
        .Q(ctr_reg_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[8]_i_1_n_7 ),
        .Q(ctr_reg_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg_reg[8]_i_1 
       (.CI(\ctr_reg_reg[4]_i_1_n_0 ),
        .CO({\ctr_reg_reg[8]_i_1_n_0 ,\ctr_reg_reg[8]_i_1_n_1 ,\ctr_reg_reg[8]_i_1_n_2 ,\ctr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg_reg[8]_i_1_n_4 ,\ctr_reg_reg[8]_i_1_n_5 ,\ctr_reg_reg[8]_i_1_n_6 ,\ctr_reg_reg[8]_i_1_n_7 }),
        .S(ctr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\ctr_reg_reg[8]_i_1_n_6 ),
        .Q(ctr_reg_reg[9]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
