-------------------------------------------------------------------------------
--$Date: 2010/03/02 10:45:26 $
--$Revision: 1.2 $
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/     Vendor : Xilinx
--  \   \         Version : 2.1
--  /   /         Application : RocketIO GTP Transceiver Wizard
-- /___/   /\     Filename : sata_platform.vhd
-- \   \  /  \
--  \___\/\___\
--
--
-- Module SATA_PLATFORM (a GTP Wrapper)
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************

entity SATA_PLATFORM is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_MODE                : string    := "FAST"; -- Set to Fast Functional Simulation Model    
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
    TILE0_RXCHARISCOMMA1_OUT                : out  std_logic;
    TILE0_RXCHARISK0_OUT                    : out  std_logic;
    TILE0_RXCHARISK1_OUT                    : out  std_logic;
    TILE0_RXDISPERR0_OUT                    : out  std_logic;
    TILE0_RXDISPERR1_OUT                    : out  std_logic;
    TILE0_RXNOTINTABLE0_OUT                 : out  std_logic;
    TILE0_RXNOTINTABLE1_OUT                 : out  std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    TILE0_RXCLKCORCNT0_OUT                  : out  std_logic_vector(2 downto 0);
    TILE0_RXCLKCORCNT1_OUT                  : out  std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    TILE0_RXENMCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENMCOMMAALIGN1_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN1_IN               : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    TILE0_RXDATA0_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXDATA1_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXRECCLK0_OUT                     : out  std_logic;
    TILE0_RXRECCLK1_OUT                     : out  std_logic;
    TILE0_RXUSRCLK0_IN                      : in   std_logic;
    TILE0_RXUSRCLK1_IN                      : in   std_logic;
    TILE0_RXUSRCLK20_IN                     : in   std_logic;
    TILE0_RXUSRCLK21_IN                     : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    TILE0_RXELECIDLE0_OUT                   : out  std_logic;
    TILE0_RXELECIDLE1_OUT                   : out  std_logic;
    TILE0_RXEQMIX0_IN                       : in   std_logic_vector(1 downto 0);
    TILE0_RXEQMIX1_IN                       : in   std_logic_vector(1 downto 0);
    TILE0_RXEQPOLE0_IN                      : in   std_logic_vector(3 downto 0);
    TILE0_RXEQPOLE1_IN                      : in   std_logic_vector(3 downto 0);
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
    TILE0_TXCHARISK1_IN                     : in   std_logic;
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TILE0_TXDATA0_IN                        : in   std_logic_vector(7 downto 0);
    TILE0_TXDATA1_IN                        : in   std_logic_vector(7 downto 0);
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

    attribute X_CORE_INFO : string;
    attribute X_CORE_INFO of SATA_PLATFORM : entity is "v5_gtpwizard_v2_1, Coregen v12.1";

end SATA_PLATFORM;

architecture RTL of SATA_PLATFORM is

--***************************** Signal Declarations *****************************

    -- Channel Bonding Signals
    signal  tile0_rxchbondo0_i   : std_logic_vector(2 downto 0);
    signal  tile0_rxchbondo1_i   : std_logic_vector(2 downto 0);


    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;
    



--*************************** Component Declarations **************************

component SATA_PLATFORM_TILE 
generic
(
    -- Simulation attributes
    TILE_SIM_MODE                : string    := "FAST"; -- Set to Fast Functional Simulation Model    
    TILE_SIM_GTPRESET_SPEEDUP    : integer   := 0; -- Set to 1 to speed up sim reset
    TILE_SIM_PLL_PERDIV2         : bit_vector:= x"14d"; -- Set to the VCO Unit Interval time 

    -- Channel bonding attributes
    TILE_CHAN_BOND_MODE_0        : string    := "OFF";  -- "MASTER", "SLAVE", or "OFF"
    TILE_CHAN_BOND_LEVEL_0       : integer   := 0;     -- 0 to 7. See UG for details
    
    TILE_CHAN_BOND_MODE_1        : string    := "OFF";  -- "MASTER", "SLAVE", or "OFF"
    TILE_CHAN_BOND_LEVEL_1       : integer   := 0      -- 0 to 7. See UG for details
);
port 
(   
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    RXCHARISCOMMA0_OUT                      : out  std_logic;
    RXCHARISCOMMA1_OUT                      : out  std_logic;
    RXCHARISK0_OUT                          : out  std_logic;
    RXCHARISK1_OUT                          : out  std_logic;
    RXDISPERR0_OUT                          : out  std_logic;
    RXDISPERR1_OUT                          : out  std_logic;
    RXNOTINTABLE0_OUT                       : out  std_logic;
    RXNOTINTABLE1_OUT                       : out  std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    RXCLKCORCNT0_OUT                        : out  std_logic_vector(2 downto 0);
    RXCLKCORCNT1_OUT                        : out  std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    RXENMCOMMAALIGN0_IN                     : in   std_logic;
    RXENMCOMMAALIGN1_IN                     : in   std_logic;
    RXENPCOMMAALIGN0_IN                     : in   std_logic;
    RXENPCOMMAALIGN1_IN                     : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    RXDATA0_OUT                             : out  std_logic_vector(7 downto 0);
    RXDATA1_OUT                             : out  std_logic_vector(7 downto 0);
    RXRECCLK0_OUT                           : out  std_logic;
    RXRECCLK1_OUT                           : out  std_logic;
    RXUSRCLK0_IN                            : in   std_logic;
    RXUSRCLK1_IN                            : in   std_logic;
    RXUSRCLK20_IN                           : in   std_logic;
    RXUSRCLK21_IN                           : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    RXELECIDLE0_OUT                         : out  std_logic;
    RXELECIDLE1_OUT                         : out  std_logic;
    RXEQMIX0_IN                             : in   std_logic_vector(1 downto 0);
    RXEQMIX1_IN                             : in   std_logic_vector(1 downto 0);
    RXEQPOLE0_IN                            : in   std_logic_vector(3 downto 0);
    RXEQPOLE1_IN                            : in   std_logic_vector(3 downto 0);
    RXN0_IN                                 : in   std_logic;
    RXN1_IN                                 : in   std_logic;
    RXP0_IN                                 : in   std_logic;
    RXP1_IN                                 : in   std_logic;
    -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    RXSTATUS0_OUT                           : out  std_logic_vector(2 downto 0);
    RXSTATUS1_OUT                           : out  std_logic_vector(2 downto 0);
    --------------------- Shared Ports - Tile and PLL Ports --------------------
    CLKIN_IN                                : in   std_logic;
    GTPRESET_IN                             : in   std_logic;
    PLLLKDET_OUT                            : out  std_logic;
    REFCLKOUT_OUT                           : out  std_logic;
    RESETDONE0_OUT                          : out  std_logic;
    RESETDONE1_OUT                          : out  std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    TXCHARISK0_IN                           : in   std_logic;
    TXCHARISK1_IN                           : in   std_logic;
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TXDATA0_IN                              : in   std_logic_vector(7 downto 0);
    TXDATA1_IN                              : in   std_logic_vector(7 downto 0);
    TXOUTCLK0_OUT                           : out  std_logic;
    TXOUTCLK1_OUT                           : out  std_logic;
    TXUSRCLK0_IN                            : in   std_logic;
    TXUSRCLK1_IN                            : in   std_logic;
    TXUSRCLK20_IN                           : in   std_logic;
    TXUSRCLK21_IN                           : in   std_logic;
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    TXN0_OUT                                : out  std_logic;
    TXN1_OUT                                : out  std_logic;
    TXP0_OUT                                : out  std_logic;
    TXP1_OUT                                : out  std_logic;
    ----------------- Transmit Ports - TX Ports for PCI Express ----------------
    TXELECIDLE0_IN                          : in   std_logic;
    TXELECIDLE1_IN                          : in   std_logic;
    --------------------- Transmit Ports - TX Ports for SATA -------------------
    TXCOMSTART0_IN                          : in   std_logic;
    TXCOMSTART1_IN                          : in   std_logic;
    TXCOMTYPE0_IN                           : in   std_logic;
    TXCOMTYPE1_IN                           : in   std_logic


);
end component;



--********************************* Main Body of Code**************************

begin                       

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';

    --------------------------- Tile Instances  -------------------------------   


    --_________________________________________________________________________
    --_________________________________________________________________________
    --TILE0  (Location)

    tile0_sata_platform_i : SATA_PLATFORM_TILE
    generic map
    (
        -- Simulation attributes
        TILE_SIM_MODE                => WRAPPER_SIM_MODE,
        TILE_SIM_GTPRESET_SPEEDUP    => WRAPPER_SIM_GTPRESET_SPEEDUP,
        TILE_SIM_PLL_PERDIV2         => WRAPPER_SIM_PLL_PERDIV2,

        -- Channel bonding attributes
        TILE_CHAN_BOND_MODE_0        => "OFF",
        TILE_CHAN_BOND_LEVEL_0       => 0,
    
        TILE_CHAN_BOND_MODE_1        => "OFF",
        TILE_CHAN_BOND_LEVEL_1       => 0
    )
    port map
    (
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        RXCHARISCOMMA0_OUT              =>      TILE0_RXCHARISCOMMA0_OUT,
        RXCHARISCOMMA1_OUT              =>      TILE0_RXCHARISCOMMA1_OUT,
        RXCHARISK0_OUT                  =>      TILE0_RXCHARISK0_OUT,
        RXCHARISK1_OUT                  =>      TILE0_RXCHARISK1_OUT,
        RXDISPERR0_OUT                  =>      TILE0_RXDISPERR0_OUT,
        RXDISPERR1_OUT                  =>      TILE0_RXDISPERR1_OUT,
        RXNOTINTABLE0_OUT               =>      TILE0_RXNOTINTABLE0_OUT,
        RXNOTINTABLE1_OUT               =>      TILE0_RXNOTINTABLE1_OUT,
        ------------------- Receive Ports - Clock Correction Ports -----------------
        RXCLKCORCNT0_OUT                =>      TILE0_RXCLKCORCNT0_OUT,
        RXCLKCORCNT1_OUT                =>      TILE0_RXCLKCORCNT1_OUT,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXENMCOMMAALIGN0_IN             =>      TILE0_RXENMCOMMAALIGN0_IN,
        RXENMCOMMAALIGN1_IN             =>      TILE0_RXENMCOMMAALIGN1_IN,
        RXENPCOMMAALIGN0_IN             =>      TILE0_RXENPCOMMAALIGN0_IN,
        RXENPCOMMAALIGN1_IN             =>      TILE0_RXENPCOMMAALIGN1_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        RXDATA0_OUT                     =>      TILE0_RXDATA0_OUT,
        RXDATA1_OUT                     =>      TILE0_RXDATA1_OUT,
        RXRECCLK0_OUT                   =>      TILE0_RXRECCLK0_OUT,
        RXRECCLK1_OUT                   =>      TILE0_RXRECCLK1_OUT,
        RXUSRCLK0_IN                    =>      TILE0_RXUSRCLK0_IN,
        RXUSRCLK1_IN                    =>      TILE0_RXUSRCLK1_IN,
        RXUSRCLK20_IN                   =>      TILE0_RXUSRCLK20_IN,
        RXUSRCLK21_IN                   =>      TILE0_RXUSRCLK21_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXELECIDLE0_OUT                 =>      TILE0_RXELECIDLE0_OUT,
        RXELECIDLE1_OUT                 =>      TILE0_RXELECIDLE1_OUT,
        RXEQMIX0_IN                     =>      TILE0_RXEQMIX0_IN,
        RXEQMIX1_IN                     =>      TILE0_RXEQMIX1_IN,
        RXEQPOLE0_IN                    =>      TILE0_RXEQPOLE0_IN,
        RXEQPOLE1_IN                    =>      TILE0_RXEQPOLE1_IN,
        RXN0_IN                         =>      TILE0_RXN0_IN,
        RXN1_IN                         =>      TILE0_RXN1_IN,
        RXP0_IN                         =>      TILE0_RXP0_IN,
        RXP1_IN                         =>      TILE0_RXP1_IN,
        -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        RXSTATUS0_OUT                   =>      TILE0_RXSTATUS0_OUT,
        RXSTATUS1_OUT                   =>      TILE0_RXSTATUS1_OUT,
        --------------------- Shared Ports - Tile and PLL Ports --------------------
        CLKIN_IN                        =>      TILE0_CLKIN_IN,
        GTPRESET_IN                     =>      TILE0_GTPRESET_IN,
        PLLLKDET_OUT                    =>      TILE0_PLLLKDET_OUT,
        REFCLKOUT_OUT                   =>      TILE0_REFCLKOUT_OUT,
        RESETDONE0_OUT                  =>      TILE0_RESETDONE0_OUT,
        RESETDONE1_OUT                  =>      TILE0_RESETDONE1_OUT,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        TXCHARISK0_IN                   =>      TILE0_TXCHARISK0_IN,
        TXCHARISK1_IN                   =>      TILE0_TXCHARISK1_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA0_IN                      =>      TILE0_TXDATA0_IN,
        TXDATA1_IN                      =>      TILE0_TXDATA1_IN,
        TXOUTCLK0_OUT                   =>      TILE0_TXOUTCLK0_OUT,
        TXOUTCLK1_OUT                   =>      TILE0_TXOUTCLK1_OUT,
        TXUSRCLK0_IN                    =>      TILE0_TXUSRCLK0_IN,
        TXUSRCLK1_IN                    =>      TILE0_TXUSRCLK1_IN,
        TXUSRCLK20_IN                   =>      TILE0_TXUSRCLK20_IN,
        TXUSRCLK21_IN                   =>      TILE0_TXUSRCLK21_IN,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TXN0_OUT                        =>      TILE0_TXN0_OUT,
        TXN1_OUT                        =>      TILE0_TXN1_OUT,
        TXP0_OUT                        =>      TILE0_TXP0_OUT,
        TXP1_OUT                        =>      TILE0_TXP1_OUT,
        ----------------- Transmit Ports - TX Ports for PCI Express ----------------
        TXELECIDLE0_IN                  =>      TILE0_TXELECIDLE0_IN,
        TXELECIDLE1_IN                  =>      TILE0_TXELECIDLE1_IN,
        --------------------- Transmit Ports - TX Ports for SATA -------------------
        TXCOMSTART0_IN                  =>      TILE0_TXCOMSTART0_IN,
        TXCOMSTART1_IN                  =>      TILE0_TXCOMSTART1_IN,
        TXCOMTYPE0_IN                   =>      TILE0_TXCOMTYPE0_IN,
        TXCOMTYPE1_IN                   =>      TILE0_TXCOMTYPE1_IN

    );

    
     
end RTL;
