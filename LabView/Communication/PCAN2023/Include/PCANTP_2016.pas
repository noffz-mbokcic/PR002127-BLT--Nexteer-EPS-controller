//  PCANTP_2016.pas
//
//  ~~~~~~~~~~~~
//
//  PCAN-ISO-TP API
//
//  ~~~~~~~~~~~~
//
//  ------------------------------------------------------------------
//  Last changed by:	$Author: Catherine $
//  Last changed date:	$Date: 2020-02-05 15:34:56 +0100 (mer., 05 févr. 2020) $
//
//  Language: Pascal OO
//  ------------------------------------------------------------------
//
//  Copyright (C) 2020  PEAK-System Technik GmbH, Darmstadt
//  more Info at http://www.peak-system.com
//

// To use PCAN-ISO-TP_2004 and PCAN-ISO-TP_2016 together: do define PCANTP_API_COMPATIBILITY_ISO_2004"
// {$DEFINE PCANTP_API_COMPATIBILITY_ISO_2004}


unit PCANTP_2016;

interface

uses PCANBasic;

Const

  // Currently defined and supported PCAN channels (from PCANBasic)

  PCAN_NONEBUS = $00; // Undefined/default value for a PCAN bus

  PCAN_ISABUS1 = $21; // PCAN-ISA interface, channel 1
  PCAN_ISABUS2 = $22; // PCAN-ISA interface, channel 2
  PCAN_ISABUS3 = $23; // PCAN-ISA interface, channel 3
  PCAN_ISABUS4 = $24; // PCAN-ISA interface, channel 4
  PCAN_ISABUS5 = $25; // PCAN-ISA interface, channel 5
  PCAN_ISABUS6 = $26; // PCAN-ISA interface, channel 6
  PCAN_ISABUS7 = $27; // PCAN-ISA interface, channel 7
  PCAN_ISABUS8 = $28; // PCAN-ISA interface, channel 8

  PCAN_DNGBUS1 = $31; // PCAN-Dongle/LPT interface, channel 1

  PCAN_PCIBUS1 = $41; // PCAN-PCI interface, channel 1
  PCAN_PCIBUS2 = $42; // PCAN-PCI interface, channel 2
  PCAN_PCIBUS3 = $43; // PCAN-PCI interface, channel 3
  PCAN_PCIBUS4 = $44; // PCAN-PCI interface, channel 4
  PCAN_PCIBUS5 = $45; // PCAN-PCI interface, channel 5
  PCAN_PCIBUS6 = $46; // PCAN-PCI interface, channel 6
  PCAN_PCIBUS7 = $47; // PCAN-PCI interface, channel 7
  PCAN_PCIBUS8 = $48; // PCAN-PCI interface, channel 8
  PCAN_PCIBUS9 = $409; // PCAN-PCI interface, channel 9
  PCAN_PCIBUS10 = $40A; // PCAN-PCI interface, channel 10
  PCAN_PCIBUS11 = $40B; // PCAN-PCI interface, channel 11
  PCAN_PCIBUS12 = $40C; // PCAN-PCI interface, channel 12
  PCAN_PCIBUS13 = $40D; // PCAN-PCI interface, channel 13
  PCAN_PCIBUS14 = $40E; // PCAN-PCI interface, channel 14
  PCAN_PCIBUS15 = $40F; // PCAN-PCI interface, channel 15
  PCAN_PCIBUS16 = $410; // PCAN-PCI interface, channel 16

  PCAN_USBBUS1 = $51; // PCAN-USB interface, channel 1
  PCAN_USBBUS2 = $52; // PCAN-USB interface, channel 2
  PCAN_USBBUS3 = $53; // PCAN-USB interface, channel 3
  PCAN_USBBUS4 = $54; // PCAN-USB interface, channel 4
  PCAN_USBBUS5 = $55; // PCAN-USB interface, channel 5
  PCAN_USBBUS6 = $56; // PCAN-USB interface, channel 6
  PCAN_USBBUS7 = $57; // PCAN-USB interface, channel 7
  PCAN_USBBUS8 = $58; // PCAN-USB interface, channel 8
  PCAN_USBBUS9 = $509; // PCAN-USB interface, channel 9
  PCAN_USBBUS10 = $50A; // PCAN-USB interface, channel 10
  PCAN_USBBUS11 = $50B; // PCAN-USB interface, channel 11
  PCAN_USBBUS12 = $50C; // PCAN-USB interface, channel 12
  PCAN_USBBUS13 = $50D; // PCAN-USB interface, channel 13
  PCAN_USBBUS14 = $50E; // PCAN-USB interface, channel 14
  PCAN_USBBUS15 = $50F; // PCAN-USB interface, channel 15
  PCAN_USBBUS16 = $510; // PCAN-USB interface, channel 16

  PCAN_PCCBUS1 = $61; // PCAN-PC Card interface, channel 1
  PCAN_PCCBUS2 = $62; // PCAN-PC Card interface, channel 2

  PCAN_LANBUS1 = $801; // PCAN-LAN interface, channel 1
  PCAN_LANBUS2 = $802; // PCAN-LAN interface, channel 2
  PCAN_LANBUS3 = $803; // PCAN-LAN interface, channel 3
  PCAN_LANBUS4 = $804; // PCAN-LAN interface, channel 4
  PCAN_LANBUS5 = $805; // PCAN-LAN interface, channel 5
  PCAN_LANBUS6 = $806; // PCAN-LAN interface, channel 6
  PCAN_LANBUS7 = $807; // PCAN-LAN interface, channel 7
  PCAN_LANBUS8 = $808; // PCAN-LAN interface, channel 8
  PCAN_LANBUS9 = $809; // PCAN-LAN interface, channel 9
  PCAN_LANBUS10 = $80A; // PCAN-LAN interface, channel 10
  PCAN_LANBUS11 = $80B; // PCAN-LAN interface, channel 11
  PCAN_LANBUS12 = $80C; // PCAN-LAN interface, channel 12
  PCAN_LANBUS13 = $80D; // PCAN-LAN interface, channel 13
  PCAN_LANBUS14 = $80E; // PCAN-LAN interface, channel 14
  PCAN_LANBUS15 = $80F; // PCAN-LAN interface, channel 15
  PCAN_LANBUS16 = $810; // PCAN-LAN interface, channel 16

  // from PCANBasic
  /// <summary>
  /// Clock frequency in Herz (80000000, 60000000, 40000000, 30000000, 24000000, 20000000)
  /// </summary>
  PCAN_BR_CLOCK = 'f_clock';
  /// <summary>
  /// Clock frequency in Megaherz (80, 60, 40, 30, 24, 20)
  /// </summary>
  PCAN_BR_CLOCK_MHZ = 'f_clock_mhz';
  /// <summary>
  /// Clock prescaler for nominal time quantum
  /// </summary>
  PCAN_BR_NOM_BRP = 'nom_brp';
  /// <summary>
  /// TSEG1 segment for nominal bit rate in time quanta
  /// </summary>
  PCAN_BR_NOM_TSEG1 = 'nom_tseg1';
  /// <summary>
  /// TSEG2 segment for nominal bit rate in time quanta
  /// </summary>
  PCAN_BR_NOM_TSEG2 = 'nom_tseg2';
  /// <summary>
  /// Synchronization Jump Width for nominal bit rate in time quanta
  /// </summary>
  PCAN_BR_NOM_SJW = 'nom_sjw';
  /// <summary>
  /// Sample point for nominal bit rate
  /// </summary>
  PCAN_BR_NOM_SAMPLE = 'nom_sam';
  /// <summary>
  /// Clock prescaler for highspeed data time quantum
  /// </summary>
  PCAN_BR_DATA_BRP = 'data_brp';
  /// <summary>
  /// TSEG1 segment for fast data bit rate in time quanta
  /// </summary>
  PCAN_BR_DATA_TSEG1 = 'data_tseg1';
  /// <summary>
  /// TSEG2 segment for fast data bit rate in time quanta
  /// </summary>
  PCAN_BR_DATA_TSEG2 = 'data_tseg2';
  /// <summary>
  /// Synchronization Jump Width for highspeed data bit rate in time quanta
  /// </summary>
  PCAN_BR_DATA_SJW = 'data_sjw';
  /// <summary>
  /// Secondary sample point delay for highspeed data bit rate in cyles
  /// </summary>
  PCAN_BR_DATA_SAMPLE = 'data_ssp_offset';
  /// <summary>
  /// The PCAN parameter is not set (inactive)
  /// </summary>
  PCAN_PARAMETER_OFF: Integer = 0;
  /// <summary>
  /// The PCAN parameter is set (active)
  /// </summary>
  PCAN_PARAMETER_ON: Integer  = 1;

  PCANTP_MAX_LENGTH_CAN_STANDARD = $08; // maximum size of a CAN (non-FD) frame (8)
  PCANTP_MAX_LENGTH_CAN_FD = $40; // maximum size of a CAN FD frame (64)

  // Defines constants used by the enum: cantp_status
  PCANTP_STATUS_OFFSET_BUS = 8;
  PCANTP_STATUS_OFFSET_NET = (PCANTP_STATUS_OFFSET_BUS + 5);
  PCANTP_STATUS_OFFSET_INFO = (PCANTP_STATUS_OFFSET_NET + 5);

type

  /// <summary>
  /// Represents currently defined and supported PCANTP handle (a.k.a. channels)
  /// </summary>
{$Z4}
  cantp_handle = (
    /// <summary>
    /// Undefined/default value for a PCAN bus
    /// </summary>
    PCANTP_HANDLE_NONEBUS = PCAN_NONEBUS,
    /// <summary>
    /// PCAN-ISA interface, channel 1
    /// </summary>
    PCANTP_HANDLE_ISABUS1 = PCAN_ISABUS1,
    /// <summary>
    /// PCAN-ISA interface, channel 2
    /// </summary>
    PCANTP_HANDLE_ISABUS2 = PCAN_ISABUS2,
    /// <summary>
    /// PCAN-ISA interface, channel 3
    /// </summary>
    PCANTP_HANDLE_ISABUS3 = PCAN_ISABUS3,
    /// <summary>
    /// PCAN-ISA interface, channel 4
    /// </summary>
    PCANTP_HANDLE_ISABUS4 = PCAN_ISABUS4,
    /// <summary>
    /// PCAN-ISA interface, channel 5
    /// </summary>
    PCANTP_HANDLE_ISABUS5 = PCAN_ISABUS5,
    /// <summary>
    /// PCAN-ISA interface, channel 6
    /// </summary>
    PCANTP_HANDLE_ISABUS6 = PCAN_ISABUS6,
    /// <summary>
    /// PCAN-ISA interface, channel 7
    /// </summary>
    PCANTP_HANDLE_ISABUS7 = PCAN_ISABUS7,
    /// <summary>
    /// PCAN-ISA interface, channel 8
    /// </summary>
    PCANTP_HANDLE_ISABUS8 = PCAN_ISABUS8,

    /// <summary>
    /// PCAN-Dongle/LPT interface, channel 1
    /// </summary>
    PCANTP_HANDLE_DNGBUS1 = PCAN_DNGBUS1,

    /// <summary>
    /// PCAN-PCI interface, channel 1
    /// </summary>
    PCANTP_HANDLE_PCIBUS1 = PCAN_PCIBUS1,
    /// <summary>
    /// PCAN-PCI interface, channel 2
    /// </summary>
    PCANTP_HANDLE_PCIBUS2 = PCAN_PCIBUS2,
    /// <summary>
    /// PCAN-PCI interface, channel 3
    /// </summary>
    PCANTP_HANDLE_PCIBUS3 = PCAN_PCIBUS3,
    /// <summary>
    /// PCAN-PCI interface, channel 4
    /// </summary>
    PCANTP_HANDLE_PCIBUS4 = PCAN_PCIBUS4,
    /// <summary>
    /// PCAN-PCI interface, channel 5
    /// </summary>
    PCANTP_HANDLE_PCIBUS5 = PCAN_PCIBUS5,
    /// <summary>
    /// PCAN-PCI interface, channel 6
    /// </summary>
    PCANTP_HANDLE_PCIBUS6 = PCAN_PCIBUS6,
    /// <summary>
    /// PCAN-PCI interface, channel 7
    /// </summary>
    PCANTP_HANDLE_PCIBUS7 = PCAN_PCIBUS7,
    /// <summary>
    /// PCAN-PCI interface, channel 8
    /// </summary>
    PCANTP_HANDLE_PCIBUS8 = PCAN_PCIBUS8,
    /// <summary>
    /// PCAN-PCI interface, channel 9
    /// </summary>
    PCANTP_HANDLE_PCIBUS9 = PCAN_PCIBUS9,
    /// <summary>
    /// PCAN-PCI interface, channel 10
    /// </summary>
    PCANTP_HANDLE_PCIBUS10 = PCAN_PCIBUS10,
    /// <summary>
    /// PCAN-PCI interface, channel 11
    /// </summary>
    PCANTP_HANDLE_PCIBUS11 = PCAN_PCIBUS11,
    /// <summary>
    /// PCAN-PCI interface, channel 12
    /// </summary>
    PCANTP_HANDLE_PCIBUS12 = PCAN_PCIBUS12,
    /// <summary>
    /// PCAN-PCI interface, channel 13
    /// </summary>
    PCANTP_HANDLE_PCIBUS13 = PCAN_PCIBUS13,
    /// <summary>
    /// PCAN-PCI interface, channel 14
    /// </summary>
    PCANTP_HANDLE_PCIBUS14 = PCAN_PCIBUS14,
    /// <summary>
    /// PCAN-PCI interface, channel 15
    /// </summary>
    PCANTP_HANDLE_PCIBUS15 = PCAN_PCIBUS15,
    /// <summary>
    /// PCAN-PCI interface, channel 16
    /// </summary>
    PCANTP_HANDLE_PCIBUS16 = PCAN_PCIBUS16,

    /// <summary>
    /// PCAN-USB interface, channel 1
    /// </summary>
    PCANTP_HANDLE_USBBUS1 = PCAN_USBBUS1,
    /// <summary>
    /// PCAN-USB interface, channel 2
    /// </summary>
    PCANTP_HANDLE_USBBUS2 = PCAN_USBBUS2,
    /// <summary>
    /// PCAN-USB interface, channel 3
    /// </summary>
    PCANTP_HANDLE_USBBUS3 = PCAN_USBBUS3,
    /// <summary>
    /// PCAN-USB interface, channel 4
    /// </summary>
    PCANTP_HANDLE_USBBUS4 = PCAN_USBBUS4,
    /// <summary>
    /// PCAN-USB interface, channel 5
    /// </summary>
    PCANTP_HANDLE_USBBUS5 = PCAN_USBBUS5,
    /// <summary>
    /// PCAN-USB interface, channel 6
    /// </summary>
    PCANTP_HANDLE_USBBUS6 = PCAN_USBBUS6,
    /// <summary>
    /// PCAN-USB interface, channel 7
    /// </summary>
    PCANTP_HANDLE_USBBUS7 = PCAN_USBBUS7,
    /// <summary>
    /// PCAN-USB interface, channel 8
    /// </summary>
    PCANTP_HANDLE_USBBUS8 = PCAN_USBBUS8,
    /// <summary>
    /// PCAN-USB interface, channel 9
    /// </summary>
    PCANTP_HANDLE_USBBUS9 = PCAN_USBBUS9,
    /// <summary>
    /// PCAN-USB interface, channel 10
    /// </summary>
    PCANTP_HANDLE_USBBUS10 = PCAN_USBBUS10,
    /// <summary>
    /// PCAN-USB interface, channel 11
    /// </summary>
    PCANTP_HANDLE_USBBUS11 = PCAN_USBBUS11,
    /// <summary>
    /// PCAN-USB interface, channel 12
    /// </summary>
    PCANTP_HANDLE_USBBUS12 = PCAN_USBBUS12,
    /// <summary>
    /// PCAN-USB interface, channel 13
    /// </summary>
    PCANTP_HANDLE_USBBUS13 = PCAN_USBBUS13,
    /// <summary>
    /// PCAN-USB interface, channel 14
    /// </summary>
    PCANTP_HANDLE_USBBUS14 = PCAN_USBBUS14,
    /// <summary>
    /// PCAN-USB interface, channel 15
    /// </summary>
    PCANTP_HANDLE_USBBUS15 = PCAN_USBBUS15,
    /// <summary>
    /// PCAN-USB interface, channel 16
    /// </summary>
    PCANTP_HANDLE_USBBUS16 = PCAN_USBBUS16,

    /// <summary>
    /// PCAN-PC Card interface, channel 1
    /// </summary>
    PCANTP_HANDLE_PCCBUS1 = PCAN_PCCBUS1,
    /// <summary>
    /// PCAN-PC Card interface, channel 2
    /// </summary>
    PCANTP_HANDLE_PCCBUS2 = PCAN_PCCBUS2,

    /// <summary>
    /// PCAN-LAN interface, channel 1
    /// </summary>
    PCANTP_HANDLE_LANBUS1 = PCAN_LANBUS1,
    /// <summary>
    /// PCAN-LAN interface, channel 2
    /// </summary>
    PCANTP_HANDLE_LANBUS2 = PCAN_LANBUS2,
    /// <summary>
    /// PCAN-LAN interface, channel 3
    /// </summary>
    PCANTP_HANDLE_LANBUS3 = PCAN_LANBUS3,
    /// <summary>
    /// PCAN-LAN interface, channel 4
    /// </summary>
    PCANTP_HANDLE_LANBUS4 = PCAN_LANBUS4,
    /// <summary>
    /// PCAN-LAN interface, channel 5
    /// </summary>
    PCANTP_HANDLE_LANBUS5 = PCAN_LANBUS5,
    /// <summary>
    /// PCAN-LAN interface, channel 6
    /// </summary>
    PCANTP_HANDLE_LANBUS6 = PCAN_LANBUS6,
    /// <summary>
    /// PCAN-LAN interface, channel 7
    /// </summary>
    PCANTP_HANDLE_LANBUS7 = PCAN_LANBUS7,
    /// <summary>
    /// PCAN-LAN interface, channel 8
    /// </summary>
    PCANTP_HANDLE_LANBUS8 = PCAN_LANBUS8,
    /// <summary>
    /// PCAN-LAN interface, channel 9
    /// </summary>
    PCANTP_HANDLE_LANBUS9 = PCAN_LANBUS9,
    /// <summary>
    /// PCAN-LAN interface, channel 10
    /// </summary>
    PCANTP_HANDLE_LANBUS10 = PCAN_LANBUS10,
    /// <summary>
    /// PCAN-LAN interface, channel 11
    /// </summary>
    PCANTP_HANDLE_LANBUS11 = PCAN_LANBUS11,
    /// <summary>
    /// PCAN-LAN interface, channel 12
    /// </summary>
    PCANTP_HANDLE_LANBUS12 = PCAN_LANBUS12,
    /// <summary>
    /// PCAN-LAN interface, channel 13
    /// </summary>
    PCANTP_HANDLE_LANBUS13 = PCAN_LANBUS13,
    /// <summary>
    /// PCAN-LAN interface, channel 14
    /// </summary>
    PCANTP_HANDLE_LANBUS14 = PCAN_LANBUS14,
    /// <summary>
    /// PCAN-LAN interface, channel 15
    /// </summary>
    PCANTP_HANDLE_LANBUS15 = PCAN_LANBUS15,
    /// <summary>
    /// PCAN-LAN interface, channel 16
    /// </summary>
    PCANTP_HANDLE_LANBUS16 = PCAN_LANBUS16);

  /// <summary>
  /// Represents the baudrate register for the PCANTP channel
  /// </summary>
{$Z4}
  cantp_baudrate = (
    /// <summary>
    /// Channel Baudrate 1 MBit/s
    /// </summary
    PCANTP_BAUDRATE_1M = UInt32(PCAN_BAUD_1M),
    /// <summary>
    /// Channel Baudrate 800 kBit/s
    /// </summary
    PCANTP_BAUDRATE_800K = UInt32(PCAN_BAUD_800K),
    /// <summary>
    /// Channel Baudrate 500 kBit/s
    /// </summary
    PCANTP_BAUDRATE_500K = UInt32(PCAN_BAUD_500K),
    /// <summary>
    /// Channel Baudrate 250 kBit/s
    /// </summary
    PCANTP_BAUDRATE_250K = UInt32(PCAN_BAUD_250K),
    /// <summary>
    /// Channel Baudrate 125 kBit/s
    /// </summary
    PCANTP_BAUDRATE_125K = UInt32(PCAN_BAUD_125K),
    /// <summary>
    /// Channel Baudrate 100 kBit/s
    /// </summary
    PCANTP_BAUDRATE_100K = UInt32(PCAN_BAUD_100K),
    /// <summary>
    /// Channel Baudrate 95,238 kBit/s
    /// </summary
    PCANTP_BAUDRATE_95K = UInt32(PCAN_BAUD_95K),
    /// <summary>
    /// Channel Baudrate 83,333 kBit/s
    /// </summary
    PCANTP_BAUDRATE_83K = UInt32(PCAN_BAUD_83K),
    /// <summary>
    /// Channel Baudrate 50 kBit/s
    /// </summary
    PCANTP_BAUDRATE_50K = UInt32(PCAN_BAUD_50K),
    /// <summary>
    /// Channel Baudrate 47,619 kBit/s
    /// </summary
    PCANTP_BAUDRATE_47K = UInt32(PCAN_BAUD_47K),
    /// <summary>
    /// Channel Baudrate 33,333 kBit/s
    /// </summary
    PCANTP_BAUDRATE_33K = UInt32(PCAN_BAUD_33K),
    /// <summary>
    /// Channel Baudrate 20 kBit/s
    /// </summary
    PCANTP_BAUDRATE_20K = UInt32(PCAN_BAUD_20K),
    /// <summary>
    /// Channel Baudrate 10 kBit/s
    /// </summary
    PCANTP_BAUDRATE_10K = UInt32(PCAN_BAUD_10K),
    /// <summary>
    /// Channel Baudrate 5 kBit/s
    /// </summary
    PCANTP_BAUDRATE_5K = UInt32(PCAN_BAUD_5K));

  /// <summary>
  /// Type of PCAN (non plug-n-play) hardware
  /// </summary>
{$Z4}
  cantp_hwtype = (
    /// <summary>
    /// PCAN-ISA 82C200
    /// </summary>
    PCANTP_HWTYPE_ISA = UInt32(PCAN_TYPE_ISA),
    /// <summary>
    /// PCAN-ISA SJA1000
    /// </summary>
    PCANTP_HWTYPE_ISA_SJA = UInt32(PCAN_TYPE_ISA_SJA),
    /// <summary>
    /// PHYTEC ISA
    /// </summary>
    PCANTP_HWTYPE_ISA_PHYTEC = UInt32(PCAN_TYPE_ISA_PHYTEC),
    /// <summary>
    /// PCAN-Dongle 82C200
    /// </summary>
    PCANTP_HWTYPE_DNG = UInt32(PCAN_TYPE_DNG),
    /// <summary>
    /// PCAN-Dongle EPP 82C200
    /// </summary>
    PCANTP_HWTYPE_DNG_EPP = UInt32(PCAN_TYPE_DNG_EPP),
    /// <summary>
    /// PCAN-Dongle SJA1000
    /// </summary>
    PCANTP_HWTYPE_DNG_SJA = UInt32(PCAN_TYPE_DNG_SJA),
    /// <summary>
    /// PCAN-Dongle EPP SJA1000
    /// </summary>
    PCANTP_HWTYPE_DNG_SJA_EPP = UInt32(PCAN_TYPE_DNG_SJA_EPP));

  /// <summary>
  /// PCAN devices
  /// </summary>
{$Z4}
  cantp_device = (
    /// <summary>
    /// Undefined, unknown or not selected PCAN device value
    /// </summary>
    PCANTP_DEVICE_NONE = UInt32(PCAN_NONE),
    /// <summary>
    /// PCAN Non-Plug&Play devices. NOT USED WITHIN PCAN-Basic API
    /// </summary>
    PCANTP_DEVICE_PEAKCAN = UInt32(PCAN_PEAKCAN),
    /// <summary>
    /// PCAN-ISA, PCAN-PC/104, and PCAN-PC/104-Plus
    /// </summary>
    PCANTP_DEVICE_ISA = UInt32(PCAN_ISA),
    /// <summary>
    /// PCAN-Dongle
    /// </summary>
    PCANTP_DEVICE_DNG = UInt32(PCAN_DNG),
    /// <summary>
    /// PCAN-PCI, PCAN-cPCI, PCAN-miniPCI, and PCAN-PCI Express
    /// </summary>
    PCANTP_DEVICE_PCI = UInt32(PCAN_PCI),
    /// <summary>
    /// PCAN-USB and PCAN-USB Pro
    /// </summary>
    PCANTP_DEVICE_USB = UInt32(PCAN_USB),
    /// <summary>
    /// PCAN-PC Card
    /// </summary>
    PCANTP_DEVICE_PCC = UInt32(PCAN_PCC),
    /// <summary>
    /// PCAN Virtual hardware. NOT USED WITHIN PCAN-Basic API
    /// </summary>
    PCANTP_DEVICE_VIRTUAL = UInt32(PCAN_VIRTUAL),
    /// <summary>
    /// PCAN Gateway devices
    /// </summary>
    PCANTP_DEVICE_LAN = UInt32(PCAN_LAN));

  /// <summary>
  /// Represents each group of errors a status can hold
  /// </summary>
{$Z4}
  cantp_statustype = (
    /// <summary>
    /// no error
    /// </summary>
    PCANTP_STATUSTYPE_OK = $00,
    /// <summary>
    /// general error
    /// </summary>
    PCANTP_STATUSTYPE_ERR = $01,
    /// <summary>
    /// bus status
    /// </summary>
    PCANTP_STATUSTYPE_BUS = $02,
    /// <summary>
    /// network status
    /// </summary>
    PCANTP_STATUSTYPE_NET = $04,
    /// <summary>
    /// extra information
    /// </summary>
    PCANTP_STATUSTYPE_INFO = $08,
    /// <summary>
    /// encapsulated PCAN-Basic status
    /// </summary>
    PCANTP_STATUSTYPE_PCAN = $10);

  /// <summary>
  /// Represents the network result of the communication of an ISO-TP message (used in cantp_status).
  /// </summary>
{$Z4}
  cantp_netstatus = (

    // ISO-TP network errors:

    /// <summary>
    /// No network error
    /// </summary>
    PCANTP_NETSTATUS_OK = $00,
    /// <summary>
    /// timeout occured between 2 frames transmission (sender and receiver side)
    /// </summary>
    PCANTP_NETSTATUS_TIMEOUT_A = $01,
    /// <summary>
    /// sender side timeout while waiting for flow control frame
    /// </summary>
    PCANTP_NETSTATUS_TIMEOUT_Bs = $02,
    /// <summary>
    /// receiver side timeout while waiting for consecutive frame
    /// </summary>
    PCANTP_NETSTATUS_TIMEOUT_Cr = $03,
    /// <summary>
    /// unexpected sequence number
    /// </summary>
    PCANTP_NETSTATUS_WRONG_SN = $04,
    /// <summary>
    /// invalid or unknown FlowStatus
    /// </summary>
    PCANTP_NETSTATUS_INVALID_FS = $05,
    /// <summary>
    /// unexpected protocol data unit
    /// </summary>
    PCANTP_NETSTATUS_UNEXP_PDU = $06,
    /// <summary>
    /// reception of flow control WAIT frame that exceeds the maximum counter defined by PCANTP_PARAMETER_WFT_MAX
    /// </summary>
    PCANTP_NETSTATUS_WFT_OVRN = $07,
    /// <summary>
    /// buffer on the receiver side cannot store the data length (server side only)
    /// </summary>
    PCANTP_NETSTATUS_BUFFER_OVFLW = $08,
    /// <summary>
    /// general error
    /// </summary>
    PCANTP_NETSTATUS_ERROR = $09,
    /// <summary>
    /// message was invalid and ignored
    /// </summary>
    PCANTP_NETSTATUS_IGNORED = $0A,
    /// <summary>
    /// sender side timeout while transmitting
    /// </summary>
    PCANTP_NETSTATUS_TIMEOUT_As = $0B,
    /// <summary>
    /// receiver side timeout while transmitting
    /// </summary>
    PCANTP_NETSTATUS_TIMEOUT_Ar = $0C,

    // NON ISO-TP related network results:

    /// <summary>
    /// transmit queue is full (failed too many times)
    /// </summary>
    PCANTP_NETSTATUS_XMT_FULL = $0D,
    /// <summary>
    /// CAN bus error
    /// </summary>
    PCANTP_NETSTATUS_BUS_ERROR = $0E,
    /// <summary>
    /// memory allocation error
    /// </summary>
    PCANTP_NETSTATUS_NO_MEMORY = $0F

    );

  /// <summary>
  /// Represents the status of a CAN bus (used in cantp_status).
  /// </summary>
{$Z4}
  cantp_busstatus = (
    /// <summary>
    /// Bus is in active state
    /// </summary>
    PCANTP_BUSSTATUS_OK = $00,
    /// <summary>
    /// Bus error: an error counter reached the 'light' limit
    /// </summary>
    PCANTP_BUSSTATUS_LIGHT = $01,
    /// <summary>
    /// Bus error: an error counter reached the 'heavy' limit
    /// </summary>
    PCANTP_BUSSTATUS_HEAVY = $02,
    /// <summary>
    /// Bus error: an error counter reached the 'warning/heavy' limit
    /// </summary>
    PCANTP_BUSSTATUS_WARNING = PCANTP_BUSSTATUS_HEAVY,
    /// <summary>
    /// Bus error: the CAN controller is error passive
    /// </summary>
    PCANTP_BUSSTATUS_PASSIVE = $04,
    /// <summary>
    /// Bus error: the CAN controller is in bus-off state
    /// </summary>
    PCANTP_BUSSTATUS_OFF = $08,
    /// <summary>
    /// Mask for all bus errors
    /// </summary>
    PCANTP_BUSSTATUS_ANY = UInt32(PCANTP_BUSSTATUS_LIGHT) Or UInt32(PCANTP_BUSSTATUS_HEAVY) Or UInt32(PCANTP_BUSSTATUS_WARNING) Or UInt32(PCANTP_BUSSTATUS_PASSIVE) Or UInt32(PCANTP_BUSSTATUS_OFF)

    );

  /// <summary>
  /// Represents an general error (used in cantp_status).
  /// </summary>
{$Z2}
  cantp_errstatus = (
    /// <summary>
    /// No error
    /// </summary>
    PCANTP_ERRSTATUS_OK = $00,
    /// <summary>
    /// Not Initialized
    /// </summary>
    PCANTP_ERRSTATUS_NOT_INITIALIZED = $01,
    /// <summary>
    /// Already Initialized
    /// </summary>
    PCANTP_ERRSTATUS_ALREADY_INITIALIZED = $02,
    /// <summary>
    /// Could not obtain memory
    /// </summary>
    PCANTP_ERRSTATUS_NO_MEMORY = $03,
    /// <summary>
    /// Input buffer overflow
    /// </summary>
    PCANTP_ERRSTATUS_OVERFLOW = $04,
    /// <summary>
    /// No Message available
    /// </summary>
    PCANTP_ERRSTATUS_NO_MESSAGE = $07,
    /// <summary>
    /// Parameter has an invalid or unexpected type
    /// </summary>
    PCANTP_ERRSTATUS_PARAM_INVALID_TYPE = $08,
    /// <summary>
    /// Parameter has an invalid value
    /// </summary>
    PCANTP_ERRSTATUS_PARAM_INVALID_VALUE = $09,
    /// <summary>
    /// PCANTP mapping not initialized
    /// </summary>
    PCANTP_ERRSTATUS_MAPPING_NOT_INITIALIZED = $0D,
    /// <summary>
    /// PCANTP mapping parameters are invalid
    /// </summary>
    PCANTP_ERRSTATUS_MAPPING_INVALID = $0E,
    /// <summary>
    /// PCANTP mapping already defined
    /// </summary>
    PCANTP_ERRSTATUS_MAPPING_ALREADY_INITIALIZED = $0F,
    /// <summary>
    ///
    /// </summary>
    PCANTP_ERRSTATUS_PARAM_BUFFER_TOO_SMALL = $10,
    /// <summary>
    /// Tx queue is full
    /// </summary>
    PCANTP_ERRSTATUS_QUEUE_TX_FULL = $11,
    /// <summary>
    /// Failed to get an access to the internal lock
    /// </summary>
    PCANTP_ERRSTATUS_LOCK_TIMEOUT = $12,
    /// <summary>
    /// Invalid cantp_handle
    /// </summary>
    PCANTP_ERRSTATUS_INVALID_HANDLE = $13,
    /// <summary>
    /// unknown/generic error
    /// </summary>
    PCANTP_ERRSTATUS_UNKNOWN = $FF);

  /// <summary>
  /// Represents additional status information (used in cantp_status).
  /// </summary>
{$Z4}
  cantp_infostatus = (
    /// <summary>
    /// no extra information
    /// </summary>
    PCANTP_INFOSTATUS_OK = $00,
    /// <summary>
    /// input was modified by the API
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_INPUT_MODIFIED = $01,
    /// <summary>
    /// DLC value was modified by the API
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_DLC_MODIFIED = $02,
    /// <summary>
    /// Data Length value was modified by the API
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_DATA_LENGTH_MODIFIED = $04,
    /// <summary>
    /// FD related flags value were modified by the API
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_FD_FLAG_MODIFIED = $08,
    /// <summary>
    /// Message receive queue is full (oldest messages may be lost)
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_FULL = $10,
    /// <summary>
    /// Buffer is used by another thread or API
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_BUFFER_IN_USE = $20,
    /// <summary>
    /// Internal queue read too late (a frame was lost)
    /// </summary>
    PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_OVERRUN = $30

    );

  // Represents the PCAN error and status codes
  cantp_pcanstatus = UInt32;

  /// <summary>
  /// Represent the PCANTP error and status codes .
  ///
  /// Bits information:
  /// 32|  28|  24|  20|  16|  12|   8|   4|   0|
  /// |    |    |    |    |    |    |    |    |
  /// 0000 0000 0000 0000 0000 0000 0000 0000
  /// |    |    |    |    |         [0000 0000] => PCAN-ISO-TP API errors
  /// |    |    |    |    |  [0 0000]           => CAN Bus status
  /// |    |    |    | [00 000]                 => Networking message status
  /// |    |    [0000 00]                       => API extra information
  /// |[000 0000]                               => Reserved
  /// [0]                                       => PCANBasic error flag (overrides the meaning of all bits)
  /// </summary>
{$Z4}
  cantp_status = (

    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_OK = UInt32(PCANTP_ERRSTATUS_OK),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_NOT_INITIALIZED = UInt32(PCANTP_ERRSTATUS_NOT_INITIALIZED),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_ALREADY_INITIALIZED = UInt32(PCANTP_ERRSTATUS_ALREADY_INITIALIZED),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_NO_MEMORY = UInt32(PCANTP_ERRSTATUS_NO_MEMORY),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_OVERFLOW = UInt32(PCANTP_ERRSTATUS_OVERFLOW),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_NO_MESSAGE = UInt32(PCANTP_ERRSTATUS_NO_MESSAGE),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_PARAM_INVALID_TYPE = UInt32(PCANTP_ERRSTATUS_PARAM_INVALID_TYPE),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_PARAM_INVALID_VALUE = UInt32(PCANTP_ERRSTATUS_PARAM_INVALID_VALUE),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_MAPPING_NOT_INITIALIZED = UInt32(PCANTP_ERRSTATUS_MAPPING_NOT_INITIALIZED),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_MAPPING_INVALID = UInt32(PCANTP_ERRSTATUS_MAPPING_INVALID),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_MAPPING_ALREADY_INITIALIZED = UInt32(PCANTP_ERRSTATUS_MAPPING_ALREADY_INITIALIZED),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_PARAM_BUFFER_TOO_SMALL = UInt32(PCANTP_ERRSTATUS_PARAM_BUFFER_TOO_SMALL),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_QUEUE_TX_FULL = UInt32(PCANTP_ERRSTATUS_QUEUE_TX_FULL),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_LOCK_TIMEOUT = UInt32(PCANTP_ERRSTATUS_LOCK_TIMEOUT),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_HANDLE_INVALID = UInt32(PCANTP_ERRSTATUS_INVALID_HANDLE),
    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_UNKNOWN = UInt32(PCANTP_ERRSTATUS_UNKNOWN),

    // Bus status flags (bits [8..11])

    /// <summary>
    /// PCANTP Channel is in BUS-LIGHT error state
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_LIGHT = UInt32(PCANTP_BUSSTATUS_LIGHT) Shl PCANTP_STATUS_OFFSET_BUS, //

    /// <summary>
    /// PCANTP Channel is in BUS-HEAVY error state
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_HEAVY = UInt32(PCANTP_BUSSTATUS_HEAVY) Shl PCANTP_STATUS_OFFSET_BUS,

    /// <summary>
    /// PCANTP Channel is in BUS-HEAVY error state
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_WARNING = UInt32(PCANTP_STATUS_FLAG_BUS_HEAVY),

    /// <summary>
    /// PCANTP Channel is error passive state
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_PASSIVE = UInt32(PCANTP_BUSSTATUS_PASSIVE) Shl PCANTP_STATUS_OFFSET_BUS,

    /// <summary>
    /// CANTP Channel is in BUS-OFF error state
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_OFF = UInt32(PCANTP_BUSSTATUS_OFF) Shl PCANTP_STATUS_OFFSET_BUS,

    /// <summary>
    ///
    /// </summary>
    PCANTP_STATUS_FLAG_BUS_ANY = UInt32(PCANTP_BUSSTATUS_ANY) Shl PCANTP_STATUS_OFFSET_BUS,

    // Network status (bits [13..17])

    /// <summary>
    /// This flag states if one of the following network errors occured with the fetched message
    /// </summary>
    PCANTP_STATUS_FLAG_NETWORK_RESULT = 1 Shl PCANTP_STATUS_OFFSET_NET,
    /// <summary>
    /// timeout occured between 2 frames transmission (sender and receiver side)
    /// </summary>
    PCANTP_STATUS_NETWORK_TIMEOUT_A = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_TIMEOUT_A) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    //
    /// <summary>
    /// sender side timeout while waiting for flow control frame
    /// </summary>
    PCANTP_STATUS_NETWORK_TIMEOUT_Bs = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_TIMEOUT_Bs) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// receiver side timeout while waiting for consecutive frame
    /// </summary>
    PCANTP_STATUS_NETWORK_TIMEOUT_Cr = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_TIMEOUT_Cr) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// unexpected sequence number
    /// </summary>
    PCANTP_STATUS_NETWORK_WRONG_SN = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_WRONG_SN) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// invalid or unknown FlowStatus
    /// </summary>
    PCANTP_STATUS_NETWORK_INVALID_FS = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_INVALID_FS) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// unexpected protocol data unit
    /// </summary>
    PCANTP_STATUS_NETWORK_UNEXP_PDU = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_UNEXP_PDU) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// reception of flow control WAIT frame that exceeds the maximum counter defined by PCANTP_PARAMETER_WFT_MAX
    /// </summary>
    PCANTP_STATUS_NETWORK_WFT_OVRN = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_WFT_OVRN) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// buffer on the receiver side cannot store the data length (server side only)
    /// </summary>
    PCANTP_STATUS_NETWORK_BUFFER_OVFLW = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_BUFFER_OVFLW) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// general error
    /// </summary>
    PCANTP_STATUS_NETWORK_ERROR = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_ERROR) Shl (PCANTP_STATUS_OFFSET_NET + 1)),
    /// <summary>
    /// message was invalid and ignored
    /// </summary>
    PCANTP_STATUS_NETWORK_IGNORED = UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_IGNORED) Shl (PCANTP_STATUS_OFFSET_NET + 1)),

    // ISO-TP extra information flags

    /// <summary>
    /// Receiver side timeout while transmitting
    /// </summary>
    PCANTP_STATUS_NETWORK_TIMEOUT_Ar = (UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_TIMEOUT_Ar) Shl (PCANTP_STATUS_OFFSET_NET + 1))),
    /// <summary>
    /// Sender side timeout while transmitting
    /// </summary>
    PCANTP_STATUS_NETWORK_TIMEOUT_As = (UInt32(PCANTP_STATUS_FLAG_NETWORK_RESULT) Or (UInt32(PCANTP_NETSTATUS_TIMEOUT_As) Shl (PCANTP_STATUS_OFFSET_NET + 1))),
    /// <summary>
    /// input was modified
    /// </summary>
    PCANTP_STATUS_CAUTION_INPUT_MODIFIED = UInt32(PCANTP_INFOSTATUS_CAUTION_INPUT_MODIFIED) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// DLC value of the input was modified
    /// </summary>
    PCANTP_STATUS_CAUTION_DLC_MODIFIED = UInt32(PCANTP_INFOSTATUS_CAUTION_DLC_MODIFIED) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// Data Length value of the input was modified
    /// </summary>
    PCANTP_STATUS_CAUTION_DATA_LENGTH_MODIFIED = UInt32(PCANTP_INFOSTATUS_CAUTION_DATA_LENGTH_MODIFIED) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// FD flags of the input was modified
    /// </summary>
    PCANTP_STATUS_CAUTION_FD_FLAG_MODIFIED = UInt32(PCANTP_INFOSTATUS_CAUTION_FD_FLAG_MODIFIED) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// Receive queue is full
    /// </summary>
    PCANTP_STATUS_CAUTION_RX_QUEUE_FULL = UInt32(PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_FULL) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// Buffer is used by another thread or API
    /// </summary>
    PCANTP_STATUS_CAUTION_BUFFER_IN_USE = UInt32(PCANTP_INFOSTATUS_CAUTION_BUFFER_IN_USE) Shl PCANTP_STATUS_OFFSET_INFO,
    /// <summary>
    /// Internal queue read too late (a frame was lost)
    /// </summary>
    PCANTP_STATUS_CAUTION_RX_QUEUE_OVERRUN = UInt32(PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_OVERRUN) Shl PCANTP_STATUS_OFFSET_INFO,



    // Lower API status code: see also PCANTP_STATUS_xx macros

    /// <summary>
    /// PCAN error flag, remove flag to get a usable PCAN error/status code (cf. PCANBasic API)
    /// </summary>
    PCANTP_STATUS_FLAG_PCAN_STATUS = UInt32($80000000),

    // Masks to merge/retrieve different PCANTP status by type in a cantp_status

    /// <summary>
    /// filter by PCANTP_STATUSTYPE_ERR type
    /// </summary>
    PCANTP_STATUS_MASK_ERROR = UInt32($000000FF),

    /// <summary>
    /// filter by PCANTP_STATUSTYPE_BUS type
    /// </summary>
    PCANTP_STATUS_MASK_BUS = UInt32($00001F00),

    /// <summary>
    /// filter by PCANTP_STATUSTYPE_NET type
    /// </summary>
    PCANTP_STATUS_MASK_ISOTP_NET = UInt32($0003E000),

    /// <summary>
    /// filter by PCANTP_STATUSTYPE_INFO type
    /// </summary>
    PCANTP_STATUS_MASK_INFO = UInt32($00FC0000),

    /// <summary>
    /// filter by PCANTP_STATUSTYPE_PCAN type
    /// </summary>
    PCANTP_STATUS_MASK_PCAN = Not PCANTP_STATUS_FLAG_PCAN_STATUS

    );

  /// <summary>
  /// List of parameters handled by PCAN-ISO-TP (rev. 2016)
  /// Note: PCAN-Basic parameters (PCAN_PARAM_xxx) are compatible via casting.
  /// </summary>
{$Z4}
  cantp_parameter = (
    /// <summary>
    /// PCAN-ISO-TP API version parameter
    /// </summary>
    PCANTP_PARAMETER_API_VERSION = $101,
    /// <summary>
    /// 1 BYTE data describing the condition of a channel.
    /// </summary>
    PCANTP_PARAMETER_CHANNEL_CONDITION = $102,
    /// <summary>
    /// 1 BYTE data describing the debug mode
    /// </summary>
    PCANTP_PARAMETER_DEBUG = $103, //
    /// <summary>
    /// data is pointer to a HANDLE created by CreateEvent function
    /// </summary>
    PCANTP_PARAMETER_RECEIVE_EVENT = $104,

    /// <summary>
    /// 1 BYTE data stating if unsegmented (NON-ISO-TP) CAN frames can be received
    /// </summary>
    PCANTP_PARAMETER_FRAME_FILTERING = $105,
    /// <summary>
    /// 1 BYTE data stating the default DLC to use when transmitting messages with CAN FD
    /// </summary>
    PCANTP_PARAMETER_CAN_TX_DL = $106,
    /// <summary>
    /// 1 BYTE data stating if CAN frame DLC uses padding or not
    /// </summary>
    PCANTP_PARAMETER_CAN_DATA_PADDING = $107,
    /// <summary>
    /// 1 BYTE data stating the value used for CAN data padding
    /// </summary>
    PCANTP_PARAMETER_CAN_PADDING_VALUE = $108,
    /// <summary>
    /// 1 BYTE data stating which revision of ISO 15765-2 to use (see PCANTP_ISO_REV_*).
    /// </summary>
    PCANTP_PARAMETER_ISO_REV = $109,
    /// <summary>
    /// 1 BYTE data stating the default priority value for normal fixed, mixed and enhanced addressing (default=6)
    /// </summary>
    PCANTP_PARAMETER_J1939_PRIORITY = $10A,
    /// <summary>
    /// 1 BYTE data stating if pending messages are displayed/hidden
    /// </summary>
    PCANTP_PARAMETER_MSG_PENDING = $10B,

    /// <summary>
    /// 1 BYTE data describing the block size parameter (BS)
    /// </summary>
    PCANTP_PARAMETER_BLOCK_SIZE = $10C,
    /// <summary>
    /// 2 BYTE data describing the transmit block size parameter (BS_TX)
    /// </summary>
    PCANTP_PARAMETER_BLOCK_SIZE_TX = $10D,
    /// <summary>
    /// 1 BYTE data describing the seperation time parameter (STmin)
    /// </summary>
    PCANTP_PARAMETER_SEPARATION_TIME = $10E,
    /// <summary>
    /// 2 BYTE data describing the transmit seperation time parameter (STmin_TX)
    /// </summary>
    PCANTP_PARAMETER_SEPARATION_TIME_TX = $10F,
    /// <summary>
    /// 4 BYTE data describing the Wait Frame Transmissions parameter.
    /// </summary>
    PCANTP_PARAMETER_WFT_MAX = $110,

    /// <summary>
    /// 4 BYTE data describing ISO-15765-2:Timeout As.
    /// </summary>
    PCANTP_PARAMETER_TIMEOUT_AS = $111,
    /// <summary>
    /// 4 BYTE data describing ISO-15765-2:Timeout Ar.
    /// </summary>
    PCANTP_PARAMETER_TIMEOUT_AR = $112,
    /// <summary>
    /// 4 BYTE data describing ISO-15765-2:Timeout Bs.
    /// </summary>
    PCANTP_PARAMETER_TIMEOUT_BS = $113,
    /// <summary>
    /// 4 BYTE data describing ISO-15765-2:Timeout Cr.
    /// </summary>
    PCANTP_PARAMETER_TIMEOUT_CR = $114,
    /// <summary>
    /// 1 BYTE data describing the tolerence to apply to all timeout as a percentage ([0..100].
    /// </summary>
    PCANTP_PARAMETER_TIMEOUT_TOLERANCE = $115,
    /// <summary>
    /// 1 BYTE data to set predefined ISO values for timeouts (see PCANTP_ISO_TIMEOUTS_*).
    /// </summary>
    PCANTP_PARAMETER_ISO_TIMEOUTS = $116,
    /// <summary>
    /// 1 BYTE data to set optimization options to improve delay between ISO-TP consecutive frames.
    /// </summary>
    PCANTP_PARAMETER_SELFRECEIVE_LATENCY = $117,
    /// <summary>
    /// 2 BYTE data describing the maximum number of messages in the Rx queue.
    /// </summary>
    PCANTP_PARAMETER_MAX_RX_QUEUE = $118,
    /// <summary>
    /// 1 BYTE data stating if messages handled by higher layer APIs are still available in this API (default=0).
    /// </summary>
    PCANTP_PARAMETER_KEEP_HIGHER_LAYER_MESSAGES = $119,
    /// <summary>
    /// 1 BYTE data stating if the white-list CAN IDs filtering mechanism is enabled.
    /// </summary>
    PCANTP_PARAMETER_FILTER_CAN_ID = $11A,
    /// <summary>
    /// 1 BYTE data stating if the 29 bit Enhanced Diagnostic CAN identifier is supported (ISO-15765-3:2004, default is false with ISO revision 2016).
    /// </summary>
    PCANTP_PARAMETER_SUPPORT_29B_ENHANCED = $11B,
    /// <summary>
    /// 1 BYTE data stating if the 29 bit Fixed Normal addressing CAN identifier is supported (default is true).
    /// </summary>
    PCANTP_PARAMETER_SUPPORT_29B_FIXED_NORMAL = $11C,
    /// <summary>
    /// 1 BYTE data stating if the 29 bit Mixed addressing CAN identifier is supported (default is true).
    /// </summary>
    PCANTP_PARAMETER_SUPPORT_29B_MIXED = $11D,
    /// <summary>
    /// Pointer to a cantp_msg, checks if the message is valid and can be sent (ex. if a mapping is needed) and corrects input if needed.
    /// </summary>
    PCANTP_PARAMETER_MSG_CHECK = $11E,
    /// <summary>
    /// 1 BYTE data stating to clear Rx/Tx queues and CAN controller (channel is unitialized and re-initialized but settings and mappings are kept)
    /// </summary>
    PCANTP_PARAMETER_RESET_HARD = $11F,
    /// <summary>
    /// 1 BYTE data stating if network is full-duplex (default) or half-duplex
    /// </summary>
    PCANTP_PARAMETER_NETWORK_LAYER_DESIGN = $120,
    /// <summary>
    /// 1 BYTE data stating if API allows receiption PCANTP_MSGTYPE_CANINFO from lower layer APIs
    /// </summary>
    PCANTP_PARAMETER_ALLOW_MSGTYPE_CANINFO = $124,
    /// <summary>
    /// Data is a pointer to a user-defined callback triggered when a message is received.
    /// </summary>
    PCANTP_PARAMETER_RECEIVE_EVENT_CALLBACK = $125,
    /// <summary>
    /// Data is a pointer to a user-defined structure. It can be used to pass user arguments to the reception callback function.
    /// </summary>
    PCANTP_PARAMETER_RECEIVE_EVENT_CALLBACK_USER_CONTEXT = $126,

    /// <summary>
    /// PCAN hardware name parameter
    /// </summary>
    PCANTP_PARAMETER_HARDWARE_NAME = UInt32(PCAN_HARDWARE_NAME),
    /// <summary>
    /// PCAN-USB device identifier parameter
    /// </summary>
    PCANTP_PARAMETER_DEVICE_ID = UInt32(PCAN_DEVICE_ID),
    /// <summary>
    /// Deprecated use PCANTP_PARAMETER_DEVICE_ID instead
    /// </summary>
    PCANTP_PARAMETER_DEVICE_NUMBER = UInt32(PCAN_DEVICE_ID),
    /// <summary>
    /// CAN-Controller number of a PCAN-Channel
    /// </summary>
    PCANTP_PARAMETER_CONTROLLER_NUMBER = UInt32(PCAN_CONTROLLER_NUMBER),
    /// <summary>
    /// Capabilities of a PCAN device (FEATURE_***)
    /// </summary>
    PCANTP_PARAMETER_CHANNEL_FEATURES = UInt32(PCAN_CHANNEL_FEATURES));

  /// <summary>
  /// Represents the type of a CANTP message (see field "cantp_msg.type").
  /// </summary>
{$Z4}
  cantp_msgtype = (
    /// <summary>
    /// uninitialized message (data is NULL)
    /// </summary>
    PCANTP_MSGTYPE_NONE = 0,
    /// <summary>
    /// standard CAN frame
    /// </summary>
    PCANTP_MSGTYPE_CAN = 1,
    /// <summary>
    /// CAN frame with FD support
    /// </summary>
    PCANTP_MSGTYPE_CANFD = 2,
    /// <summary>
    /// ISO-TP message (ISO:15765)
    /// </summary>
    PCANTP_MSGTYPE_ISOTP = 4,
    /// <summary>
    /// CAN bus information
    /// </summary>
    PCANTP_MSGTYPE_CANINFO = 8,

    /// <summary>
    /// frame only: unsegmented messages
    /// </summary>
    PCANTP_MSGTYPE_FRAME = UInt32(PCANTP_MSGTYPE_CAN) Or UInt32(PCANTP_MSGTYPE_CANFD),
    /// <summary>
    /// any supported message type
    /// </summary>
    PCANTP_MSGTYPE_ANY = UInt32(PCANTP_MSGTYPE_FRAME) Or UInt32(PCANTP_MSGTYPE_ISOTP) Or UInt32($FFFFFFFF));

  /// <summary>
  /// Represents the flags common to all types of cantp_msg (see field "cantp_msg.msgdata.flags").
  /// </summary>
{$Z4}
  cantp_msgflag = (
    /// <summary>
    /// no flag
    /// </summary>
    PCANTP_MSGFLAG_NONE = 0,
    /// <summary>
    /// message is the confirmation of a transmitted message
    /// </summary>
    PCANTP_MSGFLAG_LOOPBACK = 1,
    /// <summary>
    /// message is a frame of a segmented ISO-TP message
    /// </summary>
    PCANTP_MSGFLAG_ISOTP_FRAME = 2,
    /// <summary>
    /// a QOVERRUN error occured while processing this message (confirmation via echo message is not confirmed)
    /// </summary>
    PCANTP_MSGFLAG_QOVERRUN_OCCURED = 4);

  /// <summary>
  /// Represents the flags of a CAN or CAN FD frame (must be used as flags for ex. EXTENDED|FD|BRS.) (see field "cantp_msg.can_info.can_msgtype")
  /// </summary>
{$Z4}
  cantp_can_msgtype = (
    /// <summary>
    /// The PCAN message is a CAN Standard Frame (11-bit identifier)
    /// </summary>
    PCANTP_CAN_MSGTYPE_STANDARD = UInt32(PCAN_MESSAGE_STANDARD),
    /// <summary>
    /// The PCAN message is a CAN Remote-Transfer-Request Frame
    /// </summary>
    PCANTP_CAN_MSGTYPE_RTR = UInt32(PCAN_MESSAGE_RTR),
    /// <summary>
    /// The PCAN message is a CAN Extended Frame (29-bit identifier)
    /// </summary>
    PCANTP_CAN_MSGTYPE_EXTENDED = UInt32(PCAN_MESSAGE_EXTENDED),
    /// <summary>
    /// The PCAN message represents a FD frame in terms of CiA Specs
    /// </summary>
    PCANTP_CAN_MSGTYPE_FD = UInt32(PCAN_MESSAGE_FD),
    /// <summary>
    /// The PCAN message represents a FD bit rate switch (CAN data at a higher bit rate)
    /// </summary>
    PCANTP_CAN_MSGTYPE_BRS = UInt32(PCAN_MESSAGE_BRS),
    /// <summary>
    /// The PCAN message represents a FD error state indicator(CAN FD transmitter was error active)
    /// </summary>
    PCANTP_CAN_MSGTYPE_ESI = UInt32(PCAN_MESSAGE_ESI),
    /// <summary>
    /// The PCAN message represents an error frame.
    /// </summary>
    PCANTP_CAN_MSGTYPE_ERRFRAME = UInt32(PCAN_MESSAGE_ERRFRAME),
    /// <summary>
    /// The PCAN message represents a PCAN status message.
    /// </summary>
    PCANTP_CAN_MSGTYPE_STATUS = UInt32(PCAN_MESSAGE_STATUS),
     /// <summary>
    /// Echo messages reception status within a PCAN-Channel
    /// </summary>
	  PCANTP_CAN_MSGTYPE_ECHO = UInt32(PCAN_MESSAGE_ECHO),
   /// <summary>
    /// Flag stating that the message is not a CAN Frame
    /// </summary>
    PCANTP_CAN_MSGTYPE_FLAG_INFO = (UInt32(PCAN_MESSAGE_ERRFRAME) Or UInt32(PCAN_MESSAGE_STATUS)));

  /// <summary>
  /// Represents the type of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.msgtype").
  /// </summary>
{$Z4}
  cantp_isotp_msgtype = (
    /// <summary>
    /// Unknown (non-ISO-TP) message
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_UNKNOWN = $00,
    /// <summary>
    /// Diagnostic message (request or confirmation)
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_DIAGNOSTIC = $01,
    /// <summary>
    /// Remote Diagnostic message (request or confirmation)
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_REMOTE_DIAGNOSTIC = $02,
    /// <summary>
    /// Multi-Frame Message is being received
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION_RX = $10,
    /// <summary>
    /// Multi-Frame Message is being transmitted
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION_TX = $20,
    /// <summary>
    /// Multi-Frame Message is being communicated (Tx or Rx)
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION = ($10 Or $20),
    /// <summary>
    /// Mask to remove Indication flags
    /// </summary>
    PCANTP_ISOTP_MSGTYPE_MASK_INDICATION = $0F);

  /// <summary>
  /// Represents the addressing format of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.format").
  /// </summary>
{$Z4}
  cantp_isotp_format = (
    /// <summary>
    /// unknown adressing format
    /// </summary>
    PCANTP_ISOTP_FORMAT_UNKNOWN = $FF,
    /// <summary>
    /// unsegmented CAN frame
    /// </summary>
    PCANTP_ISOTP_FORMAT_NONE = $00,
    /// <summary>
    /// normal adressing format from ISO 15765-2
    /// </summary>
    PCANTP_ISOTP_FORMAT_NORMAL = $01,
    /// <summary>
    /// fixed normal adressing format from ISO 15765-2
    /// </summary>
    PCANTP_ISOTP_FORMAT_FIXED_NORMAL = $02,
    /// <summary>
    /// extended adressing format from ISO 15765-2
    /// </summary>
    PCANTP_ISOTP_FORMAT_EXTENDED = $03,
    /// <summary>
    /// mixed adressing format from ISO 15765-2
    /// </summary>
    PCANTP_ISOTP_FORMAT_MIXED = $04,
    /// <summary>
    /// enhanced adressing format from ISO 15765-3
    /// </summary>
    PCANTP_ISOTP_FORMAT_ENHANCED = $05);

  /// <summary>
  /// Represents the type of target of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.target_type").
  /// </summary>
{$Z4}
  cantp_isotp_addressing = (
    /// <summary>
    /// Unknown adressing format
    /// </summary>
    PCANTP_ISOTP_ADDRESSING_UNKNOWN = $00,
    /// <summary>
    /// Physical addressing ("peer to peer")
    /// </summary>
    PCANTP_ISOTP_ADDRESSING_PHYSICAL = $01,
    /// <summary>
    /// Functional addressing ("peer to any")
    /// </summary>
    PCANTP_ISOTP_ADDRESSING_FUNCTIONAL = $02);

  /// <summary>
  /// Represents the options of a message (mainly supported for ISO-TP message) (see field "cantp_msg.msgdata.options").
  /// </summary>
{$Z4}
  cantp_option = (
    /// <summary>
    /// 1 BYTE data stating if unsegmented (NON-ISO-TP) CAN frames can be received
    /// </summary>
    PCANTP_OPTION_FRAME_FILTERING = UInt32(PCANTP_PARAMETER_FRAME_FILTERING),
    /// <summary>
    /// 1 BYTE data stating if CAN frame DLC uses padding or not
    /// </summary>
    PCANTP_OPTION_CAN_DATA_PADDING = UInt32(PCANTP_PARAMETER_CAN_DATA_PADDING),
    /// <summary>
    /// 1 BYTE data stating the value used for CAN data padding
    /// </summary>
    PCANTP_OPTION_CAN_PADDING_VALUE = UInt32(PCANTP_PARAMETER_CAN_PADDING_VALUE),
    /// <summary>
    /// 1 BYTE data stating the default priority value for normal fixed, mixed and enhanced addressing (default=6)
    /// </summary>
    PCANTP_OPTION_J1939_PRIORITY = UInt32(PCANTP_PARAMETER_J1939_PRIORITY),
    /// <summary>
    /// 1 BYTE data stating if pending messages are displayed/hidden
    /// </summary>
    PCANTP_OPTION_MSG_PENDING = UInt32(PCANTP_PARAMETER_MSG_PENDING),
    /// <summary>
    /// 1 BYTE data describing the block size parameter (BS)
    /// </summary>
    PCANTP_OPTION_BLOCK_SIZE = UInt32(PCANTP_PARAMETER_BLOCK_SIZE),
    /// <summary>
    /// 2 BYTE data describing the transmit block size parameter (BS_TX)
    /// </summary>
    PCANTP_OPTION_BLOCK_SIZE_TX = UInt32(PCANTP_PARAMETER_BLOCK_SIZE_TX),
    /// <summary>
    /// 1 BYTE data describing the seperation time parameter (STmin)
    /// </summary>
    PCANTP_OPTION_SEPARATION_TIME = UInt32(PCANTP_PARAMETER_SEPARATION_TIME),
    /// <summary>
    /// 2 BYTE data describing the transmit seperation time parameter (STmin_TX)
    /// </summary>
    PCANTP_OPTION_SEPARATION_TIME_TX = UInt32(PCANTP_PARAMETER_SEPARATION_TIME_TX),
    /// <summary>
    /// 4 BYTE data describing the Wait Frame Transmissions parameter.
    /// </summary>
    PCANTP_OPTION_WFT_MAX = UInt32(PCANTP_PARAMETER_WFT_MAX),
    /// <summary>
    /// 1 BYTE data to set optimization options to improve delay between ISO-TP consecutive frames.
    /// </summary>
    PCANTP_OPTION_SELFRECEIVE_LATENCY = UInt32(PCANTP_PARAMETER_SELFRECEIVE_LATENCY));

  /// <summary>
  /// Represents the status for a message whose transmission is in progress.
  /// </summary>
{$Z4}
  cantp_msgprogress_state = (
    /// <summary>
    /// Message is not yet handled.
    /// </summary>
    PCANTP_MSGPROGRESS_STATE_QUEUED = 0,
    /// <summary>
    /// Message is being processed (received or transmitted).
    /// </summary>
    PCANTP_MSGPROGRESS_STATE_PROCESSING = 1,
    /// <summary>
    /// Message is completed.
    /// </summary>
    PCANTP_MSGPROGRESS_STATE_COMPLETED = 2,
    /// <summary>
    /// Message is unknown/not found.
    /// </summary>
    PCANTP_MSGPROGRESS_STATE_UNKNOWN = 3);

  /// <summary>
  /// Represents the direction of a message's communication.
  /// </summary>
{$Z4}
  cantp_msgdirection = (
    /// <summary>
    /// Message is being received.
    /// </summary>
    PCANTP_MSGDIRECTION_RX = 0,
    /// <summary>
    /// Message is being transmitted.
    /// </summary>
    PCANTP_MSGDIRECTION_TX = 1);

  // Reserved extra information
  cantp_msginfo_flag = UInt32;
  cantp_msginfo_extra = Pointer;
  cantp_isotp_info = Pointer;

  cantp_bitrate = PAnsiChar;
  cantp_timestamp = uint64; // Timestamp

  // Pointers
  Pcantp_timestamp = ^cantp_timestamp;
  Pcantp_netaddrinfo = ^cantp_netaddrinfo;
  Pcantp_mapping = ^cantp_mapping;
  Pcantp_msg = ^cantp_msg;
  Pcantp_msgrule = ^cantp_msgrule;
  PUInt32 = ^UInt32;

  /// /////////////////////////////////////////////////////////
  // miscellaneous message related definitions
  /// /////////////////////////////////////////////////////////

  /// <summary>
  /// Internal information about cantp_msg message (reserved).
  /// </summary>
  cantp_msginfo = record
    /// <summary>
    /// (read-only) size of the message object
    /// </summary>
    size: UInt32;
    /// <summary>
    /// (read-only) reserved
    /// </summary>
    flags: cantp_msginfo_flag;
    /// <summary>
    /// (read-only) reserved
    /// </summary>
    extra: cantp_msginfo_extra;
  end;

  /// <summary>
  /// Represents message's options to override.
  /// </summary>
  cantp_msgoption = record
    /// <summary>
    /// Name of the option.
    /// </summary>
    name: cantp_option;
    /// <summary>
    /// Value of the option.
    /// </summary>
    value: UInt32;
  end;

  /// <summary>
  /// Represents a list of message's options to override.
  /// </summary>
  cantp_msgoption_list = record
    /// <summary>
    /// Pointer to an array of cantp_msgoption.
    /// </summary>
    buffer: ^cantp_msgoption;
    /// <summary>
    /// Number of options in the array.
    /// </summary>
    count: UInt32;
  end;

  /// <summary>
  /// Represents common CAN information.
  /// </summary>
  cantp_can_info = record
    /// <summary>
    /// CAN identifier
    /// </summary>
    can_id: UInt32;
    /// <summary>
    /// Types and flags of the CAN/CAN-FD frame (see cantp_can_msgtype)
    /// </summary>
    can_msgtype: cantp_can_msgtype;
    /// <summary>
    /// Data Length Code of the frame (0..15)
    /// </summary>
    dlc: Byte;
  end;

  /// <summary>
  /// Represents the network address information of an ISO-TP message.
  /// </summary>
  cantp_netaddrinfo = record
    /// <summary>
    /// ISO-TP message type
    /// </summary>
    msgtype: cantp_isotp_msgtype;
    /// <summary>
    /// ISO-TP format addressing
    /// </summary>
    format: cantp_isotp_format;
    /// <summary>
    /// ISO-TP addressing/target type
    /// </summary>
    target_type: cantp_isotp_addressing;
    /// <summary>
    /// source address
    /// </summary>
    source_addr: UInt16;
    /// <summary>
    /// target address
    /// </summary>
    target_addr: UInt16;
    /// <summary>
    /// extension address
    /// </summary>
    extension_addr: Byte;
  end;

  /// <summary>
  /// Represents a mapping between an ISO-TP network address information and a CAN ID.
  /// </summary>
  cantp_mapping = record
    /// <summary>
    /// Mapping's unique ID (read-only, set by CANTP_AddMapping_2016)
    /// </summary>
    uid: Pointer;
    /// <summary>
    /// CAN ID mapped to the Network Address Information
    /// </summary>
    can_id: UInt32;
    /// <summary>
    /// CAN ID used for the flow control frame (formerly 'can_id_resp')
    /// </summary>
    can_id_flow_ctrl: UInt32;
    /// <summary>
    /// CAN frame msgtype (only PCANTP_CAN_MSGTYPE_STANDARD or PCANTP_CAN_MSGTYPE_EXTENDED is mandatory)
    /// </summary>
    can_msgtype: cantp_can_msgtype;
    /// <summary>
    /// Default CAN DLC value to use with segmented messages
    /// </summary>
    can_tx_dlc: Byte;
    /// <summary>
    /// ISO-TP Network Address Information
    /// </summary>
    netaddrinfo: cantp_netaddrinfo;
  end;

  /// <summary>
  /// Represents a message rule for filtering.
  /// </summary>
  cantp_msgrule = record
        /// <summary>
        /// Unique ID (read-only)
        /// </summary>
        uid: Pointer;
        /// <summary>
        /// Type of the message
        /// </summary>
        typem: cantp_msgtype;
        /// <summary>
        /// common CAN information
        /// </summary>
        can_info: cantp_can_info;
        /// <summary>
        /// ISO-TP network address information
        /// </summary>
        netaddrinfo: cantp_netaddrinfo;
        /// <summary>
        /// specific options to override global CAN configuration
        /// </summary>
        options: cantp_msgoption_list ;
        /// <summary>
        /// reserved
        /// </summary>
        reserved: Pointer;
  end;


  /// /////////////////////////////////////////////////////////
  // Message definitions
  /// /////////////////////////////////////////////////////////

  /// <summary>
  /// Represents the content of a generic message.
  /// </summary>
  cantp_msgdata = record
    /// <summary>
    /// structure specific flags
    /// </summary>
    flags: cantp_msgflag;
    /// <summary>
    /// Length of the message
    /// </summary>
    length: UInt32;
    /// <summary>
    /// Data of the message
    /// </summary>
    data: ^Byte;
    /// <summary>
    /// Network status
    /// </summary>
    netstatus: cantp_netstatus;
    /// <summary>
    /// Defines specific options to override global message configuration
    /// </summary>
    options: ^cantp_msgoption_list;
  end;

  /// <summary>
  /// Represents the content of a standard CAN frame.
  /// </summary>
  cantp_msgdata_can = record
    /// <summary>
    /// structure specific flags
    /// </summary>
    flags: cantp_msgflag;
    /// <summary>
    /// Length of the message (0..8)
    /// </summary>
    length: UInt32;
    /// <summary>
    /// Data of the message
    /// </summary>
    data: ^Byte;
    /// <summary>
    /// Network status
    /// </summary>
    netstatus: cantp_netstatus;
    /// <summary>
    /// Defines specific options to override global CAN configuration (not used yet)
    /// </summary>
    options: ^cantp_msgoption_list;
    /// <summary>
    /// Data of the message (DATA[0]..DATA[7])
    /// </summary>
    data_max: array [0 .. PCANTP_MAX_LENGTH_CAN_STANDARD - 1] of Byte;
  end;

  //
  /// <summary>
  /// Represents the content of a CAN FD frame.
  /// </summary>
  cantp_msgdata_canfd = record
    /// <summary>
    /// structure specific flags
    /// </summary>
    flags: cantp_msgflag;
    /// <summary>
    /// Length of the message (0..64)
    /// </summary>
    length: UInt32;
    /// <summary>
    /// Data of the message
    /// </summary>
    data: ^Byte;
    /// <summary>
    /// Network status
    /// </summary>
    netstatus: cantp_netstatus;
    /// <summary>
    /// Defines specific options to override global CAN configuration (not used yet)
    /// </summary>
    options: ^cantp_msgoption_list;
    /// <summary>
    /// Data of the message (DATA[0]..DATA[63])
    /// </summary>
    data_max: array [0 .. PCANTP_MAX_LENGTH_CAN_FD - 1] of Byte;
  end;

  /// <summary>
  /// Represents the content of an ISO-TP message.
  /// </summary>
  cantp_msgdata_isotp = record
    /// <summary>
    /// structure specific flags
    /// </summary>
    flags: cantp_msgflag;
    /// <summary>
    /// Length of the data
    /// </summary>
    length: UInt32;
    /// <summary>
    /// Data
    /// </summary>
    data: ^Byte;
    /// <summary>
    /// Network status
    /// </summary>
    netstatus: cantp_netstatus;
    /// <summary>
    /// Defines specific options to override global CAN configuration
    /// </summary>
    options: ^cantp_msgoption_list;
    /// <summary>
    /// ISO-TP network address information
    /// </summary>
    netaddrinfo: cantp_netaddrinfo;
    /// <summary>
    /// Reserved ISO-TP information
    /// </summary>
    reserved: cantp_isotp_info;
  end;

  /// <summary>
  /// A cantp_msg message is a generic CAN related message than can be either a standard CAN frame,
  /// a CAN FD frame, an ISO-TP message, etc.
  /// </summary>
  cantp_msg = record
    /// <summary>
    /// type of the message
    /// </summary>
    typem: cantp_msgtype;
    /// <summary>
    /// misc. read-only information
    /// </summary>
    reserved: cantp_msginfo;
    /// <summary>
    /// common CAN information
    /// </summary>
    can_info: cantp_can_info;
    case Integer of
      0:
        /// <summary>
        /// shortcut to access msgdata as Generic content
        /// </summary>
        (msgdata_any: ^cantp_msgdata;);
      1:
        /// <summary>
        /// shortcut to access msgdata as CAN content
        /// </summary>
        (msgdata_can: ^cantp_msgdata_can;);
      2:
        /// <summary>
        /// shortcut to access msgdata as CAN-FD content
        /// </summary>
        (msgdata_canfd: ^cantp_msgdata_canfd;);
      3:
        /// <summary>
        /// shortcut to access msgdata as ISO-TP content
        /// </summary>
        (msgdata_isotp: ^cantp_msgdata_isotp;);
  end;

  /// <summary>
  /// Holds information on the communication progress of a message.
  /// </summary>
  cantp_msgprogress = record
    /// <summary>
    /// State of the message
    /// </summary>
    state: cantp_msgprogress_state;
    /// <summary>
    /// Progress of the transmission/reception in percent.
    /// </summary>
    percentage: Byte;
    /// <summary>
    /// Buffer to get a copy of the pending message.
    /// </summary>
    buffer: ^cantp_msg;
  end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
  TCanTpApi_2016 = class
  {$ELSE}
  TCanTpApi = class
  {$ENDIF}
  public
  class var
  const
    // PCANTP parameter values

    PCANTP_VALUE_PARAMETER_OFF = 0;
    PCANTP_VALUE_PARAMETER_ON = 1;
    /// <summary>
    /// Enable debug messages (only notices, informations, warnings, errors)
    /// </summary>
    PCANTP_DEBUG_NOTICE = $F4;
    /// <summary>
    /// Enable debug messages (only informations, warnings, errors)
    /// </summary>
    PCANTP_DEBUG_INFO = $F3;
    /// <summary>
    /// Enable debug messages (only warnings, errors)
    /// </summary>
    PCANTP_DEBUG_WARNING = $F2;
    /// <summary>
    /// Enable debug messages (only errors)
    /// </summary>
    PCANTP_DEBUG_ERROR = $F1;

{$IF Not Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
    /// <summary>
    /// No debug messages
    /// </summary>
    PCANTP_DEBUG_NONE = $00;
    /// <summary>
    /// Puts CAN debug messages to stdout
    /// </summary>
    PCANTP_DEBUG_CAN = $01;
    /// <summary>
    /// The Channel is illegal or not available
    /// </summary>
    PCANTP_CHANNEL_UNAVAILABLE = $00;
    /// <summary>
    /// The Channel is available
    /// </summary>
    PCANTP_CHANNEL_AVAILABLE = $01;
    /// <summary>
    /// The Channel is valid, and is being used
    /// </summary>
    PCANTP_CHANNEL_OCCUPIED = $02;
    /// <summary>
    /// if set Flow Control frame shall not use the WT flow status value
    /// </summary>
    PCANTP_WFT_MAX_UNLIMITED = $00;
    /// <summary>
    /// an integer describing the Wait Frame Transmissions parameter.
    /// </summary>
    PCANTP_WFT_MAX_DEFAULT = $10;
    /// <summary>
    /// hide messages with type PCANTP_MESSAGE_INDICATION from CANTP_Read function
    /// </summary>
    PCANTP_MSG_PENDING_HIDE = $00;
    /// <summary>
    /// show messages with type PCANTP_MESSAGE_INDICATION from CANTP_Read function
    /// </summary>
    PCANTP_MSG_PENDING_SHOW = $01;
    /// <summary>
    /// uses CAN frame data optimization
    /// </summary>
    PCANTP_CAN_DATA_PADDING_NONE = $00;
    /// <summary>
    /// uses CAN frame data padding (default, i.e. CAN DLC = 8)
    /// </summary>
    PCANTP_CAN_DATA_PADDING_ON = $01;
    /// <summary>
    /// default value used if CAN data padding is enabled
    /// </summary>
    PCANTP_CAN_DATA_PADDING_VALUE = $55;
{$ENDIF}
    /// <summary>
    /// disable reception of unformatted (NON-ISO-TP) CAN frames (default)
    /// only ISO 15765 messages will be received
    /// </summary>
    PCANTP_FRAME_FILTERING_ISOTP = $00;
    //
    /// <summary>
    /// enable reception of unformatted (NON-ISO-TP) CAN frames
    /// received messages will be treated as either ISO 15765 or as an unformatted CAN frame
    /// </summary>
    PCANTP_FRAME_FILTERING_CAN = $01;
    //
    /// <summary>
    /// enable reception of unformatted (NON-ISO-TP) CAN frames
    /// received messages will be treated as ISO 15765, unformatted CAN frame, or both (user will able to read fragmented CAN frames)
    /// </summary>
    PCANTP_FRAME_FILTERING_VERBOSE = $02;
{$IF Not Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
    //
    /// <summary>
    /// default priority for ISO-TP messages (only available fot normal fixed, mixed and enhanced addressing)
    /// </summary>
    PCANTP_J1939_PRIORITY_DEFAULT = $06;
{$ENDIF}
    /// <summary>
    /// maximum size of a CAN (non-FD) frame (8)
    /// </summary>
    PCANTP_MAX_LENGTH_CAN_STANDARD = PCANTP_MAX_LENGTH_CAN_STANDARD;
    /// <summary>
    /// maximum size of a CAN FD frame (64)
    /// </summary>
    PCANTP_MAX_LENGTH_CAN_FD = PCANTP_MAX_LENGTH_CAN_FD;
    /// <summary>
    /// maximum size of an ISO-TP rev. 2004 frame (4095)
    /// </summary>
    PCANTP_MAX_LENGTH_ISOTP2004 = $FFF;
    /// <summary>
    /// maximum size of an ISO-TP rev. 2016 frame (4294967295)
    /// </summary>
    PCANTP_MAX_LENGTH_ISOTP2016 = $FFFFFFFF;
    /// <summary>
    /// maximum size before using virtual allocation for ISO-TP messages
    /// </summary>
    PCANTP_MAX_LENGTH_ALLOC = UInt32($FFFFFF);
    /// <summary>
    /// default DLC for fragmented frames when transmiting ISO-TP messages
    /// </summary>
    PCANTP_CAN_TX_DL_DEFAULT = PCANTP_MAX_LENGTH_CAN_STANDARD;
    /// <summary>
    /// ISO-15765-2:2004(E)
    /// </summary>
    PCANTP_ISO_REV_2004 = $01;
    /// <summary>
    /// ISO-15765-2:2016(E)
    /// </summary>
    PCANTP_ISO_REV_2016 = $02;
    /// <summary>
    /// disables the feature "ignore received BlockSize value"
    /// </summary>
    PCANTP_BLOCK_SIZE_TX_IGNORE = $FFFF;
    /// <summary>
    /// disables the feature "ignore received STMin value"
    /// </summary>
    PCANTP_SEPERATION_TIME_TX_IGNORE = $FFFF;
    /// <summary>
    /// sets timeouts according to ISO-15765-2
    /// </summary>
    PCANTP_ISO_TIMEOUTS_15765_2 = 0;
    /// <summary>
    /// sets timeouts according to ISO-15765-4 (OBDII)
    /// </summary>
    PCANTP_ISO_TIMEOUTS_15765_4 = 1;
    /// <summary>
    /// no optimization (use this parameter if ECU requires strict respect of Minimum Separation Time)
    /// </summary>
    PCANTP_SELFRECEIVE_LATENCY_NONE = 0;
    /// <summary>
    /// (DEFAULT) fragmented self-receive frame mechanism is ignored when STmin is set to = $F3 and lower (<300µs)
    /// </summary>
    PCANTP_SELFRECEIVE_LATENCY_LIGHT = 1;
    /// <summary>
    /// as LIGHT value plus optimize self-receive latency by predicting the time to effectively write frames on bus
    /// </summary>
    PCANTP_SELFRECEIVE_LATENCY_OPTIMIZED = 2;
    /// <summary>
    /// (DEFAULT) maxinum number of items in the receive queue
    /// </summary>
    PCANTP_MAX_RX_QUEUE_DEFAULT = 32767;
    /// <summary>
    /// (DEFAULT) Network layer design is full-duplex
    /// </summary>
    PCANTP_NETWORK_LAYER_FULL_DUPLEX = 0;
    /// <summary>
    /// Network layer design is half-duplex (only one transmission/reception of the same NAI at a time)
    /// </summary>
    PCANTP_NETWORK_LAYER_HALF_DUPLEX = 1;

    // Standard ISO-15765-2 values

    /// <summary>
    /// Default value for Separation time
    /// </summary>
    PCANTP_STMIN_ISO_15765_2 = 10;
    /// <summary>
    /// Default value for BlockSize
    /// </summary>
    PCANTP_BS_ISO_15765_2 = 10;
    /// <summary>
    /// Default value for Timeout Ar in µs
    /// </summary>
    PCANTP_TIMEOUT_AR_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for Timeout As in µs
    /// </summary>
    PCANTP_TIMEOUT_AS_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for Timeout Br in µs
    /// </summary>
    PCANTP_TIMEOUT_BR_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for Timeout Bs in µs
    /// </summary>
    PCANTP_TIMEOUT_BS_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for Timeout Cr in µs
    /// </summary>
    PCANTP_TIMEOUT_CR_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for Timeout Cs in µs
    /// </summary>
    PCANTP_TIMEOUT_CS_ISO_15765_2 = (1000 * 1000);
    /// <summary>
    /// Default value for timeout tolerance [0..100] (timeout = t * (1 + tolerance/100))
    /// </summary>
    PCANTP_TIMEOUT_TOLERANCE = 0;

    // Standard ISO-15765-4 (OBDII) values

    /// <summary>
    /// OBDII value for Separation time
    /// </summary>
    PCANTP_STMIN_ISO_15765_4 = 0;
    /// <summary>
    /// OBDII value for BlockSize
    /// </summary>
    PCANTP_BS_ISO_15765_4 = 0;
    /// <summary>
    /// OBDII value for Timeout Ar in µs
    /// </summary>
    PCANTP_TIMEOUT_AR_ISO_15765_4 = (1000 * 33);
    /// <summary>
    /// OBDII value for Timeout As in µs
    /// </summary>
    PCANTP_TIMEOUT_AS_ISO_15765_4 = (1000 * 33);
    /// <summary>
    /// OBDII value for Timeout Bs in µs
    /// </summary>
    PCANTP_TIMEOUT_BS_ISO_15765_4 = (1000 * 75);
    /// <summary>
    /// OBDII value for Timeout Br in µs
    /// </summary>
    PCANTP_TIMEOUT_BR_ISO_15765_4 = (1000 * 75);
    /// <summary>
    /// OBDII value for Timeout Cr in µs
    /// </summary>
    PCANTP_TIMEOUT_CR_ISO_15765_4 = (1000 * 150);
    /// <summary>
    /// OBDII value for Timeout Cs in µs (Cs+As < 50ms)
    /// </summary>
    PCANTP_TIMEOUT_CS_ISO_15765_4 = (1000 * 17);

    // Values for cfg_value

    /// <summary>
    /// Mask for the 29bits ISOTP priority value (stored in bits [0..2])
    /// </summary>
    PCANTP_FLAG_MASK_PRIORITY = $07;
    /// <summary>
    /// Padding is enabled
    /// </summary>
    PCANTP_FLAG_PADDING_ON = $08;
    /// <summary>
    /// Message's indication is enabled
    /// </summary>
    PCANTP_FLAG_INDICATION_ON = $10;
    /// <summary>
    /// Echo of fragmented frames is enabled
    /// </summary>
    PCANTP_FLAG_ECHO_FRAMES_ON = $20;

    /// /////////////////////////////////////////////////////////
    // Constants definition
    /// /////////////////////////////////////////////////////////

    PCANTP_MAPPING_FLOW_CTRL_NONE = UInt32(-1); // Mapping does not require a Flow Control frame.

    // Represents the configuration for a CAN bit rate
    // Note:
    // * Each parameter and its value must be separated with a '='.
    // * Each pair of parameter/value must be separated using ','.
    //
    // Example:
    // f_clock=80000000,nom_brp=10,nom_tseg1=5,nom_tseg2=2,nom_sjw=1,data_brp=4,data_tseg1=7,data_tseg2=2,data_sjw=1
    //
    PCANTP_BITRATE_CLOCK: String = PCAN_BR_CLOCK;
    PCANTP_BITRATE_CLOCK_MHZ: String = PCAN_BR_CLOCK_MHZ;
    PCANTP_BITRATE_NOM_BRP: String = PCAN_BR_NOM_BRP;
    PCANTP_BITRATE_NOM_TSEG1: String = PCAN_BR_NOM_TSEG1;
    PCANTP_BITRATE_NOM_TSEG2: String = PCAN_BR_NOM_TSEG2;
    PCANTP_BITRATE_NOM_SJW: String = PCAN_BR_NOM_SJW;
    PCANTP_BITRATE_NOM_SAMPLE: String = PCAN_BR_NOM_SAMPLE;
    PCANTP_BITRATE_DATA_BRP: String = PCAN_BR_DATA_BRP;
    PCANTP_BITRATE_DATA_TSEG1: String = PCAN_BR_DATA_TSEG1;
    PCANTP_BITRATE_DATA_TSEG2: String = PCAN_BR_DATA_TSEG2;
    PCANTP_BITRATE_DATA_SJW: String = PCAN_BR_DATA_SJW;
    PCANTP_BITRATE_DATA_SAMPLE: String = PCAN_BR_DATA_SAMPLE;

    /// <summary>
    /// Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
    /// </summary>
    /// <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="baudrate">The CAN Hardware speed</param>
    /// <param name="hw_type">NON PLUG-N-PLAY: The type of hardware and operation mode</param>
    /// <param name="io_port">NON PLUG-N-PLAY: The I/O address for the parallel port</param>
    /// <param name="interrupt">NON PLUG-N-PLAY: Interrupt number of the parallel port</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Initialize_2016(channel: cantp_handle; baudrate: cantp_baudrate; hw_type: cantp_hwtype; io_port: UInt32; interrupt: UInt16): cantp_status; overload;
    /// <summary>
    /// Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
    /// </summary>
    /// <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="baudrate">The CAN Hardware speed</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Initialize_2016(channel: cantp_handle; baudrate: cantp_baudrate): cantp_status; overload;
    /// <summary>
    /// Initializes a PCANTP-Client based on a CANTP Channel (including CAN-FD support)
    /// </summary>
    /// <param name="channel">"The handle of a FD capable PCAN Channel"</param>
    /// <param name="bitrate_fd">"The speed for the communication (FD bit rate string)"</param>
    /// <remarks>Only one PCANTP-Client can be initialized per CAN-Channel.
    /// See PCAN_BR_* values
    /// * Parameter and values must be separated by '='
    /// * Couples of Parameter/value must be separated by ','
    /// * Following Parameter must be filled out: f_clock, data_brp, data_sjw, data_tseg1, data_tseg2,
    /// nom_brp, nom_sjw, nom_tseg1, nom_tseg2.
    /// * Following Parameters are optional (not used yet): data_ssp_offset, nom_samp
    /// </remarks>
    /// <example>f_clock_mhz=80,nom_brp=0,nom_tseg1=13,nom_tseg2=0,nom_sjw=0,data_brp=0,
    /// data_tseg1=13,data_tseg2=0,data_sjw=0</example>
    /// <returns>"A cantp_status code"</returns>
    class function InitializeFD_2016(channel: cantp_handle; const bitrate_fd: cantp_bitrate): cantp_status;
    /// <summary>
    /// Uninitializes a PCANTP-Client initialized before
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Uninitialize_2016(channel: cantp_handle): cantp_status;
    /// <summary>
    /// Resets the receive and transmit queues of a PCANTP-Client
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Reset_2016(channel: cantp_handle): cantp_status;
    /// <summary>
    /// Gets information about the internal BUS status of a PCANTP-Channel.
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function GetCanBusStatus_2016(channel: cantp_handle): cantp_status;
    /// <summary>
    /// Reads a PCANTP message from the receive queue of a PCANTP-Client
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
    /// <param name="timestamp_buffer">A cantp_timestamp structure buffer to get
    /// the reception time of the message.</param>
    /// <param name="msg_type">A cantp_msgtype structure buffer to filter the message to read.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg; timestamp_buffer: Pcantp_timestamp; msg_type: cantp_msgtype): cantp_status; overload;
    /// <summary>
    /// Reads a PCANTP message from the receive queue of a PCANTP-Client
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
    /// <param name="timestamp_buffer">A cantp_timestamp structure buffer to get
    /// the reception time of the message.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg; timestamp_buffer: Pcantp_timestamp): cantp_status; overload;
    /// <summary>
    /// Reads a PCANTP message from the receive queue of a PCANTP-Client
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg): cantp_status; overload;
    /// <summary>
    /// Gets progress information on a specific message
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msg_buffer">A cantp_msg structure buffer matching the message to look for</param>
    /// <param name="direction">The expected direction (incoming/outgoing) of the message</param>
    /// <param name="msgprogress_buffer">A cantp_msgprogress structure buffer to store the progress information</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function GetMsgProgress_2016(channel: cantp_handle; msg_buffer: Pcantp_msg; direction: cantp_msgdirection; var msgprogress_buffer: cantp_msgprogress): cantp_status;
    /// <summary>
    /// Adds a PCANTP message to the Transmit queue
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msg_buffer">A cantp_msg buffer with the message to be sent</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function Write_2016(channel: cantp_handle; var msg_buffer: cantp_msg): cantp_status;
    /// <summary>
    /// Retrieves a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to get</param>
    /// <param name="numericBuffer">Numerical buffer for the parameter value</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; numeric_buffer: PLongWord; buffer_size: UInt32): cantp_status; overload;
    /// <summary>
    /// Retrieves a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to get</param>
    /// <param name="byteBuffer">Byte buffer for the parameter value</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; byte_buffer: PByte; buffer_size: UInt32): cantp_status; overload;
    /// <summary>
    /// Retrieves a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to get</param>
    /// <param name="StringBuffer">String as array of ansi char, buffer for the parameter value</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; string_buffer: PAnsiChar; buffer_size: UInt32): cantp_status; overload;

    /// <summary>
    /// Configures or sets a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to set</param>
    /// <param name="numericBuffer">Numerical buffer with the value to be set</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; numeric_buffer: PLongWord; buffer_size: UInt32): cantp_status; overload;
    /// <summary>
    /// Configures or sets a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to set</param>
    /// <param name="byteBuffer">Byte buffer with the value to be set</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; byte_buffer: PByte; buffer_size: UInt32): cantp_status; overload;
    /// <summary>
    /// Configures or sets a PCANTP-Client value
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="parameter">The cantp_parameter parameter to set</param>
    /// <param name="StringBuffer">String as an array of ansi char, buffer with the value to be set</param>
    /// <param name="buffer_size">Size in bytes of the buffer</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; string_buffer: PAnsiChar; buffer_size: UInt32): cantp_status; overload;
    /// <summary>
    /// Adds a user-defined PCAN-TP mapping between CAN ID and Network Address Information
    /// </summary>
    /// <remark>
    /// Defining a mapping enables ISO-TP communication with 11BITS CAN ID or
    /// with opened Addressing Formats (like PCANTP_ISOTP_FORMAT_NORMAL or PCANTP_ISOTP_FORMAT_EXTENDED).
    /// </remark>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="mapping">Buffer to the mapping to be added</param>
    /// <returns>A cantp_status code : PCANTP_STATUS_OK is returned on success,
    /// PCANTP_STATUS_WRONG_PARAM states invalid Network Address Information parameters.</returns>
    class function AddMapping_2016(channel: cantp_handle; mapping: Pcantp_mapping): cantp_status;
    /// <summary>
    /// Removes all user-defined PCAN-TP mappings corresponding to a CAN ID
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="can_id">The mapped CAN ID to search for</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function RemoveMappings_2016(channel: cantp_handle; can_id: UInt32): cantp_status;

    /// <summary>
    /// Removes a user-defined PCAN-TP mapping between a CAN ID and Network Address Information
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="uid">The identifier of the mapping</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function RemoveMapping_2016(channel: cantp_handle; uid: Pointer): cantp_status;

    /// <summary>
    /// Retrieves all the mappings defined for a PCAN-TP channel
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="buffer">A buffer to store an array of cantp_mapping.</param>
    /// <param name="buffer_length">[In]The number of cantp_mapping element the buffer can store.
    /// [Out]The actual number of element copied in the buffer.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success,
    /// PCANTP_STATUS_PARAM_BUFFER_TOO_SMALL if the number of mappings exceeds buffer_length.</returns>
    class function GetMappings_2016(channel: cantp_handle; buffer: Pcantp_mapping; buffer_length: PUInt32): cantp_status;
    /// <summary>
    /// Adds an entry to the CAN-ID white-list filtering.
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="can_id_from">The lowest CAN ID wanted to be received</param>
    /// <param name="can_id_to">The highest CAN ID wanted to be received</param>
    /// <param name="ignore_can_msgtype">States if filter should check the CAN message type.</param>
    /// <param name="can_msgtype">If ignore_can_msgtype is false, the value states which types of CAN frame should be allowed.</param>
    /// <returns>A cantp_status code : PCANTP_STATUS_OK is returned on success, and PCANTP_STATUS_ALREADY_INITIALIZED otherwise.</returns>
    class function AddFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status;

    /// <summary>
    /// Removes an entry from the CAN-ID white-list filtering.
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="can_id_from">The lowest CAN ID wanted to be removed</param>
    /// <param name="can_id_to">The highest CAN ID wanted to be removed</param>
    /// <param name="ignore_can_msgtype">States if filter should check the CAN message type.</param>
    /// <param name="can_msgtype">If ignore_can_msgtype is false, the value states which types of CAN frame should be allowed.</param>
    /// <returns>A cantp_status code : PCANTP_STATUS_OK is returned on success, and PCANTP_STATUS_ALREADY_INITIALIZED otherwise.</returns>
    class function RemoveFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status;

    /// <summary>
    /// Adds an entry to the message's rules.
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msgrule">The rule to insert.</param>
    /// <returns>A cantp_status code : PCANTP_STATUS_OK is returned on success</returns>
    class function AddMsgRule_2016(channel: cantp_handle; msgrule :Pcantp_msgrule):cantp_status;

    /// <summary>
    /// Removes an entry from the message's rules.
    /// </summary>
    /// <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
    /// <param name="msgrule_uid">The unique ID of the rule to remove.</param>
    /// <returns>A cantp_status code : PCANTP_STATUS_OK is returned on success</returns>
    class function RemoveMsgRule_2016(channel: cantp_handle; uid: Pointer): cantp_status;

   /// <summary>
    /// Returns a descriptive text of a given cantp_status error
    /// code, in any desired language
    /// </summary>
    /// <remarks>The current languages available for translation are:
    /// Neutral (0x00), German (0x07), English (0x09), Spanish (0x0A),
    /// Italian (0x10) and French (0x0C)</remarks>
    /// <param name="error">A cantp_status error code</param>
    /// <param name="language">Indicates a 'Primary language ID'</param>
    /// <param name="StringBuffer">Buffer for a null terminated char array</param>
    /// <param name="bufferSize">Buffer size</param>
    /// <returns>A cantp_status error code</returns>
    class function GetErrorText_2016(error: cantp_status; language: UInt16; buffer: PAnsiChar; buffer_size: UInt32): cantp_status;
    /// <summary>
    /// Allocates a PCAN-TP message based on the given type
    /// </summary>
    /// <param name="msg_buffer">A cantp_msg structure buffer (it will be freed if required)</param>
    /// <param name="type">Type of the message to allocate</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgDataAlloc_2016(var msg_buffer: cantp_msg; msg_type: cantp_msgtype): cantp_status;
    /// <summary>
    /// Initializes an allocated PCAN-TP message
    /// </summary>
    /// <param name="msg_buffer">An allocated cantp_msg structure buffer</param>
    /// <param name="can_id">CAN identifier (ISO-TP message may ignore this parameter and use PCANTP_MAPPING_FLOW_CTRL_NONE (-1))</param>
    /// <param name="can_msgtype">Combination of CAN message types (like "extended CAN ID", "FD", "RTR", etc. flags)</param>
    /// <param name="data_length">Length of the data</param>
    /// <param name="data">A byte buffer to initialize the message's data with. If Nil, message's data is initialized with zeros.</param>
    /// <param name="netaddrinfo">Network address information of the ISO-TP message (only valid with an ISO-TP message)</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgDataInit_2016(var msg_buffer: cantp_msg; can_id: UInt32; can_msgtype: cantp_can_msgtype; data_length: UInt32; const data: PByte; netaddrinfo: Pcantp_netaddrinfo)
      : cantp_status; overload;
    /// <summary>
    /// Initializes an allocated PCAN-TP message
    /// </summary>
    /// <param name="msg_buffer">An allocated cantp_msg structure buffer</param>
    /// <param name="can_id">CAN identifier (ISO-TP message may ignore this parameter and use PCANTP_MAPPING_FLOW_CTRL_NONE (-1))</param>
    /// <param name="can_msgtype">Combination of CAN message types (like "extended CAN ID", "FD", "RTR", etc. flags)</param>
    /// <param name="data_length">Length of the data</param>
    /// <param name="data">A byte buffer to initialize the message's data with. If Nil, message's data is initialized with zeros.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgDataInit_2016(var msg_buffer: cantp_msg; can_id: UInt32; can_msgtype: cantp_can_msgtype; data_length: UInt32; const data: PByte): cantp_status; overload;
    /// <summary>
    /// Initializes a number of options for the PCAN-TP message that will override the channel's parameter(s)
    /// </summary>
    /// <param name="msg_buffer">An allocated cantp_msg structure buffer.</param>
    /// <param name="nb_options">Number of options to initialize.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgDataInitOptions_2016(var msg_buffer: cantp_msg; nb_options: UInt32): cantp_status;
    /// <summary>
    /// Deallocates a PCAN-TP message
    /// </summary>
    /// <param name="msg_buffer">An allocated cantp_msg structure buffer.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgDataFree_2016(var msg_buffer: cantp_msg): cantp_status;
    /// <summary>
    /// Checks if two PCAN-TP messages are equal.
    /// If one message is the indication of an incoming/outgoing ISO-TP message, the actual data-content will not be compared.
    /// In that case the function checks if the messages' network address information matches.
    /// </summary>
    /// <param name="msg_buffer1">A cantp_msg structure buffer.</param>
    /// <param name="msg_buffer2">Another cantp_msg structure buffer to compare with first parameter.</param>
    /// <param name="ignoreSelfReceiveFlag">States if comparison should ignore loopback flag
    /// (i.e if true the function will return true when comparing a request and its loopback confirmation).</param>
    /// <returns>A boolean stating if the cantp_msgs are equal.</returns>
    class function MsgEqual_2016(const msg_buffer1: Pcantp_msg; const msg_buffer2: Pcantp_msg; ignoreSelfReceiveFlag: boolean): boolean;

    /// <summary>
    /// Copies a PCAN-TP message to another buffer.
    /// </summary>
    /// <param name="msg_buffer_dst">A cantp_msg structure buffer to store the copied message.</param>
    /// <param name="msg_buffer_src">The cantp_msg structure buffer used as the source.</param>
    /// <returns>A cantp_status code. PCANTP_STATUS_OK is returned on success</returns>
    class function MsgCopy_2016(var msg_buffer_dst: cantp_msg; const msg_buffer_src: Pcantp_msg): cantp_status;

    /// <summary>
    /// Converts a CAN DLC to its corresponding length.
    /// </summary>
    /// <param name="dlc">The Data Length Code (DLC) to convert.</param>
    /// <returns>The corresponding length of the dlc parameter.</returns>
    class function MsgDlcToLength_2016(const dlc: Byte): UInt32;

    /// <summary>
    /// Converts a data length to a corresponding CAN DLC.
    /// Note: the returned DLC can hold more data that the requested length.
    /// </summary>
    /// <param name="dlc">The length to convert.</param>
    /// <returns>The smallest DLC that can hold the requested length (0x00-0x0F).</returns>
    class function MsgLengthToDlc_2016(const length: UInt32): Byte;

    /// <summary>
    /// Lists the subtypes contained in the PCAN-TP status.
    /// </summary>
    /// <param name="status">The status to analyze.</param>
    /// <returns>An aggregation of cantp_statustype values.</returns>
    class function StatusListTypes_2016(const status: cantp_status): cantp_statustype;

    /// <summary>
    /// Retrieves the value of a cantp_status subtype (like cantp_errstatus, cantp_busstatus, etc.).
    /// </summary>
    /// <param name="status">The status to analyze.</param>
    /// <param name="type">The type of status to filter.</param>
    /// <returns>The value of the enumeration matching the requested type.</returns>
    class function StatusGet_2016(const status: cantp_status; const typest: cantp_statustype): UInt32;
    /// <summary>
    /// Checks if a status matches an expected result.
    /// </summary>
    /// <param name="status">The status to analyze.</param>
    /// <param name="status_expected">The expected status.</param>
    /// <param name="strict">Enable strict mode. Strict mode ensures that bus or extra information are the same.</param>
    /// <returns>Returns true if the status matches expected parameter.</returns>
    class function StatusIsOk_2016(const status: cantp_status; const status_expected: cantp_status; strictc: boolean): boolean; overload;
    /// <summary>
    /// Checks if a status matches an expected result in a non-strict mode.
    /// Strict mode ensures that bus or extra information are the same
    /// </summary>
    /// <param name="status">The status to analyze.</param>
    /// <param name="status_expected">The expected status.</param>
    /// <returns>Returns true if the status matches expected parameter.</returns>
    class function StatusIsOk_2016(const status: cantp_status; const status_expected: cantp_status): boolean; overload;
    /// <summary>
    /// Checks if a status matches PCANTP_STATUS_OK, in a non-strict mode.
    /// Strict mode ensures that bus or extra information are the same.
    /// </summary>
    /// <param name="status">The status to analyze.</param>
    /// <returns>Returns true if the status matches expected parameter.</returns>
    class function StatusIsOk_2016(const status: cantp_status): boolean; overload;

  end;

implementation

uses SysUtils;

const
  DLL_Name = 'PCAN-ISO-TP.DLL';

function CANTP_Initialize_2016(channel: cantp_handle; baudrate: cantp_baudrate; hw_type: cantp_hwtype; io_port: UInt32; interrupt: UInt16): cantp_status; stdcall; external DLL_Name;
function CANTP_InitializeFD_2016(channel: cantp_handle; const bitrate_fd: cantp_bitrate): cantp_status; stdcall; external DLL_Name;
function CANTP_Uninitialize_2016(channel: cantp_handle): cantp_status; stdcall; external DLL_Name;
function CANTP_AddFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status; stdcall; external DLL_Name;
function CANTP_RemoveFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status; stdcall;
  external DLL_Name;
function CANTP_AddMsgRule_2016(channel: cantp_handle; msgrule :Pcantp_msgrule):cantp_status; stdcall; external DLL_Name;
function CANTP_RemoveMsgRule_2016(channel: cantp_handle; uid: Pointer): cantp_status; stdcall; external DLL_Name;
function CANTP_GetErrorText_2016(error: cantp_status; language: UInt16; buffer: PAnsiChar; buffer_size: UInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; buffer: Pointer; buffer_size: UInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; buffer: Pointer; buffer_size: UInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg; timestamp_buffer: Pcantp_timestamp; msg_type: cantp_msgtype): cantp_status; stdcall; external DLL_Name;
function CANTP_Write_2016(channel: cantp_handle; var msg_buffer: cantp_msg): cantp_status; stdcall; external DLL_Name;
function CANTP_MsgDataAlloc_2016(var msg_buffer: cantp_msg; msg_type: cantp_msgtype): cantp_status; stdcall; external DLL_Name;
function CANTP_MsgDataInit_2016(var msg_buffer: cantp_msg; can_id: UInt32; can_msgtype: cantp_can_msgtype; data_length: UInt32; const data: Pointer; netaddrinfo: Pcantp_netaddrinfo): cantp_status; stdcall;
  external DLL_Name;
function CANTP_MsgDataFree_2016(var msg_buffer: cantp_msg): cantp_status; stdcall; external DLL_Name;
function CANTP_StatusIsOk_2016(status: cantp_status; status_expected: cantp_status; strictc: boolean): boolean; stdcall; external DLL_Name;
function CANTP_AddMapping_2016(channel: cantp_handle; mapping: Pcantp_mapping): cantp_status; stdcall; external DLL_Name;
function CANTP_GetMsgProgress_2016(channel: cantp_handle; msg_buffer: Pcantp_msg; direction: cantp_msgdirection; var msgprogress_buffer: cantp_msgprogress): cantp_status; stdcall; external DLL_Name;
function CANTP_MsgDataInitOptions_2016(var msg_buffer: cantp_msg; nb_options: UInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_StatusListTypes_2016(const status: cantp_status): cantp_statustype; stdcall; external DLL_Name;
function CANTP_StatusGet_2016(const status: cantp_status; const typest: cantp_statustype): UInt32; stdcall; external DLL_Name;
function CANTP_GetCanBusStatus_2016(channel: cantp_handle): cantp_status; stdcall; external DLL_Name;
function CANTP_Reset_2016(channel: cantp_handle): cantp_status; stdcall; external DLL_Name;
function CANTP_RemoveMappings_2016(channel: cantp_handle; can_id: UInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_RemoveMapping_2016(channel: cantp_handle; uid: Pointer): cantp_status; stdcall; external DLL_Name;
function CANTP_GetMappings_2016(channel: cantp_handle; buffer: Pcantp_mapping; buffer_length: PUInt32): cantp_status; stdcall; external DLL_Name;
function CANTP_MsgEqual_2016(const msg_buffer1: Pcantp_msg; const msg_buffer2: Pcantp_msg; ignoreSelfReceiveFlag: boolean): boolean; stdcall; external DLL_Name;
function CANTP_MsgCopy_2016(var msg_buffer_dst: cantp_msg; const msg_buffer_src: Pcantp_msg): cantp_status; stdcall; external DLL_Name;
function CANTP_MsgDlcToLength_2016(const dlc: Byte): UInt32; stdcall; external DLL_Name;
function CANTP_MsgLengthToDlc_2016(const length: UInt32): Byte; stdcall; external DLL_Name;


{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Uninitialize_2016(channel: cantp_handle): cantp_status;
begin
  result := CANTP_Uninitialize_2016(channel);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.InitializeFD_2016(channel: cantp_handle; const bitrate_fd: cantp_bitrate): cantp_status;
begin
  result := CANTP_InitializeFD_2016(channel, bitrate_fd);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
  .AddFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status;
begin
  result := CANTP_AddFiltering_2016(channel, can_id_from, can_id_to, ignore_can_msgtype, can_msgtype);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}

class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
  .RemoveFiltering_2016(channel: cantp_handle; can_id_from: UInt32; can_id_to: UInt32; ignore_can_msgtype: Boolean; can_msgtype: cantp_can_msgtype): cantp_status;
begin
  result := CANTP_RemoveFiltering_2016(channel, can_id_from, can_id_to, ignore_can_msgtype, can_msgtype);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.AddMsgRule_2016(channel: cantp_handle; msgrule :Pcantp_msgrule):cantp_status;
begin
  result := CANTP_AddMsgRule_2016(channel, msgrule);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.RemoveMsgRule_2016(channel: cantp_handle; uid: Pointer): cantp_status;
begin
   result := CANTP_RemoveMsgRule_2016(channel, uid);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetErrorText_2016(error: cantp_status; language: UInt16; buffer: PAnsiChar; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_GetErrorText_2016(error, language, buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Initialize_2016(channel: cantp_handle; baudrate: cantp_baudrate; hw_type: cantp_hwtype; io_port: UInt32; interrupt: UInt16): cantp_status;
begin
  result := CANTP_Initialize_2016(channel, baudrate, hw_type, io_port, interrupt);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Initialize_2016(channel: cantp_handle; baudrate: cantp_baudrate): cantp_status;
begin
  result := CANTP_Initialize_2016(channel, baudrate, cantp_hwtype(0), UInt32(0), UInt16(0))
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; numeric_buffer: PLongWord; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_GetValue_2016(channel, parameter, numeric_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; string_buffer: PAnsiChar; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_GetValue_2016(channel, parameter, string_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetValue_2016(channel: cantp_handle; parameter: cantp_parameter; byte_buffer: PByte; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_GetValue_2016(channel, parameter, byte_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; numeric_buffer: PLongWord; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_SetValue_2016(channel, parameter, numeric_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; string_buffer: PAnsiChar; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_SetValue_2016(channel, parameter, string_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.SetValue_2016(channel: cantp_handle; parameter: cantp_parameter; byte_buffer: PByte; buffer_size: UInt32): cantp_status;
begin
  result := CANTP_SetValue_2016(channel, parameter, byte_buffer, buffer_size);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg; timestamp_buffer: Pcantp_timestamp; msg_type: cantp_msgtype): cantp_status;
begin
  result := CANTP_Read_2016(channel, msg_buffer, timestamp_buffer, msg_type);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg; timestamp_buffer: Pcantp_timestamp): cantp_status;
begin
  result := CANTP_Read_2016(channel, msg_buffer, timestamp_buffer, cantp_msgtype.PCANTP_MSGTYPE_ANY);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Read_2016(channel: cantp_handle; var msg_buffer: cantp_msg): cantp_status;
begin
  result := CANTP_Read_2016(channel, msg_buffer, nil, cantp_msgtype.PCANTP_MSGTYPE_ANY);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Write_2016(channel: cantp_handle; var msg_buffer: cantp_msg): cantp_status;
begin
  result := CANTP_Write_2016(channel, msg_buffer);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDataAlloc_2016(var msg_buffer: cantp_msg; msg_type: cantp_msgtype): cantp_status;
begin
  result := CANTP_MsgDataAlloc_2016(msg_buffer, msg_type);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDataInit_2016(var msg_buffer: cantp_msg; can_id: UInt32; can_msgtype: cantp_can_msgtype; data_length: UInt32; const data: PByte; netaddrinfo: Pcantp_netaddrinfo): cantp_status;
begin
  result := CANTP_MsgDataInit_2016(msg_buffer, can_id, can_msgtype, data_length, data, netaddrinfo);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDataInit_2016(var msg_buffer: cantp_msg; can_id: UInt32; can_msgtype: cantp_can_msgtype; data_length: UInt32; const data: PByte): cantp_status;
begin
  result := CANTP_MsgDataInit_2016(msg_buffer, can_id, can_msgtype, data_length, data, nil);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDataFree_2016(var msg_buffer: cantp_msg): cantp_status;
begin
  result := CANTP_MsgDataFree_2016(msg_buffer);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.StatusIsOk_2016(const status: cantp_status; const status_expected: cantp_status; strictc: boolean): boolean;
begin
  result := CANTP_StatusIsOk_2016(status, status_expected, strictc);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.StatusIsOk_2016(const status: cantp_status; const status_expected: cantp_status): boolean;
begin
  result := CANTP_StatusIsOk_2016(status, status_expected, false);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.StatusIsOk_2016(const status: cantp_status): boolean;
begin
  result := CANTP_StatusIsOk_2016(status, cantp_status.PCANTP_STATUS_OK, false);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.AddMapping_2016(channel: cantp_handle; mapping: Pcantp_mapping): cantp_status;
begin
  result := CANTP_AddMapping_2016(channel, mapping);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetMsgProgress_2016(channel: cantp_handle; msg_buffer: Pcantp_msg; direction: cantp_msgdirection; var msgprogress_buffer: cantp_msgprogress): cantp_status;
begin
  result := CANTP_GetMsgProgress_2016(channel, msg_buffer, direction, msgprogress_buffer);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDataInitOptions_2016(var msg_buffer: cantp_msg; nb_options: UInt32): cantp_status;
begin
  result := CANTP_MsgDataInitOptions_2016(msg_buffer, nb_options);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.StatusListTypes_2016(const status: cantp_status): cantp_statustype;
begin
  result := CANTP_StatusListTypes_2016(status);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.StatusGet_2016(const status: cantp_status; const typest: cantp_statustype): UInt32;
begin
  result := CANTP_StatusGet_2016(status, typest);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetCanBusStatus_2016(channel: cantp_handle): cantp_status;
begin
  result := CANTP_GetCanBusStatus_2016(channel);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.Reset_2016(channel: cantp_handle): cantp_status;
begin
  result := CANTP_Reset_2016(channel);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.RemoveMappings_2016(channel: cantp_handle; can_id: UInt32): cantp_status;
begin
  result := CANTP_RemoveMappings_2016(channel, can_id);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.RemoveMapping_2016(channel: cantp_handle; uid: Pointer): cantp_status;
begin
  result := CANTP_RemoveMapping_2016(channel, uid);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.GetMappings_2016(channel: cantp_handle; buffer: Pcantp_mapping; buffer_length: PUInt32): cantp_status;
begin
  result := CANTP_GetMappings_2016(channel, buffer, buffer_length);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgEqual_2016(const msg_buffer1: Pcantp_msg; const msg_buffer2: Pcantp_msg; ignoreSelfReceiveFlag: boolean): boolean;
begin
  result := CANTP_MsgEqual_2016(msg_buffer1, msg_buffer2, ignoreSelfReceiveFlag);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgCopy_2016(var msg_buffer_dst: cantp_msg; const msg_buffer_src: Pcantp_msg): cantp_status;
begin
  result := CANTP_MsgCopy_2016(msg_buffer_dst, msg_buffer_src);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgDlcToLength_2016(const dlc: Byte): UInt32;
begin
  result := CANTP_MsgDlcToLength_2016(dlc);
end;

{$IF Defined(PCANTP_API_COMPATIBILITY_ISO_2004)}
class function TCanTpApi_2016
{$ELSE}
class function TCanTpApi
{$ENDIF}
.MsgLengthToDlc_2016(const length: UInt32): Byte;
begin
  result := CANTP_MsgLengthToDlc_2016(length);
end;


end.
