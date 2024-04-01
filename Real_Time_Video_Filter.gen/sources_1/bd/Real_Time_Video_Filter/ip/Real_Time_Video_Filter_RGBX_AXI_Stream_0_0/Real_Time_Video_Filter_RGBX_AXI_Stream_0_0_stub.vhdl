-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  1 12:35:31 2024
-- Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               a:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter.gen/sources_1/bd/Real_Time_Video_Filter/ip/Real_Time_Video_Filter_RGBX_AXI_Stream_0_0/Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_stub.vhdl
-- Design      : Real_Time_Video_Filter_RGBX_AXI_Stream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Real_Time_Video_Filter_RGBX_AXI_Stream_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 18 downto 0 );
    RGBX : in STD_LOGIC_VECTOR ( 15 downto 0 );
    writeEnable : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC
  );

end Real_Time_Video_Filter_RGBX_AXI_Stream_0_0;

architecture stub of Real_Time_Video_Filter_RGBX_AXI_Stream_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,address[18:0],RGBX[15:0],writeEnable,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tlast,m_axis_tready,m_axis_tuser";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RGBX_AXI_Stream,Vivado 2020.2";
begin
end;
