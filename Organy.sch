<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="DATA(11:0)" />
        <signal name="DATA(4:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="Reset" />
        <signal name="Clk_Sys" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk_Sys" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="SawGenerator">
            <timestamp>2020-4-28T13:55:42</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_2">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_6" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_5(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Addr(3:0)" />
            <blockpin signalname="DATA(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_Sys" name="Clk_50MHz" />
            <blockpin signalname="Clk_Sys" name="Clk_Sys" />
        </block>
        <block symbolname="SawGenerator" name="XLXI_3">
            <blockpin signalname="Clk_Sys" name="CLK" />
            <blockpin signalname="Reset" name="CLR" />
            <blockpin signalname="XLXN_36" name="DI_Rdy" />
            <blockpin signalname="XLXN_35" name="F0" />
            <blockpin signalname="XLXN_34(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_6" name="StartO" />
            <blockpin signalname="XLXN_5(3:0)" name="CmdO(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="AddrO(3:0)" />
            <blockpin signalname="DATA(4:0)" name="DO(4:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_Sys" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_35" name="F0" />
            <blockpin signalname="XLXN_36" name="DO_Rdy" />
            <blockpin signalname="XLXN_34(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_Sys" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1408" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_4(3:0)">
            <wire x2="2032" y1="1280" y2="1280" x1="1680" />
            <wire x2="2352" y1="1056" y2="1056" x1="2032" />
            <wire x2="2032" y1="1056" y2="1280" x1="2032" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1936" y1="1200" y2="1200" x1="1680" />
            <wire x2="1936" y1="992" y2="1200" x1="1936" />
            <wire x2="2352" y1="992" y2="992" x1="1936" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="624" y1="1152" y2="1152" x1="592" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="624" y1="1216" y2="1216" x1="592" />
        </branch>
        <instance x="2352" y="1472" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1840" y1="1120" y2="1120" x1="1680" />
            <wire x2="2352" y1="928" y2="928" x1="1840" />
            <wire x2="1840" y1="928" y2="1120" x1="1840" />
        </branch>
        <branch name="DATA(11:0)">
            <wire x2="2128" y1="1120" y2="1120" x1="2112" />
            <wire x2="2352" y1="1120" y2="1120" x1="2128" />
        </branch>
        <bustap x2="2128" y1="1120" y2="1216" x1="2128" />
        <branch name="DATA(4:0)">
            <wire x2="2128" y1="1360" y2="1360" x1="1680" />
            <wire x2="2128" y1="1216" y2="1360" x1="2128" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2832" y1="928" y2="928" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="928" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2832" y1="992" y2="992" x1="2800" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2832" y1="1056" y2="1056" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1056" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2832" y1="1120" y2="1120" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1120" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2832" y1="1184" y2="1184" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1184" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2832" y1="1248" y2="1248" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1248" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2832" y1="1312" y2="1312" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1312" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2832" y1="1376" y2="1376" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1376" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2832" y1="1440" y2="1440" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1440" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2832" y1="1504" y2="1504" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1504" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="2832" y="992" name="SPI_MISO" orien="R0" />
        <branch name="XLXN_34(7:0)">
            <wire x2="1152" y1="1152" y2="1152" x1="1008" />
            <wire x2="1152" y1="1120" y2="1152" x1="1152" />
            <wire x2="1296" y1="1120" y2="1120" x1="1152" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1104" y1="1280" y2="1280" x1="1008" />
            <wire x2="1104" y1="1184" y2="1280" x1="1104" />
            <wire x2="1296" y1="1184" y2="1184" x1="1104" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1152" y1="1344" y2="1344" x1="1008" />
            <wire x2="1152" y1="1248" y2="1344" x1="1152" />
            <wire x2="1296" y1="1248" y2="1248" x1="1152" />
        </branch>
        <branch name="Reset">
            <wire x2="1184" y1="1504" y2="1504" x1="528" />
            <wire x2="2352" y1="1504" y2="1504" x1="1184" />
            <wire x2="1184" y1="1312" y2="1504" x1="1184" />
            <wire x2="1296" y1="1312" y2="1312" x1="1184" />
        </branch>
        <branch name="Clk_Sys">
            <wire x2="576" y1="1568" y2="1568" x1="528" />
            <wire x2="1216" y1="1568" y2="1568" x1="576" />
            <wire x2="2304" y1="1568" y2="1568" x1="1216" />
            <wire x2="2352" y1="1568" y2="1568" x1="2304" />
            <wire x2="2304" y1="1568" y2="1632" x1="2304" />
            <wire x2="2352" y1="1632" y2="1632" x1="2304" />
            <wire x2="624" y1="1280" y2="1280" x1="576" />
            <wire x2="576" y1="1280" y2="1344" x1="576" />
            <wire x2="624" y1="1344" y2="1344" x1="576" />
            <wire x2="576" y1="1344" y2="1568" x1="576" />
            <wire x2="1296" y1="1376" y2="1376" x1="1216" />
            <wire x2="1216" y1="1376" y2="1568" x1="1216" />
        </branch>
        <instance x="624" y="1376" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="592" y="1152" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="592" y="1216" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="528" y="1504" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="528" y="1568" name="Clk_Sys" orien="R180" />
    </sheet>
</drawing>