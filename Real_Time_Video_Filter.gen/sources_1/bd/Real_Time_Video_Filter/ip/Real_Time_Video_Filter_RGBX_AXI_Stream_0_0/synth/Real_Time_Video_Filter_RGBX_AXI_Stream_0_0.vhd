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

-- IP VLNV: Andrew_Ha:user:RGBX_AXI_Stream:1.0
-- IP Revision: 11

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Real_Time_Video_Filter_RGBX_AXI_Stream_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    address : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    RGBX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    writeEnable : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tuser : OUT STD_LOGIC
  );
END Real_Time_Video_Filter_RGBX_AXI_Stream_0_0;

ARCHITECTURE Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch OF Real_Time_Video_Filter_RGBX_AXI_Stream_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT RGBX_AXI_Stream IS
    PORT (
      clk : IN STD_LOGIC;
      address : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
      RGBX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      writeEnable : IN STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tuser : OUT STD_LOGIC
    );
  END COMPONENT RGBX_AXI_Stream;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch: ARCHITECTURE IS "RGBX_AXI_Stream,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch : ARCHITECTURE IS "Real_Time_Video_Filter_RGBX_AXI_Stream_0_0,RGBX_AXI_Stream,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : RGBX_AXI_Stream
    PORT MAP (
      clk => clk,
      address => address,
      RGBX => RGBX,
      writeEnable => writeEnable,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tdata => m_axis_tdata,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser
    );
END Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_arch;
