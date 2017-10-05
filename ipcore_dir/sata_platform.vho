------------------------------------------------------------------------------
--$Date: 2010/03/05 10:19:34 $
--$Revision: 1.3 $
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/     Vendor : Xilinx
--  \   \         Version : 2.1
--  /   /         Application : RocketIO GTP Transceiver Wizard
-- /___/   /\     Filename : sata_platform.vho
-- \   \  /  \
--  \___\/\___\
--
--
-- Instantiation Template
-- Generated by Xilinx RocketIO GTP Transceiver Wizard
-- 
-- 
-- (c) Copyright 2006-2010 Xilinx, Inc. All rights reserved.
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


--**************************Component Declarations*****************************


component SATA_PLATFORM 
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTPRESET_SPEEDUP    : integer   := 0; -- Set to 1 to speed up sim reset
    WRAPPER_SIM_PLL_PERDIV2         : bit_vector:= x"14d" -- Set to the VCO Unit Interval time
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --TILE0  (Location)

    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    TILE0_RXCHARISCOMMA0_OUT                : out  std_logic;
    TILE0_RXCHARISCOMMA1_OUT                : out  std_logic_vector(1 downto 0);
    TILE0_RXCHARISK0_OUT                    : out  std_logic;
    TILE0_RXCHARISK1_OUT                    : out  std_logic_vector(1 downto 0);
    TILE0_RXDISPERR0_OUT                    : out  std_logic;
    TILE0_RXDISPERR1_OUT                    : out  std_logic_vector(1 downto 0);
    TILE0_RXNOTINTABLE0_OUT                 : out  std_logic;
    TILE0_RXNOTINTABLE1_OUT                 : out  std_logic_vector(1 downto 0);
    ------------------- Receive Ports - Clock Correction Ports -----------------
    TILE0_RXCLKCORCNT0_OUT                  : out  std_logic_vector(2 downto 0);
    TILE0_RXCLKCORCNT1_OUT                  : out  std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    TILE0_RXBYTEISALIGNED0_OUT              : out  std_logic;
    TILE0_RXBYTEISALIGNED1_OUT              : out  std_logic;
    TILE0_RXENMCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENMCOMMAALIGN1_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN1_IN               : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    TILE0_RXDATA0_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXDATA1_OUT                       : out  std_logic_vector(15 downto 0);
    TILE0_RXRECCLK0_OUT                     : out  std_logic;
    TILE0_RXRECCLK1_OUT                     : out  std_logic;
    TILE0_RXUSRCLK0_IN                      : in   std_logic;
    TILE0_RXUSRCLK1_IN                      : in   std_logic;
    TILE0_RXUSRCLK20_IN                     : in   std_logic;
    TILE0_RXUSRCLK21_IN                     : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    TILE0_RXELECIDLE0_OUT                   : out  std_logic;
    TILE0_RXELECIDLE1_OUT                   : out  std_logic;
    TILE0_RXN0_IN                           : in   std_logic;
    TILE0_RXN1_IN                           : in   std_logic;
    TILE0_RXP0_IN                           : in   std_logic;
    TILE0_RXP1_IN                           : in   std_logic;
    -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    TILE0_RXSTATUS0_OUT                     : out  std_logic_vector(2 downto 0);
    TILE0_RXSTATUS1_OUT                     : out  std_logic_vector(2 downto 0);
    --------------------- Shared Ports - Tile and PLL Ports --------------------
    TILE0_CLKIN_IN                          : in   std_logic;
    TILE0_GTPRESET_IN                       : in   std_logic;
    TILE0_PLLLKDET_OUT                      : out  std_logic;
    TILE0_REFCLKOUT_OUT                     : out  std_logic;
    TILE0_RESETDONE0_OUT                    : out  std_logic;
    TILE0_RESETDONE1_OUT                    : out  std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    TILE0_TXCHARISK0_IN                     : in   std_logic;
    TILE0_TXCHARISK1_IN                     : in   std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TILE0_TXDATA0_IN                        : in   std_logic_vector(7 downto 0);
    TILE0_TXDATA1_IN                        : in   std_logic_vector(15 downto 0);
    TILE0_TXOUTCLK0_OUT                     : out  std_logic;
    TILE0_TXOUTCLK1_OUT                     : out  std_logic;
    TILE0_TXUSRCLK0_IN                      : in   std_logic;
    TILE0_TXUSRCLK1_IN                      : in   std_logic;
    TILE0_TXUSRCLK20_IN                     : in   std_logic;
    TILE0_TXUSRCLK21_IN                     : in   std_logic;
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    TILE0_TXN0_OUT                          : out  std_logic;
    TILE0_TXN1_OUT                          : out  std_logic;
    TILE0_TXP0_OUT                          : out  std_logic;
    TILE0_TXP1_OUT                          : out  std_logic;
    ----------------- Transmit Ports - TX Ports for PCI Express ----------------
    TILE0_TXELECIDLE0_IN                    : in   std_logic;
    TILE0_TXELECIDLE1_IN                    : in   std_logic;
    --------------------- Transmit Ports - TX Ports for SATA -------------------
    TILE0_TXCOMSTART0_IN                    : in   std_logic;
    TILE0_TXCOMSTART1_IN                    : in   std_logic;
    TILE0_TXCOMTYPE0_IN                     : in   std_logic;
    TILE0_TXCOMTYPE1_IN                     : in   std_logic


);
end component;










    ----------------------------- The GTP Wrapper -----------------------------


    sata_platform_i : SATA_PLATFORM
    generic map
    (
        WRAPPER_SIM_GTPRESET_SPEEDUP    =>      1,
        WRAPPER_SIM_PLL_PERDIV2         =>      x"14d"
    )
    port map
    (
        --_____________________________________________________________________
        --_____________________________________________________________________
        --TILE0  (X0Y2)

        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        TILE0_RXCHARISCOMMA0_OUT        =>      ,
        TILE0_RXCHARISCOMMA1_OUT        =>      ,
        TILE0_RXCHARISK0_OUT            =>      ,
        TILE0_RXCHARISK1_OUT            =>      ,
        TILE0_RXDISPERR0_OUT            =>      ,
        TILE0_RXDISPERR1_OUT            =>      ,
        TILE0_RXNOTINTABLE0_OUT         =>      ,
        TILE0_RXNOTINTABLE1_OUT         =>      ,
        ------------------- Receive Ports - Clock Correction Ports -----------------
        TILE0_RXCLKCORCNT0_OUT          =>      ,
        TILE0_RXCLKCORCNT1_OUT          =>      ,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        TILE0_RXBYTEISALIGNED0_OUT      =>      ,
        TILE0_RXBYTEISALIGNED1_OUT      =>      ,
        TILE0_RXENMCOMMAALIGN0_IN       =>      ,
        TILE0_RXENMCOMMAALIGN1_IN       =>      ,
        TILE0_RXENPCOMMAALIGN0_IN       =>      ,
        TILE0_RXENPCOMMAALIGN1_IN       =>      ,
        ------------------- Receive Ports - RX Data Path interface -----------------
        TILE0_RXDATA0_OUT               =>      ,
        TILE0_RXDATA1_OUT               =>      ,
        TILE0_RXRECCLK0_OUT             =>      ,
        TILE0_RXRECCLK1_OUT             =>      ,
        TILE0_RXUSRCLK0_IN              =>      ,
        TILE0_RXUSRCLK1_IN              =>      ,
        TILE0_RXUSRCLK20_IN             =>      ,
        TILE0_RXUSRCLK21_IN             =>      ,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        TILE0_RXELECIDLE0_OUT           =>      ,
        TILE0_RXELECIDLE1_OUT           =>      ,
        TILE0_RXN0_IN                   =>      ,
        TILE0_RXN1_IN                   =>      ,
        TILE0_RXP0_IN                   =>      ,
        TILE0_RXP1_IN                   =>      ,
        -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        TILE0_RXSTATUS0_OUT             =>      ,
        TILE0_RXSTATUS1_OUT             =>      ,
        --------------------- Shared Ports - Tile and PLL Ports --------------------
        TILE0_CLKIN_IN                  =>      ,
        TILE0_GTPRESET_IN               =>      ,
        TILE0_PLLLKDET_OUT              =>      ,
        TILE0_REFCLKOUT_OUT             =>      ,
        TILE0_RESETDONE0_OUT            =>      ,
        TILE0_RESETDONE1_OUT            =>      ,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        TILE0_TXCHARISK0_IN             =>      ,
        TILE0_TXCHARISK1_IN             =>      ,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TILE0_TXDATA0_IN                =>      ,
        TILE0_TXDATA1_IN                =>      ,
        TILE0_TXOUTCLK0_OUT             =>      ,
        TILE0_TXOUTCLK1_OUT             =>      ,
        TILE0_TXUSRCLK0_IN              =>      ,
        TILE0_TXUSRCLK1_IN              =>      ,
        TILE0_TXUSRCLK20_IN             =>      ,
        TILE0_TXUSRCLK21_IN             =>      ,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TILE0_TXN0_OUT                  =>      ,
        TILE0_TXN1_OUT                  =>      ,
        TILE0_TXP0_OUT                  =>      ,
        TILE0_TXP1_OUT                  =>      ,
        ----------------- Transmit Ports - TX Ports for PCI Express ----------------
        TILE0_TXELECIDLE0_IN            =>      ,
        TILE0_TXELECIDLE1_IN            =>      ,
        --------------------- Transmit Ports - TX Ports for SATA -------------------
        TILE0_TXCOMSTART0_IN            =>      ,
        TILE0_TXCOMSTART1_IN            =>      ,
        TILE0_TXCOMTYPE0_IN             =>      ,
        TILE0_TXCOMTYPE1_IN             =>      


    );



    -----------------------Dedicated GTP Reference Clock Inputs ---------------
    -- Each dedicated refclk you are using in your design will need its own IBUFDS instance
    
    tile0_refclk_ibufds_i : IBUFDS
    port map
    (
        O                               =>      ,
        I                               =>      ,  -- Connect to package pin AF4
        IB                              =>        -- Connect to package pin AF3
    );



















