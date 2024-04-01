----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Andrew Ha
-- 
-- Create Date: 03/28/2024 01:45:30 AM
-- Design Name: 
-- Module Name: RGBX_AXI_Stream - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: 1.0
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

entity RGBX_AXI_Stream is
    Port ( clk : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR(18 downto 0); -- used to signify if vsync occurrs, and only send on odd addresses when we have 2 pixels of data
           RGBX : in STD_LOGIC_VECTOR (15 downto 0);
           writeEnable : in STD_LOGIC;
           
           m_axis_tvalid : out STD_LOGIC := '0';
           m_axis_tdata : out STD_LOGIC_VECTOR(31 downto 0);
           m_axis_tlast : out STD_LOGIC := '0';
           m_axis_tready : in STD_LOGIC;
           m_axis_tuser : out STD_LOGIC := '0'
           );
end RGBX_AXI_Stream;

architecture Behavioral of RGBX_AXI_Stream is

    constant lineWidth      : integer := 640;
    
    signal  isFirstPixel      : std_logic := '0';
    signal  endOfLine       : std_logic := '0';
    signal  dataReady       : std_logic := '0';
    signal  writeData       : std_logic_vector(31 downto 0) := (others => '0');
    
begin
    m_axis_tlast <= endOfLine; -- last pixel of every line occcurs when the address mod lineWidth = 639  
    m_axis_tuser <= isFirstPixel; -- first pixel occurs when the address is 0x00000000 
    
    m_axis_tdata <= writeData;
    m_axis_tvalid <= dataReady;
    
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (writeEnable = '1') then
                writeData(31 downto 16) <= RGBX;
                writeData(15 downto 0) <= writeData(31 downto 16);
                
                case (address(0) = '1') is
                    when true => dataReady <= '1';
                    when others => dataReady <= '0';
                end case;
        
                case ((unsigned(address) mod lineWidth) = (lineWidth - 1)) is
                    when true => endOfLine <= '1';
                    when others => endOfLine <= '0';
                end case;
        
                case ((address(0) = '1') and (unsigned(address(18 downto 1)) = 0)) is
                    when true => isFirstPixel <= '1';
                    when others => isFirstPixel <= '0';
                end case;
                
            else    
                writeData <= writeData;
                isFirstPixel <= '0';
                endOfLine <= '0';
                dataReady <= '0';
            end if;
        end if;    
    end process;

end Behavioral;
