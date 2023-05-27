// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 26 12:23:40 2023
// Host        : PF2ADN53 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_blk_mem_gen_0_1 -prefix
//               design_1_blk_mem_gen_0_1_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_1_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57424)
`pragma protect data_block
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
pycAnbNjZEiftctSNSDkHDkxmEj4WorCeQ==
`pragma protect end_protected
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
