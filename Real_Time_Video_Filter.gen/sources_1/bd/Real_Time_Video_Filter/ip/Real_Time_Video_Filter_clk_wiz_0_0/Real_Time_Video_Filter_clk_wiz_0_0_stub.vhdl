-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  1 12:35:31 2024
-- Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               a:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter.gen/sources_1/bd/Real_Time_Video_Filter/ip/Real_Time_Video_Filter_clk_wiz_0_0/Real_Time_Video_Filter_clk_wiz_0_0_stub.vhdl
-- Design      : Real_Time_Video_Filter_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Real_Time_Video_Filter_clk_wiz_0_0 is
  Port ( 
    clk_out100 : out STD_LOGIC;
    clk_out50 : out STD_LOGIC;
    clk_out25 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Real_Time_Video_Filter_clk_wiz_0_0;

architecture stub of Real_Time_Video_Filter_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out100,clk_out50,clk_out25,clk_in1";
begin
end;
