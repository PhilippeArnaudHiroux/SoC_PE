--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Fri May 26 10:30:28 2023
--Host        : LaptopBo running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_0_tri_io : inout STD_LOGIC_VECTOR ( 4 downto 0 );
    arduino_a0_a5_tri_io : inout STD_LOGIC_VECTOR ( 5 downto 0 );
    arduino_ar0_ar13_tri_io : inout STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    arduino_a0_a5_tri_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    arduino_a0_a5_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    arduino_a0_a5_tri_t : out STD_LOGIC_VECTOR ( 5 downto 0 );
    arduino_ar0_ar13_tri_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    arduino_ar0_ar13_tri_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    arduino_ar0_ar13_tri_t : out STD_LOGIC_VECTOR ( 13 downto 0 );
    GPIO_0_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    GPIO_0_tri_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    GPIO_0_tri_t : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal GPIO_0_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_a0_a5_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_a0_a5_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_a0_a5_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_a0_a5_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_a0_a5_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_a0_a5_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_a0_a5_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_a0_a5_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_a0_a5_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_a0_a5_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_a0_a5_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_a0_a5_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_a0_a5_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_a0_a5_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_a0_a5_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_a0_a5_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_a0_a5_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_a0_a5_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_a0_a5_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_a0_a5_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_a0_a5_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_a0_a5_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_a0_a5_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_a0_a5_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_ar0_ar13_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_ar0_ar13_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_ar0_ar13_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal arduino_ar0_ar13_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal arduino_ar0_ar13_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal arduino_ar0_ar13_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal arduino_ar0_ar13_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_ar0_ar13_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_ar0_ar13_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_ar0_ar13_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_ar0_ar13_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal arduino_ar0_ar13_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal arduino_ar0_ar13_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal arduino_ar0_ar13_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal arduino_ar0_ar13_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_ar0_ar13_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_ar0_ar13_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal arduino_ar0_ar13_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal arduino_ar0_ar13_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal arduino_ar0_ar13_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal arduino_ar0_ar13_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_ar0_ar13_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_ar0_ar13_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_ar0_ar13_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_ar0_ar13_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal arduino_ar0_ar13_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal arduino_ar0_ar13_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal arduino_ar0_ar13_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal arduino_ar0_ar13_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_ar0_ar13_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_ar0_ar13_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal arduino_ar0_ar13_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal arduino_ar0_ar13_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal arduino_ar0_ar13_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal arduino_ar0_ar13_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_ar0_ar13_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_ar0_ar13_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_ar0_ar13_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_ar0_ar13_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal arduino_ar0_ar13_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal arduino_ar0_ar13_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal arduino_ar0_ar13_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal arduino_ar0_ar13_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arduino_ar0_ar13_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal arduino_ar0_ar13_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal arduino_ar0_ar13_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal arduino_ar0_ar13_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal arduino_ar0_ar13_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal arduino_ar0_ar13_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal arduino_ar0_ar13_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal arduino_ar0_ar13_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal arduino_ar0_ar13_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal arduino_ar0_ar13_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal arduino_ar0_ar13_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal arduino_ar0_ar13_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal arduino_ar0_ar13_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin
GPIO_0_tri_iobuf_0: component IOBUF
     port map (
      I => GPIO_0_tri_o_0(0),
      IO => GPIO_0_tri_io(0),
      O => GPIO_0_tri_i_0(0),
      T => GPIO_0_tri_t_0(0)
    );
GPIO_0_tri_iobuf_1: component IOBUF
     port map (
      I => GPIO_0_tri_o_1(1),
      IO => GPIO_0_tri_io(1),
      O => GPIO_0_tri_i_1(1),
      T => GPIO_0_tri_t_1(1)
    );
GPIO_0_tri_iobuf_2: component IOBUF
     port map (
      I => GPIO_0_tri_o_2(2),
      IO => GPIO_0_tri_io(2),
      O => GPIO_0_tri_i_2(2),
      T => GPIO_0_tri_t_2(2)
    );
GPIO_0_tri_iobuf_3: component IOBUF
     port map (
      I => GPIO_0_tri_o_3(3),
      IO => GPIO_0_tri_io(3),
      O => GPIO_0_tri_i_3(3),
      T => GPIO_0_tri_t_3(3)
    );
GPIO_0_tri_iobuf_4: component IOBUF
     port map (
      I => GPIO_0_tri_o_4(4),
      IO => GPIO_0_tri_io(4),
      O => GPIO_0_tri_i_4(4),
      T => GPIO_0_tri_t_4(4)
    );
arduino_a0_a5_tri_iobuf_0: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_0(0),
      IO => arduino_a0_a5_tri_io(0),
      O => arduino_a0_a5_tri_i_0(0),
      T => arduino_a0_a5_tri_t_0(0)
    );
arduino_a0_a5_tri_iobuf_1: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_1(1),
      IO => arduino_a0_a5_tri_io(1),
      O => arduino_a0_a5_tri_i_1(1),
      T => arduino_a0_a5_tri_t_1(1)
    );
arduino_a0_a5_tri_iobuf_2: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_2(2),
      IO => arduino_a0_a5_tri_io(2),
      O => arduino_a0_a5_tri_i_2(2),
      T => arduino_a0_a5_tri_t_2(2)
    );
arduino_a0_a5_tri_iobuf_3: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_3(3),
      IO => arduino_a0_a5_tri_io(3),
      O => arduino_a0_a5_tri_i_3(3),
      T => arduino_a0_a5_tri_t_3(3)
    );
arduino_a0_a5_tri_iobuf_4: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_4(4),
      IO => arduino_a0_a5_tri_io(4),
      O => arduino_a0_a5_tri_i_4(4),
      T => arduino_a0_a5_tri_t_4(4)
    );
arduino_a0_a5_tri_iobuf_5: component IOBUF
     port map (
      I => arduino_a0_a5_tri_o_5(5),
      IO => arduino_a0_a5_tri_io(5),
      O => arduino_a0_a5_tri_i_5(5),
      T => arduino_a0_a5_tri_t_5(5)
    );
arduino_ar0_ar13_tri_iobuf_0: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_0(0),
      IO => arduino_ar0_ar13_tri_io(0),
      O => arduino_ar0_ar13_tri_i_0(0),
      T => arduino_ar0_ar13_tri_t_0(0)
    );
arduino_ar0_ar13_tri_iobuf_1: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_1(1),
      IO => arduino_ar0_ar13_tri_io(1),
      O => arduino_ar0_ar13_tri_i_1(1),
      T => arduino_ar0_ar13_tri_t_1(1)
    );
arduino_ar0_ar13_tri_iobuf_10: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_10(10),
      IO => arduino_ar0_ar13_tri_io(10),
      O => arduino_ar0_ar13_tri_i_10(10),
      T => arduino_ar0_ar13_tri_t_10(10)
    );
arduino_ar0_ar13_tri_iobuf_11: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_11(11),
      IO => arduino_ar0_ar13_tri_io(11),
      O => arduino_ar0_ar13_tri_i_11(11),
      T => arduino_ar0_ar13_tri_t_11(11)
    );
arduino_ar0_ar13_tri_iobuf_12: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_12(12),
      IO => arduino_ar0_ar13_tri_io(12),
      O => arduino_ar0_ar13_tri_i_12(12),
      T => arduino_ar0_ar13_tri_t_12(12)
    );
arduino_ar0_ar13_tri_iobuf_13: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_13(13),
      IO => arduino_ar0_ar13_tri_io(13),
      O => arduino_ar0_ar13_tri_i_13(13),
      T => arduino_ar0_ar13_tri_t_13(13)
    );
arduino_ar0_ar13_tri_iobuf_2: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_2(2),
      IO => arduino_ar0_ar13_tri_io(2),
      O => arduino_ar0_ar13_tri_i_2(2),
      T => arduino_ar0_ar13_tri_t_2(2)
    );
arduino_ar0_ar13_tri_iobuf_3: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_3(3),
      IO => arduino_ar0_ar13_tri_io(3),
      O => arduino_ar0_ar13_tri_i_3(3),
      T => arduino_ar0_ar13_tri_t_3(3)
    );
arduino_ar0_ar13_tri_iobuf_4: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_4(4),
      IO => arduino_ar0_ar13_tri_io(4),
      O => arduino_ar0_ar13_tri_i_4(4),
      T => arduino_ar0_ar13_tri_t_4(4)
    );
arduino_ar0_ar13_tri_iobuf_5: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_5(5),
      IO => arduino_ar0_ar13_tri_io(5),
      O => arduino_ar0_ar13_tri_i_5(5),
      T => arduino_ar0_ar13_tri_t_5(5)
    );
arduino_ar0_ar13_tri_iobuf_6: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_6(6),
      IO => arduino_ar0_ar13_tri_io(6),
      O => arduino_ar0_ar13_tri_i_6(6),
      T => arduino_ar0_ar13_tri_t_6(6)
    );
arduino_ar0_ar13_tri_iobuf_7: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_7(7),
      IO => arduino_ar0_ar13_tri_io(7),
      O => arduino_ar0_ar13_tri_i_7(7),
      T => arduino_ar0_ar13_tri_t_7(7)
    );
arduino_ar0_ar13_tri_iobuf_8: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_8(8),
      IO => arduino_ar0_ar13_tri_io(8),
      O => arduino_ar0_ar13_tri_i_8(8),
      T => arduino_ar0_ar13_tri_t_8(8)
    );
arduino_ar0_ar13_tri_iobuf_9: component IOBUF
     port map (
      I => arduino_ar0_ar13_tri_o_9(9),
      IO => arduino_ar0_ar13_tri_io(9),
      O => arduino_ar0_ar13_tri_i_9(9),
      T => arduino_ar0_ar13_tri_t_9(9)
    );
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIO_0_tri_i(4) => GPIO_0_tri_i_4(4),
      GPIO_0_tri_i(3) => GPIO_0_tri_i_3(3),
      GPIO_0_tri_i(2) => GPIO_0_tri_i_2(2),
      GPIO_0_tri_i(1) => GPIO_0_tri_i_1(1),
      GPIO_0_tri_i(0) => GPIO_0_tri_i_0(0),
      GPIO_0_tri_o(4) => GPIO_0_tri_o_4(4),
      GPIO_0_tri_o(3) => GPIO_0_tri_o_3(3),
      GPIO_0_tri_o(2) => GPIO_0_tri_o_2(2),
      GPIO_0_tri_o(1) => GPIO_0_tri_o_1(1),
      GPIO_0_tri_o(0) => GPIO_0_tri_o_0(0),
      GPIO_0_tri_t(4) => GPIO_0_tri_t_4(4),
      GPIO_0_tri_t(3) => GPIO_0_tri_t_3(3),
      GPIO_0_tri_t(2) => GPIO_0_tri_t_2(2),
      GPIO_0_tri_t(1) => GPIO_0_tri_t_1(1),
      GPIO_0_tri_t(0) => GPIO_0_tri_t_0(0),
      arduino_a0_a5_tri_i(5) => arduino_a0_a5_tri_i_5(5),
      arduino_a0_a5_tri_i(4) => arduino_a0_a5_tri_i_4(4),
      arduino_a0_a5_tri_i(3) => arduino_a0_a5_tri_i_3(3),
      arduino_a0_a5_tri_i(2) => arduino_a0_a5_tri_i_2(2),
      arduino_a0_a5_tri_i(1) => arduino_a0_a5_tri_i_1(1),
      arduino_a0_a5_tri_i(0) => arduino_a0_a5_tri_i_0(0),
      arduino_a0_a5_tri_o(5) => arduino_a0_a5_tri_o_5(5),
      arduino_a0_a5_tri_o(4) => arduino_a0_a5_tri_o_4(4),
      arduino_a0_a5_tri_o(3) => arduino_a0_a5_tri_o_3(3),
      arduino_a0_a5_tri_o(2) => arduino_a0_a5_tri_o_2(2),
      arduino_a0_a5_tri_o(1) => arduino_a0_a5_tri_o_1(1),
      arduino_a0_a5_tri_o(0) => arduino_a0_a5_tri_o_0(0),
      arduino_a0_a5_tri_t(5) => arduino_a0_a5_tri_t_5(5),
      arduino_a0_a5_tri_t(4) => arduino_a0_a5_tri_t_4(4),
      arduino_a0_a5_tri_t(3) => arduino_a0_a5_tri_t_3(3),
      arduino_a0_a5_tri_t(2) => arduino_a0_a5_tri_t_2(2),
      arduino_a0_a5_tri_t(1) => arduino_a0_a5_tri_t_1(1),
      arduino_a0_a5_tri_t(0) => arduino_a0_a5_tri_t_0(0),
      arduino_ar0_ar13_tri_i(13) => arduino_ar0_ar13_tri_i_13(13),
      arduino_ar0_ar13_tri_i(12) => arduino_ar0_ar13_tri_i_12(12),
      arduino_ar0_ar13_tri_i(11) => arduino_ar0_ar13_tri_i_11(11),
      arduino_ar0_ar13_tri_i(10) => arduino_ar0_ar13_tri_i_10(10),
      arduino_ar0_ar13_tri_i(9) => arduino_ar0_ar13_tri_i_9(9),
      arduino_ar0_ar13_tri_i(8) => arduino_ar0_ar13_tri_i_8(8),
      arduino_ar0_ar13_tri_i(7) => arduino_ar0_ar13_tri_i_7(7),
      arduino_ar0_ar13_tri_i(6) => arduino_ar0_ar13_tri_i_6(6),
      arduino_ar0_ar13_tri_i(5) => arduino_ar0_ar13_tri_i_5(5),
      arduino_ar0_ar13_tri_i(4) => arduino_ar0_ar13_tri_i_4(4),
      arduino_ar0_ar13_tri_i(3) => arduino_ar0_ar13_tri_i_3(3),
      arduino_ar0_ar13_tri_i(2) => arduino_ar0_ar13_tri_i_2(2),
      arduino_ar0_ar13_tri_i(1) => arduino_ar0_ar13_tri_i_1(1),
      arduino_ar0_ar13_tri_i(0) => arduino_ar0_ar13_tri_i_0(0),
      arduino_ar0_ar13_tri_o(13) => arduino_ar0_ar13_tri_o_13(13),
      arduino_ar0_ar13_tri_o(12) => arduino_ar0_ar13_tri_o_12(12),
      arduino_ar0_ar13_tri_o(11) => arduino_ar0_ar13_tri_o_11(11),
      arduino_ar0_ar13_tri_o(10) => arduino_ar0_ar13_tri_o_10(10),
      arduino_ar0_ar13_tri_o(9) => arduino_ar0_ar13_tri_o_9(9),
      arduino_ar0_ar13_tri_o(8) => arduino_ar0_ar13_tri_o_8(8),
      arduino_ar0_ar13_tri_o(7) => arduino_ar0_ar13_tri_o_7(7),
      arduino_ar0_ar13_tri_o(6) => arduino_ar0_ar13_tri_o_6(6),
      arduino_ar0_ar13_tri_o(5) => arduino_ar0_ar13_tri_o_5(5),
      arduino_ar0_ar13_tri_o(4) => arduino_ar0_ar13_tri_o_4(4),
      arduino_ar0_ar13_tri_o(3) => arduino_ar0_ar13_tri_o_3(3),
      arduino_ar0_ar13_tri_o(2) => arduino_ar0_ar13_tri_o_2(2),
      arduino_ar0_ar13_tri_o(1) => arduino_ar0_ar13_tri_o_1(1),
      arduino_ar0_ar13_tri_o(0) => arduino_ar0_ar13_tri_o_0(0),
      arduino_ar0_ar13_tri_t(13) => arduino_ar0_ar13_tri_t_13(13),
      arduino_ar0_ar13_tri_t(12) => arduino_ar0_ar13_tri_t_12(12),
      arduino_ar0_ar13_tri_t(11) => arduino_ar0_ar13_tri_t_11(11),
      arduino_ar0_ar13_tri_t(10) => arduino_ar0_ar13_tri_t_10(10),
      arduino_ar0_ar13_tri_t(9) => arduino_ar0_ar13_tri_t_9(9),
      arduino_ar0_ar13_tri_t(8) => arduino_ar0_ar13_tri_t_8(8),
      arduino_ar0_ar13_tri_t(7) => arduino_ar0_ar13_tri_t_7(7),
      arduino_ar0_ar13_tri_t(6) => arduino_ar0_ar13_tri_t_6(6),
      arduino_ar0_ar13_tri_t(5) => arduino_ar0_ar13_tri_t_5(5),
      arduino_ar0_ar13_tri_t(4) => arduino_ar0_ar13_tri_t_4(4),
      arduino_ar0_ar13_tri_t(3) => arduino_ar0_ar13_tri_t_3(3),
      arduino_ar0_ar13_tri_t(2) => arduino_ar0_ar13_tri_t_2(2),
      arduino_ar0_ar13_tri_t(1) => arduino_ar0_ar13_tri_t_1(1),
      arduino_ar0_ar13_tri_t(0) => arduino_ar0_ar13_tri_t_0(0)
    );
end STRUCTURE;
