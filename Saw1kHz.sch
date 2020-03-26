<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK50MHz" />
        <signal name="Q(4:0)" />
        <signal name="CLR" />
        <signal name="XLXN_18" />
        <signal name="StartOUT" />
        <signal name="CmdOUT(3:0)" />
        <signal name="AddrOUT(3:0)" />
        <port polarity="Input" name="CLK50MHz" />
        <port polarity="Output" name="Q(4:0)" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="StartOUT" />
        <port polarity="Output" name="CmdOUT(3:0)" />
        <port polarity="Output" name="AddrOUT(3:0)" />
        <blockdef name="SawGenerator">
            <timestamp>2020-3-26T8:35:31</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="320" />
        </blockdef>
        <blockdef name="Prescaler">
            <timestamp>2020-3-26T9:19:3</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="SawGenerator" name="XLXI_12">
            <blockpin signalname="XLXN_18" name="CLK" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="Q(4:0)" name="Q(4:0)" />
            <blockpin signalname="StartOUT" name="StartOUT" />
            <blockpin signalname="CmdOUT(3:0)" name="CmdOUT(3:0)" />
            <blockpin signalname="AddrOUT(3:0)" name="AddrOUT(3:0)" />
        </block>
        <block symbolname="Prescaler" name="XLXI_14">
            <blockpin signalname="CLK50MHz" name="CLK50MHz" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_18" name="CLK32kHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK50MHz">
            <wire x2="496" y1="1360" y2="1360" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="1360" name="CLK50MHz" orien="R180" />
        <iomarker fontsize="28" x="368" y="1424" name="CLR" orien="R180" />
        <branch name="Q(4:0)">
            <wire x2="1520" y1="1488" y2="1488" x1="1504" />
            <wire x2="1616" y1="1488" y2="1488" x1="1520" />
        </branch>
        <branch name="CLR">
            <wire x2="480" y1="1424" y2="1424" x1="368" />
            <wire x2="496" y1="1424" y2="1424" x1="480" />
            <wire x2="480" y1="1424" y2="1552" x1="480" />
            <wire x2="1120" y1="1552" y2="1552" x1="480" />
        </branch>
        <instance x="496" y="1456" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1120" y="1584" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_18">
            <wire x2="1120" y1="1488" y2="1488" x1="880" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1488" name="Q(4:0)" orien="R0" />
        <branch name="StartOUT">
            <wire x2="1616" y1="1616" y2="1616" x1="1504" />
        </branch>
        <branch name="CmdOUT(3:0)">
            <wire x2="1616" y1="1680" y2="1680" x1="1504" />
        </branch>
        <branch name="AddrOUT(3:0)">
            <wire x2="1616" y1="1744" y2="1744" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1616" name="StartOUT" orien="R0" />
        <iomarker fontsize="28" x="1616" y="1680" name="CmdOUT(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1616" y="1744" name="AddrOUT(3:0)" orien="R0" />
    </sheet>
</drawing>