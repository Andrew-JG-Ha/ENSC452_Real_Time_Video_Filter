-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Mar  1 20:42:17 2024
-- Host        : Shonk running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGB_to_RGBX_0_1_stub.vhdl
-- Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    R_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    G_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    R_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    X_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "R_in[3:0],G_in[3:0],B_in[3:0],clk,R_out[3:0],G_out[3:0],B_out[3:0],X_out[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RGB_to_RGBX,Vivado 2020.2";
begin
end;
