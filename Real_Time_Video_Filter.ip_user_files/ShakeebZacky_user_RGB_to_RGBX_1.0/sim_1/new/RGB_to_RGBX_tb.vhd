----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2024 09:33:55 PM
-- Design Name: 
-- Module Name: RGB_to_RGBX_tb - Simulation
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RGB_to_RGBX_tb is
end RGB_to_RGBX_tb;

architecture Simulation of RGB_to_RGBX_tb is

signal r, g, b, out_r, out_g, out_b, out_x : std_logic_vector(3 DOWNTO 0) := (others => '0');
signal clock : std_logic := '0';
signal v, w, v_out, w_out : std_logic := '0';
constant clock_period : time := 2 ns;

begin

PROCESS
begin
wait for clock_period/2;
clock <= not clock;
r <= std_logic_vector(unsigned(r) + 1);
end process;

PROCESS
begin
wait for  16 * clock_period/2;
g <= std_logic_vector(unsigned(g) + 1);
END PROCESS;

PROCESS
begin
wait for 256 * clock_period/2;
b <= std_logic_vector(unsigned(b) + 1);
END PROCESS;

DUT : entity work.RGB_to_RGBX(Behavioral)
    port map(
    R_in => r,
    G_in => g,
    B_in => b,
    clk => clock,
    writeEnable_in => w,
    vsync_in => v,
    R_out => out_r,
    G_out => out_g,
    B_out => out_b,
    X_out => out_x,
    vsync_out => v_out,
    writeEnable_out => w_out
    );

end Simulation;
