-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  1 12:35:31 2024
-- Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGB_to_RGBX_0_0_stub.vhdl
-- Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    RGB_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    address_in : in STD_LOGIC_VECTOR ( 18 downto 0 );
    address_out : out STD_LOGIC_VECTOR ( 18 downto 0 );
    writeEnable_in : in STD_LOGIC;
    RGBX_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeEnable_out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RGB_in[11:0],clk,address_in[18:0],address_out[18:0],writeEnable_in,RGBX_out[15:0],writeEnable_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RGB_to_RGBX,Vivado 2020.2";
begin
end;
