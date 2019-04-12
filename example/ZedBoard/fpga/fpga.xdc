# XDC constraints for the Digilent Nexys Video board
# part: xc7z020clg484-1

# General configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]

# 100 MHz clock
set_property -dict {LOC Y9 IOSTANDARD LVCMOS18} [get_ports clk]
create_clock -period 10.000 -name clk [get_ports clk]

# LEDs
set_property -dict {LOC T22 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[0]}]
set_property -dict {LOC T21 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[1]}]
set_property -dict {LOC U22 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[2]}]
set_property -dict {LOC U21 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[3]}]
set_property -dict {LOC V22 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[4]}]
set_property -dict {LOC W22 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[5]}]
set_property -dict {LOC U19 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[6]}]
set_property -dict {LOC U14 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports {led[7]}]

# Reset button - routed to BTNC on zedboard
set_property -dict {LOC P16 IOSTANDARD LVCMOS18} [get_ports reset_n]

# Push buttons - PINS ARE NOT ROUTED CORRECTLY
set_property -dict {LOC R16 IOSTANDARD LVCMOS18} [get_ports btnu]
set_property -dict {LOC N15 IOSTANDARD LVCMOS18} [get_ports btnl]
set_property -dict {LOC R18 IOSTANDARD LVCMOS18} [get_ports btnd]
set_property -dict {LOC T18 IOSTANDARD LVCMOS18} [get_ports btnr]
set_property -dict {LOC L16 IOSTANDARD LVCMOS18} [get_ports btnc]

# Toggle switches
set_property -dict {LOC F22 IOSTANDARD LVCMOS18} [get_ports {sw[0]}]
set_property -dict {LOC G22 IOSTANDARD LVCMOS18} [get_ports {sw[1]}]
set_property -dict {LOC H22 IOSTANDARD LVCMOS18} [get_ports {sw[2]}]
set_property -dict {LOC F21 IOSTANDARD LVCMOS18} [get_ports {sw[3]}]
set_property -dict {LOC H19 IOSTANDARD LVCMOS18} [get_ports {sw[4]}]
set_property -dict {LOC H18 IOSTANDARD LVCMOS18} [get_ports {sw[5]}]
set_property -dict {LOC H17 IOSTANDARD LVCMOS18} [get_ports {sw[6]}]
set_property -dict {LOC M15 IOSTANDARD LVCMOS18} [get_ports {sw[7]}]

# UART -- ROUTED TO JA PMOD
set_property -dict {LOC Y11 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports uart_txd]
set_property -dict {LOC AA8 IOSTANDARD LVCMOS18} [get_ports uart_rxd]

# Gigabit Ethernet RGMII PHY
set_property -dict {LOC M19 IOSTANDARD LVCMOS18} [get_ports phy_rx_clk]
set_property -dict {LOC P17 IOSTANDARD LVCMOS18} [get_ports {phy_rxd[0]}]
set_property -dict {LOC P18 IOSTANDARD LVCMOS18} [get_ports {phy_rxd[1]}]
set_property -dict {LOC N22 IOSTANDARD LVCMOS18} [get_ports {phy_rxd[2]}]
set_property -dict {LOC P22 IOSTANDARD LVCMOS18} [get_ports {phy_rxd[3]}]
set_property -dict {LOC M20 IOSTANDARD LVCMOS18} [get_ports phy_rx_ctl]
set_property -dict {LOC M22 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports phy_tx_clk]
set_property -dict {LOC M21 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports {phy_txd[0]}]
set_property -dict {LOC J21 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports {phy_txd[1]}]
set_property -dict {LOC J22 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports {phy_txd[2]}]
set_property -dict {LOC T16 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports {phy_txd[3]}]
set_property -dict {LOC T17 IOSTANDARD LVCMOS18 SLEW FAST DRIVE 16} [get_ports phy_tx_ctl]
set_property -dict {LOC K18 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports phy_reset_n]
# FOLLOWING PINS ROUTED TO JA PMOD
set_property -dict {LOC W12 IOSTANDARD LVCMOS18} [get_ports phy_int_n]
set_property -dict {LOC V8 IOSTANDARD LVCMOS18} [get_ports phy_pme_n]
#set_property -dict {LOC Y16  IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports phy_mdio]
#set_property -dict {LOC AA16 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports phy_mdc]

create_clock -period 8.000 -name phy_rx_clk [get_ports phy_rx_clk]

