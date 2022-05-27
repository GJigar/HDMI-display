#
# ZedBoard HDMI I2C Controller
#

set_property PACKAGE_PIN AA18 [get_ports {zed_hdmi_iic_scl_io}]
set_property IOSTANDARD LVCMOS25 [get_ports {zed_hdmi_iic_scl_io}]
set_property SLEW SLOW [get_ports {zed_hdmi_iic_scl_io}]
set_property DRIVE 8 [get_ports {zed_hdmi_iic_scl_io}]

set_property PACKAGE_PIN Y16 [get_ports {zed_hdmi_iic_sda_io}]
set_property IOSTANDARD LVCMOS25 [get_ports {zed_hdmi_iic_sda_io}]
set_property SLEW SLOW [get_ports {zed_hdmi_iic_sda_io}]
set_property DRIVE 8 [get_ports {zed_hdmi_iic_sda_io}]

#
# ZedBoard HDMI Output
#

set_property PACKAGE_PIN W18 [get_ports hdmio_io_clk]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_clk]

set_property PACKAGE_PIN W17 [get_ports hdmio_io_vsync]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_vsync]

set_property PACKAGE_PIN V17 [get_ports hdmio_io_hsync]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_hsync]

set_property PACKAGE_PIN U16 [get_ports hdmio_io_de]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_de]

set_property PACKAGE_PIN Y13 [get_ports {hdmio_io_data[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[0]}]

set_property PACKAGE_PIN AA13 [get_ports {hdmio_io_data[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[1]}]

set_property PACKAGE_PIN AA14 [get_ports {hdmio_io_data[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[2]}]

set_property PACKAGE_PIN Y14 [get_ports {hdmio_io_data[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[3]}]

set_property PACKAGE_PIN AB15 [get_ports {hdmio_io_data[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[4]}]

set_property PACKAGE_PIN AB16 [get_ports {hdmio_io_data[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[5]}]

set_property PACKAGE_PIN AA16 [get_ports {hdmio_io_data[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[6]}]

set_property PACKAGE_PIN AB17 [get_ports {hdmio_io_data[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[7]}]

set_property PACKAGE_PIN AA17 [get_ports {hdmio_io_data[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[8]}]

set_property PACKAGE_PIN Y15 [get_ports {hdmio_io_data[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[9]}]

set_property PACKAGE_PIN W13 [get_ports {hdmio_io_data[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[10]}]

set_property PACKAGE_PIN W15 [get_ports {hdmio_io_data[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[11]}]

set_property PACKAGE_PIN V15 [get_ports {hdmio_io_data[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[12]}]

set_property PACKAGE_PIN U17 [get_ports {hdmio_io_data[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[13]}]

set_property PACKAGE_PIN V14 [get_ports {hdmio_io_data[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[14]}]

set_property PACKAGE_PIN V13 [get_ports {hdmio_io_data[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[15]}]

set_property PACKAGE_PIN U15 [get_ports hdmio_io_spdif]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_spdif]
