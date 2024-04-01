-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ShakeebZacky:user:RGB_to_RGBX:1.0
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Real_Time_Video_Filter_RGB_to_RGBX_0_0 IS
  PORT (
    RGB_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    clk : IN STD_LOGIC;
    address_in : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    address_out : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    writeEnable_in : IN STD_LOGIC;
    RGBX_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    writeEnable_out : OUT STD_LOGIC
  );
END Real_Time_Video_Filter_RGB_to_RGBX_0_0;

ARCHITECTURE Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch OF Real_Time_Video_Filter_RGB_to_RGBX_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT RGB_to_RGBX IS
    PORT (
      RGB_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      clk : IN STD_LOGIC;
      address_in : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
      address_out : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      writeEnable_in : IN STD_LOGIC;
      RGBX_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      writeEnable_out : OUT STD_LOGIC
    );
  END COMPONENT RGB_to_RGBX;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch: ARCHITECTURE IS "RGB_to_RGBX,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch : ARCHITECTURE IS "Real_Time_Video_Filter_RGB_to_RGBX_0_0,RGB_to_RGBX,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : RGB_to_RGBX
    PORT MAP (
      RGB_in => RGB_in,
      clk => clk,
      address_in => address_in,
      address_out => address_out,
      writeEnable_in => writeEnable_in,
      RGBX_out => RGBX_out,
      writeEnable_out => writeEnable_out
    );
END Real_Time_Video_Filter_RGB_to_RGBX_0_0_arch;
