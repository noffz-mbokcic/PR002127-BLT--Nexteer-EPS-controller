'  PCAN-ISO-TP_2016.vb
'
'  ~~~~~~~~~~~~
'
'  PCAN-ISO-TP API
'
'  ~~~~~~~~~~~~
'
'  ------------------------------------------------------------------
'  Author : Fabrice Vergnaud
'  Last changed by:	$Author: Fabrice $
'  Last changed date:	$Date: 2023-09-12 17:17:48 +0200 (Tue, 12 Sep 2023) $
'
'  Language: VB.Net
'  ------------------------------------------------------------------
'
'  Copyright (C) 2020  PEAK-System Technik GmbH, Darmstadt
'  more Info at http:''www.peak-system.com
'

' To use PCAN-ISO-TP_2004 and PCAN-ISO-TP_2016 together: do define PCANTP_API_COMPATIBILITY_ISO_2004"
' #Const PCANTP_API_COMPATIBILITY_ISO_2004 = 1


Imports System
Imports System.Text
Imports System.Runtime.InteropServices

Imports Peak.Can.Basic

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Types definition
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Imports cantp_bitrate = System.String  ' Represents a PCAN-FD bit rate String
Imports cantp_timestamp = System.UInt64  ' Timestamp

Imports cantp_pcanstatus = System.UInt32 ' Represents the PCAN error and status codes

' Reserved extra information

Imports cantp_msginfo_flag = System.UInt32
Imports cantp_msginfo_extra = System.UIntPtr
Imports cantp_isotp_info = System.UIntPtr

Namespace Peak.Can.IsoTp



#Region "Enumerations"

    ''' <summary>
    ''' Represents currently defined And supported PCANTP handle (a.k.a. channels)
    ''' </summary>
    Public Enum cantp_handle As UInt32

        ''' <summary>
        ''' Undefined/default value for a PCAN bus
        ''' </summary>
        PCANTP_HANDLE_NONEBUS = PCANBasic.PCAN_NONEBUS
        ''' <summary>
        ''' PCAN-ISA interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_ISABUS1 = PCANBasic.PCAN_ISABUS1
        ''' <summary>
        ''' PCAN-ISA interface, channel 2
        ''' </summary>
        PCANTP_HANDLE_ISABUS2 = PCANBasic.PCAN_ISABUS2
        ''' <summary>
        ''' PCAN-ISA interface, channel 3
        ''' </summary>
        PCANTP_HANDLE_ISABUS3 = PCANBasic.PCAN_ISABUS3
        ''' <summary>
        ''' PCAN-ISA interface, channel 4
        ''' </summary>
        PCANTP_HANDLE_ISABUS4 = PCANBasic.PCAN_ISABUS4
        ''' <summary>
        ''' PCAN-ISA interface, channel 5
        ''' </summary>
        PCANTP_HANDLE_ISABUS5 = PCANBasic.PCAN_ISABUS5
        ''' <summary>
        ''' PCAN-ISA interface, channel 6
        ''' </summary>
        PCANTP_HANDLE_ISABUS6 = PCANBasic.PCAN_ISABUS6
        ''' <summary>
        ''' PCAN-ISA interface, channel 7
        ''' </summary>
        PCANTP_HANDLE_ISABUS7 = PCANBasic.PCAN_ISABUS7
        ''' <summary>
        ''' PCAN-ISA interface, channel 8
        ''' </summary>
        PCANTP_HANDLE_ISABUS8 = PCANBasic.PCAN_ISABUS8
        ''' <summary>
        ''' PCAN-Dongle/LPT interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_DNGBUS1 = PCANBasic.PCAN_DNGBUS1
        ''' <summary>
        ''' PCAN-PCI interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_PCIBUS1 = PCANBasic.PCAN_PCIBUS1
        ''' <summary>
        ''' PCAN-PCI interface, channel 2
        ''' </summary>
        PCANTP_HANDLE_PCIBUS2 = PCANBasic.PCAN_PCIBUS2
        ''' <summary>
        ''' PCAN-PCI interface, channel 3
        ''' </summary>
        PCANTP_HANDLE_PCIBUS3 = PCANBasic.PCAN_PCIBUS3
        ''' <summary>
        ''' PCAN-PCI interface, channel 4
        ''' </summary>
        PCANTP_HANDLE_PCIBUS4 = PCANBasic.PCAN_PCIBUS4
        ''' <summary>
        ''' PCAN-PCI interface, channel 5
        ''' </summary>
        PCANTP_HANDLE_PCIBUS5 = PCANBasic.PCAN_PCIBUS5
        ''' <summary>
        ''' PCAN-PCI interface, channel 6
        ''' </summary>
        PCANTP_HANDLE_PCIBUS6 = PCANBasic.PCAN_PCIBUS6
        ''' <summary>
        ''' PCAN-PCI interface, channel 7
        ''' </summary>
        PCANTP_HANDLE_PCIBUS7 = PCANBasic.PCAN_PCIBUS7
        ''' <summary>
        ''' PCAN-PCI interface, channel 8
        ''' </summary>
        PCANTP_HANDLE_PCIBUS8 = PCANBasic.PCAN_PCIBUS8
        ''' <summary>
        ''' PCAN-PCI interface, channel 9
        ''' </summary>
        PCANTP_HANDLE_PCIBUS9 = PCANBasic.PCAN_PCIBUS9
        ''' <summary>
        ''' PCAN-PCI interface, channel 10
        ''' </summary>
        PCANTP_HANDLE_PCIBUS10 = PCANBasic.PCAN_PCIBUS10
        ''' <summary>
        ''' PCAN-PCI interface, channel 11
        ''' </summary>
        PCANTP_HANDLE_PCIBUS11 = PCANBasic.PCAN_PCIBUS11
        ''' <summary>
        ''' PCAN-PCI interface, channel 12
        ''' </summary>
        PCANTP_HANDLE_PCIBUS12 = PCANBasic.PCAN_PCIBUS12
        ''' <summary>
        ''' PCAN-PCI interface, channel 13
        ''' </summary>
        PCANTP_HANDLE_PCIBUS13 = PCANBasic.PCAN_PCIBUS13
        ''' <summary>
        ''' PCAN-PCI interface, channel 14
        ''' </summary>
        PCANTP_HANDLE_PCIBUS14 = PCANBasic.PCAN_PCIBUS14
        ''' <summary>
        ''' PCAN-PCI interface, channel 15
        ''' </summary>
        PCANTP_HANDLE_PCIBUS15 = PCANBasic.PCAN_PCIBUS15
        ''' <summary>
        ''' PCAN-PCI interface, channel 16
        ''' </summary>
        PCANTP_HANDLE_PCIBUS16 = PCANBasic.PCAN_PCIBUS16
        ''' <summary>
        ''' PCAN-USB interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_USBBUS1 = PCANBasic.PCAN_USBBUS1
        ''' <summary>
        ''' PCAN-USB interface, channel 2
        ''' </summary>
        PCANTP_HANDLE_USBBUS2 = PCANBasic.PCAN_USBBUS2
        ''' <summary>
        ''' PCAN-USB interface, channel 3
        ''' </summary>
        PCANTP_HANDLE_USBBUS3 = PCANBasic.PCAN_USBBUS3
        ''' <summary>
        ''' PCAN-USB interface, channel 4
        ''' </summary>
        PCANTP_HANDLE_USBBUS4 = PCANBasic.PCAN_USBBUS4
        ''' <summary>
        ''' PCAN-USB interface, channel 5
        ''' </summary>
        PCANTP_HANDLE_USBBUS5 = PCANBasic.PCAN_USBBUS5
        ''' <summary>
        ''' PCAN-USB interface, channel 6
        ''' </summary>
        PCANTP_HANDLE_USBBUS6 = PCANBasic.PCAN_USBBUS6
        ''' <summary>
        ''' PCAN-USB interface, channel 7
        ''' </summary>
        PCANTP_HANDLE_USBBUS7 = PCANBasic.PCAN_USBBUS7
        ''' <summary>
        ''' PCAN-USB interface, channel 8
        ''' </summary>
        PCANTP_HANDLE_USBBUS8 = PCANBasic.PCAN_USBBUS8
        ''' <summary>
        ''' PCAN-USB interface, channel 9
        ''' </summary>
        PCANTP_HANDLE_USBBUS9 = PCANBasic.PCAN_USBBUS9
        ''' <summary>
        ''' PCAN-USB interface, channel 10
        ''' </summary>
        PCANTP_HANDLE_USBBUS10 = PCANBasic.PCAN_USBBUS10
        ''' <summary>
        ''' PCAN-USB interface, channel 11
        ''' </summary>
        PCANTP_HANDLE_USBBUS11 = PCANBasic.PCAN_USBBUS11
        ''' <summary>
        ''' PCAN-USB interface, channel 12
        ''' </summary>
        PCANTP_HANDLE_USBBUS12 = PCANBasic.PCAN_USBBUS12
        ''' <summary>
        ''' PCAN-USB interface, channel 13
        ''' </summary>
        PCANTP_HANDLE_USBBUS13 = PCANBasic.PCAN_USBBUS13
        ''' <summary>
        ''' PCAN-USB interface, channel 14
        ''' </summary>
        PCANTP_HANDLE_USBBUS14 = PCANBasic.PCAN_USBBUS14
        ''' <summary>
        ''' PCAN-USB interface, channel 15
        ''' </summary>
        PCANTP_HANDLE_USBBUS15 = PCANBasic.PCAN_USBBUS15
        ''' <summary>
        ''' PCAN-USB interface, channel 16
        ''' </summary>
        PCANTP_HANDLE_USBBUS16 = PCANBasic.PCAN_USBBUS16
        ''' <summary>
        ''' PCAN-PC Card interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_PCCBUS1 = PCANBasic.PCAN_PCCBUS1
        ''' <summary>
        ''' PCAN-PC Card interface, channel 2
        ''' </summary>
        PCANTP_HANDLE_PCCBUS2 = PCANBasic.PCAN_PCCBUS2
        ''' <summary>
        ''' PCAN-LAN interface, channel 1
        ''' </summary>
        PCANTP_HANDLE_LANBUS1 = PCANBasic.PCAN_LANBUS1
        ''' <summary>
        ''' PCAN-LAN interface, channel 2
        ''' </summary>
        PCANTP_HANDLE_LANBUS2 = PCANBasic.PCAN_LANBUS2
        ''' <summary>
        ''' PCAN-LAN interface, channel 3
        ''' </summary>
        PCANTP_HANDLE_LANBUS3 = PCANBasic.PCAN_LANBUS3
        ''' <summary>
        ''' PCAN-LAN interface, channel 4
        ''' </summary>
        PCANTP_HANDLE_LANBUS4 = PCANBasic.PCAN_LANBUS4
        ''' <summary>
        ''' PCAN-LAN interface, channel 5
        ''' </summary>
        PCANTP_HANDLE_LANBUS5 = PCANBasic.PCAN_LANBUS5
        ''' <summary>
        ''' PCAN-LAN interface, channel 6
        ''' </summary>
        PCANTP_HANDLE_LANBUS6 = PCANBasic.PCAN_LANBUS6
        ''' <summary>
        ''' PCAN-LAN interface, channel 7
        ''' </summary>
        PCANTP_HANDLE_LANBUS7 = PCANBasic.PCAN_LANBUS7
        ''' <summary>
        ''' PCAN-LAN interface, channel 8
        ''' </summary>
        PCANTP_HANDLE_LANBUS8 = PCANBasic.PCAN_LANBUS8
        ''' <summary>
        ''' PCAN-LAN interface, channel 9
        ''' </summary>
        PCANTP_HANDLE_LANBUS9 = PCANBasic.PCAN_LANBUS9
        ''' <summary>
        ''' PCAN-LAN interface, channel 10
        ''' </summary>
        PCANTP_HANDLE_LANBUS10 = PCANBasic.PCAN_LANBUS10
        ''' <summary>
        ''' PCAN-LAN interface, channel 11
        ''' </summary>
        PCANTP_HANDLE_LANBUS11 = PCANBasic.PCAN_LANBUS11
        ''' <summary>
        ''' PCAN-LAN interface, channel 12
        ''' </summary>
        PCANTP_HANDLE_LANBUS12 = PCANBasic.PCAN_LANBUS12
        ''' <summary>
        ''' PCAN-LAN interface, channel 13
        ''' </summary>
        PCANTP_HANDLE_LANBUS13 = PCANBasic.PCAN_LANBUS13
        ''' <summary>
        ''' PCAN-LAN interface, channel 14
        ''' </summary>
        PCANTP_HANDLE_LANBUS14 = PCANBasic.PCAN_LANBUS14
        ''' <summary>
        ''' PCAN-LAN interface, channel 15
        ''' </summary>
        PCANTP_HANDLE_LANBUS15 = PCANBasic.PCAN_LANBUS15
        ''' <summary>
        ''' PCAN-LAN interface, channel 16
        ''' </summary>
        PCANTP_HANDLE_LANBUS16 = PCANBasic.PCAN_LANBUS16
    End Enum

    ''' <summary>
    ''' Represents the baudrate register for the PCANTP channel
    ''' </summary>
    Public Enum cantp_baudrate : UInt32

        ''' <summary>
        '''  Channel Baudrate 1 MBit/s
        ''' </summary>
        PCANTP_BAUDRATE_1M = TPCANBaudrate.PCAN_BAUD_1M
        ''' <summary>
        '''  Channel Baudrate 800 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_800K = TPCANBaudrate.PCAN_BAUD_800K
        ''' <summary>
        '''  Channel Baudrate 500 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_500K = TPCANBaudrate.PCAN_BAUD_500K
        ''' <summary>
        '''  Channel Baudrate 250 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_250K = TPCANBaudrate.PCAN_BAUD_250K
        ''' <summary>
        '''  Channel Baudrate 125 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_125K = TPCANBaudrate.PCAN_BAUD_125K
        ''' <summary>
        '''  Channel Baudrate 100 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_100K = TPCANBaudrate.PCAN_BAUD_100K
        ''' <summary>
        '''  Channel Baudrate 95,238 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_95K = TPCANBaudrate.PCAN_BAUD_95K
        ''' <summary>
        '''  Channel Baudrate 83,333 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_83K = TPCANBaudrate.PCAN_BAUD_83K
        ''' <summary>
        '''  Channel Baudrate 50 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_50K = TPCANBaudrate.PCAN_BAUD_50K
        ''' <summary>
        '''  Channel Baudrate 47,619 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_47K = TPCANBaudrate.PCAN_BAUD_47K
        ''' <summary>
        '''  Channel Baudrate 33,333 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_33K = TPCANBaudrate.PCAN_BAUD_33K
        ''' <summary>
        '''  Channel Baudrate 20 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_20K = TPCANBaudrate.PCAN_BAUD_20K
        ''' <summary>
        '''  Channel Baudrate 10 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_10K = TPCANBaudrate.PCAN_BAUD_10K
        ''' <summary>
        '''  Channel Baudrate 5 kBit/s
        ''' </summary>
        PCANTP_BAUDRATE_5K = TPCANBaudrate.PCAN_BAUD_5K
    End Enum

    ''' <summary>
    ''' Type of PCAN (non plug-n-play) hardware
    ''' </summary>
    Public Enum cantp_hwtype : UInt32

        ''' <summary>
        ''' PCAN-ISA 82C200
        ''' </summary>
        PCANTP_HWTYPE_ISA = TPCANType.PCAN_TYPE_ISA
        ''' <summary>
        ''' PCAN-ISA SJA1000
        ''' </summary>
        PCANTP_HWTYPE_ISA_SJA = TPCANType.PCAN_TYPE_ISA_SJA
        ''' <summary>
        ''' PHYTEC ISA
        ''' </summary>
        PCANTP_HWTYPE_ISA_PHYTEC = TPCANType.PCAN_TYPE_ISA_PHYTEC
        ''' <summary>
        ''' PCAN-Dongle 82C200
        ''' </summary>
        PCANTP_HWTYPE_DNG = TPCANType.PCAN_TYPE_DNG
        ''' <summary>
        ''' PCAN-Dongle EPP 82C200
        ''' </summary>
        PCANTP_HWTYPE_DNG_EPP = TPCANType.PCAN_TYPE_DNG_EPP
        ''' <summary>
        ''' PCAN-Dongle SJA1000
        ''' </summary>
        PCANTP_HWTYPE_DNG_SJA = TPCANType.PCAN_TYPE_DNG_SJA
        ''' <summary>
        ''' PCAN-Dongle EPP SJA1000
        ''' </summary>
        PCANTP_HWTYPE_DNG_SJA_EPP = TPCANType.PCAN_TYPE_DNG_SJA_EPP
    End Enum

    ''' <summary>
    ''' PCAN devices
    ''' </summary>
    Public Enum cantp_device As UInt32

        ''' <summary>
        ''' Undefined, unknown Or Not selected PCAN device value
        ''' </summary>
        PCANTP_DEVICE_NONE = TPCANDevice.PCAN_NONE
        ''' <summary>
        ''' PCAN Non-PlugAndPlay devices. Not USED WITHIN PCAN-Basic API
        ''' </summary>
        PCANTP_DEVICE_PEAKCAN = TPCANDevice.PCAN_PEAKCAN
        ''' <summary>
        ''' PCAN-ISA, PCAN-PC/104, And PCAN-PC/104-Plus
        ''' </summary>
        PCANTP_DEVICE_ISA = TPCANDevice.PCAN_ISA
        ''' <summary>
        ''' PCAN-Dongle
        ''' </summary>
        PCANTP_DEVICE_DNG = TPCANDevice.PCAN_DNG
        ''' <summary>
        ''' PCAN-PCI, PCAN-cPCI, PCAN-miniPCI, And PCAN-PCI Express
        ''' </summary>
        PCANTP_DEVICE_PCI = TPCANDevice.PCAN_PCI
        ''' <summary>
        ''' PCAN-USB And PCAN-USB Pro
        ''' </summary>
        PCANTP_DEVICE_USB = TPCANDevice.PCAN_USB
        ''' <summary>
        ''' PCAN-PC Card
        ''' </summary>
        PCANTP_DEVICE_PCC = TPCANDevice.PCAN_PCC
        ''' <summary>
        ''' PCAN Virtual hardware. Not USED WITHIN PCAN-Basic API
        ''' </summary>
        PCANTP_DEVICE_VIRTUAL = TPCANDevice.PCAN_VIRTUAL
        ''' <summary>
        ''' PCAN Gateway devices
        ''' </summary>
        PCANTP_DEVICE_LAN = TPCANDevice.PCAN_LAN
    End Enum

    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ' Enums definition for ISO-TP API
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    ''' <summary>
    ''' Represents each group of errors a status can hold
    ''' </summary>
    <Flags()>
    Public Enum cantp_statustype As UInt32

        ''' <summary>
        ''' no error
        ''' </summary>
        PCANTP_STATUSTYPE_OK = &H0
        ''' <summary>
        ''' general error
        ''' </summary>
        PCANTP_STATUSTYPE_ERR = &H1
        ''' <summary>
        ''' bus status
        ''' </summary>
        PCANTP_STATUSTYPE_BUS = &H2
        ''' <summary>
        ''' network status
        ''' </summary>
        PCANTP_STATUSTYPE_NET = &H4
        ''' <summary>
        ''' extra information
        ''' </summary>
        PCANTP_STATUSTYPE_INFO = &H8
        ''' <summary>
        ''' encapsulated PCAN-Basic status
        ''' </summary>
        PCANTP_STATUSTYPE_PCAN = &H10
    End Enum

    ''' <summary>
    ''' Represents the network result of the communication of an ISO-TP message (used in cantp_status).
    ''' </summary>
    Public Enum cantp_netstatus As UInt32

        ' ISO-TP network errors:
        ''' <summary>
        ''' No network error
        ''' </summary>
        PCANTP_NETSTATUS_OK = &H0
        ''' <summary>
        ''' timeout occured between 2 frames transmission (sender And receiver side)
        ''' </summary>
        PCANTP_NETSTATUS_TIMEOUT_A = &H1
        ''' <summary>
        ''' sender side timeout while waiting for flow control frame
        ''' </summary>
        PCANTP_NETSTATUS_TIMEOUT_Bs = &H2
        ''' <summary>
        ''' receiver side timeout while waiting for consecutive frame
        ''' </summary>
        PCANTP_NETSTATUS_TIMEOUT_Cr = &H3
        ''' <summary>
        ''' unexpected sequence number
        ''' </summary>
        PCANTP_NETSTATUS_WRONG_SN = &H4
        ''' <summary>
        ''' invalid Or unknown FlowStatus
        ''' </summary>
        PCANTP_NETSTATUS_INVALID_FS = &H5
        ''' <summary>
        ''' unexpected protocol data unit
        ''' </summary>
        PCANTP_NETSTATUS_UNEXP_PDU = &H6
        ''' <summary>
        ''' reception of flow control WAIT frame that exceeds the maximum counter defined by PCANTP_PARAMETER_WFT_MAX
        ''' </summary>
        PCANTP_NETSTATUS_WFT_OVRN = &H7
        ''' <summary>
        ''' buffer on the receiver side cannot store the data length (server side only)
        ''' </summary>
        PCANTP_NETSTATUS_BUFFER_OVFLW = &H8
        ''' <summary>
        ''' general error
        ''' </summary>
        PCANTP_NETSTATUS_ERROR = &H9
        ''' <summary>
        ''' message was invalid And ignored
        ''' </summary>
        PCANTP_NETSTATUS_IGNORED = &HA
        ''' <summary>
        ''' sender side timeout while transmitting
        ''' </summary>
        PCANTP_NETSTATUS_TIMEOUT_As = &HB
        ''' <summary>
        ''' receiver side timeout while transmitting
        ''' </summary>
        PCANTP_NETSTATUS_TIMEOUT_Ar = &HC

        ' NON ISO-TP related network results
        ''' <summary>
        ''' transmit queue Is full (failed too many times)
        ''' </summary>
        PCANTP_NETSTATUS_XMT_FULL = &HD
        ''' <summary>
        ''' CAN bus error
        ''' </summary>
        PCANTP_NETSTATUS_BUS_ERROR = &HE
        ''' <summary>
        ''' memory allocation error
        ''' </summary>
        PCANTP_NETSTATUS_NO_MEMORY = &HF
    End Enum

    ''' <summary>
    ''' Represents the status of a CAN bus (used in cantp_status).
    ''' </summary>
    <Flags()>
    Public Enum cantp_busstatus As UInt32

        ''' <summary>
        ''' Bus Is in active state
        ''' </summary>
        PCANTP_BUSSTATUS_OK = &H0
        ''' <summary>
        ''' Bus error: an error counter reached the 'light' limit
        ''' </summary>
        PCANTP_BUSSTATUS_LIGHT = &H1
        ''' <summary>
        ''' Bus error: an error counter reached the 'heavy' limit
        ''' </summary>
        PCANTP_BUSSTATUS_HEAVY = &H2
        ''' <summary>
        ''' Bus error: an error counter reached the 'warning/heavy' limit
        ''' </summary>
        PCANTP_BUSSTATUS_WARNING = PCANTP_BUSSTATUS_HEAVY
        ''' <summary>
        ''' Bus error: the CAN controller Is Error passive
        ''' </summary>
        PCANTP_BUSSTATUS_PASSIVE = &H4
        ''' <summary>
        ''' Bus error: the CAN controller Is In bus-off state
        ''' </summary>
        PCANTP_BUSSTATUS_OFF = &H8
        ''' <summary>
        ''' Mask for all bus errors
        ''' </summary>
        PCANTP_BUSSTATUS_ANY = PCANTP_BUSSTATUS_LIGHT Or PCANTP_BUSSTATUS_HEAVY Or PCANTP_BUSSTATUS_WARNING Or PCANTP_BUSSTATUS_PASSIVE Or PCANTP_BUSSTATUS_OFF
    End Enum

    ''' <summary>
    ''' Represents an general error (used in cantp_status).
    ''' </summary>
    Public Enum cantp_errstatus As UInt32

        ''' <summary>
        ''' No error
        ''' </summary>
        PCANTP_ERRSTATUS_OK = &H0
        ''' <summary>
        ''' Not Initialized
        ''' </summary>
        PCANTP_ERRSTATUS_NOT_INITIALIZED = &H1
        ''' <summary>
        ''' Already Initialized
        ''' </summary>
        PCANTP_ERRSTATUS_ALREADY_INITIALIZED = &H2
        ''' <summary>
        ''' Could Not obtain memory
        ''' </summary>
        PCANTP_ERRSTATUS_NO_MEMORY = &H3
        ''' <summary>
        ''' Input buffer overflow
        ''' </summary>
        PCANTP_ERRSTATUS_OVERFLOW = &H4
        ''' <summary>
        ''' No Message available
        ''' </summary>
        PCANTP_ERRSTATUS_NO_MESSAGE = &H7
        ''' <summary>
        ''' Parameter has an invalid or unexpected type
        ''' </summary>
        PCANTP_ERRSTATUS_PARAM_INVALID_TYPE = &H8
        ''' <summary>
        ''' Parameter has an invalid value
        ''' </summary>
        PCANTP_ERRSTATUS_PARAM_INVALID_VALUE = &H9
        ''' <summary>
        ''' PCANTP mapping Not initialized
        ''' </summary>
        PCANTP_ERRSTATUS_MAPPING_NOT_INITIALIZED = &HD
        ''' <summary>
        ''' PCANTP mapping parameters are invalid
        ''' </summary>
        PCANTP_ERRSTATUS_MAPPING_INVALID = &HE
        ''' <summary>
        ''' PCANTP mapping already defined
        ''' </summary>
        PCANTP_ERRSTATUS_MAPPING_ALREADY_INITIALIZED = &HF
        ''' <summary>
        '''
        ''' </summary>
        PCANTP_ERRSTATUS_PARAM_BUFFER_TOO_SMALL = &H10
        ''' <summary>
        ''' Tx queue Is full
        ''' </summary>
        PCANTP_ERRSTATUS_QUEUE_TX_FULL = &H11
        ''' <summary>
        ''' Failed to get an access to the internal lock
        ''' </summary>
        PCANTP_ERRSTATUS_LOCK_TIMEOUT = &H12
        ''' <summary>
        ''' Invalid cantp_handle
        ''' </summary>
        PCANTP_ERRSTATUS_INVALID_HANDLE = &H13

        ''' <summary>
        ''' unknown/generic error
        ''' </summary>
        PCANTP_ERRSTATUS_UNKNOWN = &HFF
    End Enum

    ''' <summary>
    ''' Represents additional status information (used in cantp_status).
    ''' </summary>
    <Flags()>
    Public Enum cantp_infostatus As UInt32

        ''' <summary>
        ''' no extra information
        ''' </summary>
        PCANTP_INFOSTATUS_OK = &H0
        ''' <summary>
        ''' input was modified by the API
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_INPUT_MODIFIED = &H1
        ''' <summary>
        ''' DLC value was modified by the API
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_DLC_MODIFIED = &H2
        ''' <summary>
        ''' Data Length value was modified by the API
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_DATA_LENGTH_MODIFIED = &H4
        ''' <summary>
        ''' FD related flags value were modified by the API
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_FD_FLAG_MODIFIED = &H8
        ''' <summary>
        ''' Message receive queue Is full (oldest messages may be lost)
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_FULL = &H10
        ''' <summary>
        ''' Buffer Is used by another thread Or API
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_BUFFER_IN_USE = &H20
        ''' <summary>
        ''' Internal queue read too late (a frame was lost)
        ''' </summary>
        PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_OVERRUN = &H30
    End Enum


    ''' <summary>
    ''' Defines constants used by the next enum: cantp_status
    ''' </summary>
    Public Enum cantp_status_offset As Byte

        PCANTP_STATUS_OFFSET_BUS = 8
        PCANTP_STATUS_OFFSET_NET = (PCANTP_STATUS_OFFSET_BUS + 5)
        PCANTP_STATUS_OFFSET_INFO = (PCANTP_STATUS_OFFSET_NET + 5)
    End Enum


    ''' <summary>
    '''  Represent the PCANTP error And status codes .
    '''
    ''' Bits information:
    '''   32|  28|  24|  20|  16|  12|   8|   4|   0|
    '''     |    |    |    |    |    |    |    |    |
    '''      0000 0000 0000 0000 0000 0000 0000 0000
    '''     |    |    |    |    |         [0000 0000] => PCAN-ISO-TP API errors
    '''     |    |    |    |    |  [0 0000]           => CAN Bus status
    '''     |    |    |    | [00 000]                 => Networking message status
    '''     |    |    [0000 00]                       => API extra information
    '''     |[000 0000]                               => Reserved
    '''     [0]                                       => PCANBasic error flag (overrides the meaning of all bits)
    ''' </summary>
    Public Enum cantp_status As UInt32

        PCANTP_STATUS_OK = cantp_errstatus.PCANTP_ERRSTATUS_OK
        PCANTP_STATUS_NOT_INITIALIZED = cantp_errstatus.PCANTP_ERRSTATUS_NOT_INITIALIZED
        PCANTP_STATUS_ALREADY_INITIALIZED = cantp_errstatus.PCANTP_ERRSTATUS_ALREADY_INITIALIZED
        PCANTP_STATUS_NO_MEMORY = cantp_errstatus.PCANTP_ERRSTATUS_NO_MEMORY
        PCANTP_STATUS_OVERFLOW = cantp_errstatus.PCANTP_ERRSTATUS_OVERFLOW
        PCANTP_STATUS_NO_MESSAGE = cantp_errstatus.PCANTP_ERRSTATUS_NO_MESSAGE
        PCANTP_STATUS_PARAM_INVALID_TYPE = cantp_errstatus.PCANTP_ERRSTATUS_PARAM_INVALID_TYPE
        PCANTP_STATUS_PARAM_INVALID_VALUE = cantp_errstatus.PCANTP_ERRSTATUS_PARAM_INVALID_VALUE
        PCANTP_STATUS_MAPPING_NOT_INITIALIZED = cantp_errstatus.PCANTP_ERRSTATUS_MAPPING_NOT_INITIALIZED
        PCANTP_STATUS_MAPPING_INVALID = cantp_errstatus.PCANTP_ERRSTATUS_MAPPING_INVALID
        PCANTP_STATUS_MAPPING_ALREADY_INITIALIZED = cantp_errstatus.PCANTP_ERRSTATUS_MAPPING_ALREADY_INITIALIZED
        PCANTP_STATUS_PARAM_BUFFER_TOO_SMALL = cantp_errstatus.PCANTP_ERRSTATUS_PARAM_BUFFER_TOO_SMALL
        PCANTP_STATUS_QUEUE_TX_FULL = cantp_errstatus.PCANTP_ERRSTATUS_QUEUE_TX_FULL
        PCANTP_STATUS_LOCK_TIMEOUT = cantp_errstatus.PCANTP_ERRSTATUS_LOCK_TIMEOUT
        PCANTP_STATUS_HANDLE_INVALID = cantp_errstatus.PCANTP_ERRSTATUS_INVALID_HANDLE
        PCANTP_STATUS_UNKNOWN = cantp_errstatus.PCANTP_ERRSTATUS_UNKNOWN

#Region "Bus status flags (bits [8..11])"
        ''' <summary>
        ''' PCANTP Channel Is in BUS-LIGHT error state
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_LIGHT = (cantp_busstatus.PCANTP_BUSSTATUS_LIGHT << cantp_status_offset.PCANTP_STATUS_OFFSET_BUS)
        ''' <summary>
        ''' PCANTP Channel Is in BUS-HEAVY error state
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_HEAVY = (cantp_busstatus.PCANTP_BUSSTATUS_HEAVY << cantp_status_offset.PCANTP_STATUS_OFFSET_BUS)
        ''' <summary>
        ''' PCANTP Channel Is in BUS-HEAVY error state
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_WARNING = PCANTP_STATUS_FLAG_BUS_HEAVY
        ''' <summary>
        ''' PCANTP Channel Is error passive state
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_PASSIVE = (cantp_busstatus.PCANTP_BUSSTATUS_PASSIVE << cantp_status_offset.PCANTP_STATUS_OFFSET_BUS)
        ''' <summary>
        ''' PCANTP Channel Is in BUS-OFF error state
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_OFF = (cantp_busstatus.PCANTP_BUSSTATUS_OFF << cantp_status_offset.PCANTP_STATUS_OFFSET_BUS)
        ''' <summary>
        '''
        ''' </summary>
        PCANTP_STATUS_FLAG_BUS_ANY = (cantp_busstatus.PCANTP_BUSSTATUS_ANY << cantp_status_offset.PCANTP_STATUS_OFFSET_BUS)
#End Region

#Region "Network status (bits [13..17])"
        ''' <summary>
        ''' This flag states if one of the following network errors occured with the fetched message
        ''' </summary>
        PCANTP_STATUS_FLAG_NETWORK_RESULT = (1 << cantp_status_offset.PCANTP_STATUS_OFFSET_NET)
        ''' <summary>
        ''' timeout occured between 2 frames transmission (sender And receiver side)
        ''' </summary>
        PCANTP_STATUS_NETWORK_TIMEOUT_A = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_TIMEOUT_A << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' sender side timeout while waiting for flow control frame
        ''' </summary>
        PCANTP_STATUS_NETWORK_TIMEOUT_Bs = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_TIMEOUT_Bs << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' receiver side timeout while waiting for consecutive frame
        ''' </summary>
        PCANTP_STATUS_NETWORK_TIMEOUT_Cr = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_TIMEOUT_Cr << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' unexpected sequence number
        ''' </summary>
        PCANTP_STATUS_NETWORK_WRONG_SN = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_WRONG_SN << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' invalid Or unknown FlowStatus
        ''' </summary>
        PCANTP_STATUS_NETWORK_INVALID_FS = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_INVALID_FS << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' unexpected protocol data unit
        ''' </summary>
        PCANTP_STATUS_NETWORK_UNEXP_PDU = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_UNEXP_PDU << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' reception of flow control WAIT frame that exceeds the maximum counter defined by PCANTP_PARAMETER_WFT_MAX
        ''' </summary>
        PCANTP_STATUS_NETWORK_WFT_OVRN = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_WFT_OVRN << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' buffer on the receiver side cannot store the data length (server side only)
        ''' </summary>
        PCANTP_STATUS_NETWORK_BUFFER_OVFLW = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_BUFFER_OVFLW << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' general error
        ''' </summary>
        PCANTP_STATUS_NETWORK_ERROR = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_ERROR << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' message was invalid And ignored
        ''' </summary>
        PCANTP_STATUS_NETWORK_IGNORED = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_IGNORED << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
#End Region

#Region "ISO-TP extra information flags"
        ''' <summary>
        ''' Receiver side timeout while transmitting
        ''' </summary>
        PCANTP_STATUS_NETWORK_TIMEOUT_Ar = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_TIMEOUT_Ar << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' Sender side timeout while transmitting
        ''' </summary>
        PCANTP_STATUS_NETWORK_TIMEOUT_As = (PCANTP_STATUS_FLAG_NETWORK_RESULT Or (cantp_netstatus.PCANTP_NETSTATUS_TIMEOUT_As << (cantp_status_offset.PCANTP_STATUS_OFFSET_NET + 1)))
        ''' <summary>
        ''' input was modified
        ''' </summary>
        PCANTP_STATUS_CAUTION_INPUT_MODIFIED = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_INPUT_MODIFIED << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' DLC value of the input was modified
        ''' </summary>
        PCANTP_STATUS_CAUTION_DLC_MODIFIED = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_DLC_MODIFIED << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' Data Length value of the input was modified
        ''' </summary>
        PCANTP_STATUS_CAUTION_DATA_LENGTH_MODIFIED = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_DATA_LENGTH_MODIFIED << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' FD flags of the input was modified
        ''' </summary>
        PCANTP_STATUS_CAUTION_FD_FLAG_MODIFIED = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_FD_FLAG_MODIFIED << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' Receive queue Is full
        ''' </summary>
        PCANTP_STATUS_CAUTION_RX_QUEUE_FULL = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_FULL << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' Buffer Is used by another thread Or API
        ''' </summary>
        PCANTP_STATUS_CAUTION_BUFFER_IN_USE = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_BUFFER_IN_USE << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
        ''' <summary>
        ''' Internal queue read too late (a frame was lost)
        ''' </summary>
        PCANTP_STATUS_CAUTION_RX_QUEUE_OVERRUN = (cantp_infostatus.PCANTP_INFOSTATUS_CAUTION_RX_QUEUE_OVERRUN << cantp_status_offset.PCANTP_STATUS_OFFSET_INFO)
#End Region

#Region "Lower API status code: see also PCANTP_STATUS_xx macros"
        ''' <summary>
        ''' PCAN error flag, remove flag to get a usable PCAN error/status code (cf. PCANBasic API)
        ''' </summary>
        PCANTP_STATUS_FLAG_PCAN_STATUS = &H80000000UI
#End Region

#Region "Masks To merge/retrieve different PCANTP status by type In a cantp_status"
        ''' <summary>
        ''' filter by PCANTP_STATUSTYPE_ERR type
        ''' </summary>
        PCANTP_STATUS_MASK_ERROR = &HFFUI
        ''' <summary>
        ''' filter by PCANTP_STATUSTYPE_BUS type
        ''' </summary>
        PCANTP_STATUS_MASK_BUS = &H1F00UI
        ''' <summary>
        ''' filter by PCANTP_STATUSTYPE_NET type
        ''' </summary>
        PCANTP_STATUS_MASK_ISOTP_NET = &H3E000UI
        ''' <summary>
        ''' filter by PCANTP_STATUSTYPE_INFO type
        ''' </summary>
        PCANTP_STATUS_MASK_INFO = &HFC0000UI
        ''' <summary>
        ''' filter by PCANTP_STATUSTYPE_PCAN type
        ''' </summary>
        PCANTP_STATUS_MASK_PCAN = Not PCANTP_STATUS_FLAG_PCAN_STATUS
#End Region
    End Enum

    ''' <summary>
    ''' List of parameters handled by PCAN-ISO-TP (rev. 2016)
    ''' Note: PCAN-Basic parameters (PCAN_PARAM_xxx) are compatible via casting.
    ''' </summary>
    Public Enum cantp_parameter As UInt32

        ''' <summary>
        ''' PCAN-ISO-TP API version parameter
        ''' </summary>
        PCANTP_PARAMETER_API_VERSION = &H101
        ''' <summary>
        ''' 1 BYTE data describing the condition of a channel.
        ''' </summary>
        PCANTP_PARAMETER_CHANNEL_CONDITION = &H102
        ''' <summary>
        ''' 1 BYTE data describing the debug mode
        ''' </summary>
        PCANTP_PARAMETER_DEBUG = &H103
        ''' <summary>
        ''' data Is pointer to a HANDLE created by CreateEvent function
        ''' </summary>
        PCANTP_PARAMETER_RECEIVE_EVENT = &H104

        ''' <summary>
        ''' 1 BYTE data stating if unsegmented (NON-ISO-TP) CAN frames can be received
        ''' </summary>
        PCANTP_PARAMETER_FRAME_FILTERING = &H105
        ''' <summary>
        ''' 1 BYTE data stating the default DLC to use when transmitting messages with CAN FD
        ''' </summary>
        PCANTP_PARAMETER_CAN_TX_DL = &H106
        ''' <summary>
        ''' 1 BYTE data stating if CAN frame DLC uses padding Or Not
        ''' </summary>
        PCANTP_PARAMETER_CAN_DATA_PADDING = &H107
        ''' <summary>
        ''' 1 BYTE data stating the value used for CAN data padding
        ''' </summary>
        PCANTP_PARAMETER_CAN_PADDING_VALUE = &H108
        ''' <summary>
        ''' 1 BYTE data stating which revision of ISO 15765-2 to use (see PCANTP_ISO_REV_*).
        ''' </summary>
        PCANTP_PARAMETER_ISO_REV = &H109
        ''' <summary>
        ''' 1 BYTE data stating the default priority value for normal fixed, mixed And enhanced addressing (default=6)
        ''' </summary>
        PCANTP_PARAMETER_J1939_PRIORITY = &H10A
        ''' <summary>
        ''' 1 BYTE data stating if pending messages are displayed/hidden
        ''' </summary>
        PCANTP_PARAMETER_MSG_PENDING = &H10B

        ''' <summary>
        ''' 1 BYTE data describing the block size parameter (BS)
        ''' </summary>
        PCANTP_PARAMETER_BLOCK_SIZE = &H10C
        ''' <summary>
        ''' 2 BYTE data describing the transmit block size parameter (BS_TX)
        ''' </summary>
        PCANTP_PARAMETER_BLOCK_SIZE_TX = &H10D
        ''' <summary>
        ''' 1 BYTE data describing the seperation time parameter (STmin)
        ''' </summary>
        PCANTP_PARAMETER_SEPARATION_TIME = &H10E
        ''' <summary>
        ''' 2 BYTE data describing the transmit seperation time parameter (STmin_TX)
        ''' </summary>
        PCANTP_PARAMETER_SEPARATION_TIME_TX = &H10F
        ''' <summary>
        ''' 4 BYTE data describing the Wait Frame Transmissions parameter.
        ''' </summary>
        PCANTP_PARAMETER_WFT_MAX = &H110

        ''' <summary>
        ''' 4 BYTE data describing ISO-15765-2:Timeout As.
        ''' </summary>
        PCANTP_PARAMETER_TIMEOUT_AS = &H111
        ''' <summary>
        ''' 4 BYTE data describing ISO-15765-2:Timeout Ar.
        ''' </summary>
        PCANTP_PARAMETER_TIMEOUT_AR = &H112
        ''' <summary>
        ''' 4 BYTE data describing ISO-15765-2:Timeout Bs.
        ''' </summary>
        PCANTP_PARAMETER_TIMEOUT_BS = &H113
        ''' <summary>
        ''' 4 BYTE data describing ISO-15765-2:Timeout Cr.
        ''' </summary>
        PCANTP_PARAMETER_TIMEOUT_CR = &H114
        ''' <summary>
        ''' 1 BYTE data describing the tolerence to apply to all timeout as a percentage ([0..100].
        ''' </summary>
        PCANTP_PARAMETER_TIMEOUT_TOLERANCE = &H115
        ''' <summary>
        ''' 1 BYTE data to set predefined ISO values for timeouts (see PCANTP_ISO_TIMEOUTS_*).
        ''' </summary>
        PCANTP_PARAMETER_ISO_TIMEOUTS = &H116
        ''' <summary>
        ''' 1 BYTE data to set optimization options to improve delay between ISO-TP consecutive frames.
        ''' </summary>
        PCANTP_PARAMETER_SELFRECEIVE_LATENCY = &H117
        ''' <summary>
        ''' 2 BYTE data describing the maximum number of messages in the Rx queue.
        ''' </summary>
        PCANTP_PARAMETER_MAX_RX_QUEUE = &H118
        ''' <summary>
        ''' 1 BYTE data stating if messages handled by higher layer APIs are still available in this API (default=0).
        ''' </summary>
        PCANTP_PARAMETER_KEEP_HIGHER_LAYER_MESSAGES = &H119
        ''' <summary>
        ''' 1 BYTE data stating if the white-list CAN IDs filtering mechanism Is enabled.
        ''' </summary>
        PCANTP_PARAMETER_FILTER_CAN_ID = &H11A
        ''' <summary>
        ''' 1 BYTE data stating if the 29 bit Enhanced Diagnostic CAN identifier is supported (ISO-15765-3:2004, default is false with ISO revision 2016).
        ''' </summary>
        PCANTP_PARAMETER_SUPPORT_29B_ENHANCED = &H11B
        ''' <summary>
        ''' 1 BYTE data stating if the 29 bit Fixed Normal addressing CAN identifier is supported (default is true).
        ''' </summary>
        PCANTP_PARAMETER_SUPPORT_29B_FIXED_NORMAL = &H11C
        ''' <summary>
        ''' 1 BYTE data stating if the 29 bit Mixed addressing CAN identifier is supported (default is true).
        ''' </summary>
        PCANTP_PARAMETER_SUPPORT_29B_MIXED = &H11D
        ''' <summary>
        ''' Pointer to a cantp_msg, checks if the message is valid and can be sent (ex. if a mapping is needed) and corrects input if needed.
        ''' </summary>
        PCANTP_PARAMETER_MSG_CHECK = &H11E
        ''' <summary>
        ''' 1 BYTE data stating to clear Rx/Tx queues and CAN controller (channel is unitialized and re-initialized but settings and mappings are kept)
        ''' </summary>
        PCANTP_PARAMETER_RESET_HARD = &H11F
        ''' <summary>
        ''' 1 BYTE data stating if network is full-duplex (default) or half-duplex
        ''' </summary>
        PCANTP_PARAMETER_NETWORK_LAYER_DESIGN = &H120
        ''' <summary>
        ''' 1 BYTE data stating if API allows receiption PCANTP_MSGTYPE_CANINFO from lower layer APIs
        ''' </summary>
        PCANTP_PARAMETER_ALLOW_MSGTYPE_CANINFO = &H124
        ''' <summary>
        ''' Data is a pointer to a user-defined callback triggered when a message is received.
        ''' </summary>
        PCANTP_PARAMETER_RECEIVE_EVENT_CALLBACK = &H125
        ''' <summary>
        ''' Data is a pointer to a user-defined structure. It can be used to pass user arguments to the reception callback function.
        ''' </summary>
        PCANTP_PARAMETER_RECEIVE_EVENT_CALLBACK_USER_CONTEXT = &H126

        ''' <summary>
        ''' PCAN hardware name parameter
        ''' </summary>
        PCANTP_PARAMETER_HARDWARE_NAME = TPCANParameter.PCAN_HARDWARE_NAME
        ''' <summary>
        ''' PCAN-USB device identifier parameter
        ''' </summary>
        PCANTP_PARAMETER_DEVICE_ID = TPCANParameter.PCAN_DEVICE_ID
        ''' <summary>
        ''' Deprecated use PCANTP_PARAMETER_DEVICE_ID instead
        ''' </summary>
        PCANTP_PARAMETER_DEVICE_NUMBER = TPCANParameter.PCAN_DEVICE_ID
        ''' <summary>
        ''' CAN-Controller number of a PCAN-Channel
        ''' </summary>
        PCANTP_PARAMETER_CONTROLLER_NUMBER = TPCANParameter.PCAN_CONTROLLER_NUMBER
        ''' <summary>
        ''' Capabilities of a PCAN device (FEATURE_***)
        ''' </summary>
        PCANTP_PARAMETER_CHANNEL_FEATURES = TPCANParameter.PCAN_CHANNEL_FEATURES
    End Enum


    ''' <summary>
    ''' Represents the type of a CANTP message (see field "cantp_msg.type").
    ''' </summary>
    <Flags()>
    Public Enum cantp_msgtype As UInt32

        ''' <summary>
        ''' uninitialized message (data Is NULL)
        ''' </summary>
        PCANTP_MSGTYPE_NONE = 0
        ''' <summary>
        ''' standard CAN frame
        ''' </summary>
        PCANTP_MSGTYPE_CAN = 1
        ''' <summary>
        ''' CAN frame with FD support
        ''' </summary>
        PCANTP_MSGTYPE_CANFD = 2
        ''' <summary>
        ''' ISO-TP message (ISO:15765)
        ''' </summary>
        PCANTP_MSGTYPE_ISOTP = 4
        ''' <summary>
        ''' CAN bus information
        ''' </summary>
        PCANTP_MSGTYPE_CANINFO = 8

        ''' <summary>
        ''' frame only: unsegmented messages
        ''' </summary>
        PCANTP_MSGTYPE_FRAME = PCANTP_MSGTYPE_CAN Or PCANTP_MSGTYPE_CANFD
        ''' <summary>
        ''' any supported message type
        ''' </summary>
        PCANTP_MSGTYPE_ANY = PCANTP_MSGTYPE_FRAME Or PCANTP_MSGTYPE_ISOTP Or &HFFFFFFFFUI
    End Enum


    ''' <summary>
    ''' Represents the flags common to all types of cantp_msg (see field "cantp_msg.msgdata.flags").
    ''' </summary>
    Public Enum cantp_msgflag As UInt32

        ''' <summary>
        ''' no flag
        ''' </summary>
        PCANTP_MSGFLAG_NONE = 0
        ''' <summary>
        ''' message Is the confirmation of a transmitted message
        ''' </summary>
        PCANTP_MSGFLAG_LOOPBACK = 1
        ''' <summary>
        ''' message Is a frame of a segmented ISO-TP message
        ''' </summary>
        PCANTP_MSGFLAG_ISOTP_FRAME = 2
        ''' <summary>
        ''' a QOVERRUN error occured while processing this message (confirmation via echo message is not confirmed)
        ''' </summary>
        PCANTP_MSGFLAG_QOVERRUN_OCCURED = 4
    End Enum


    ''' <summary>
    ''' Represents the flags of a CAN or CAN FD frame (must be used as flags for ex. EXTENDED|FD|BRS.) (see field "cantp_msg.can_info.can_msgtype")
    ''' </summary>
    Public Enum cantp_can_msgtype As UInt32

        ''' <summary>
        ''' The PCAN message Is a CAN Standard Frame (11-bit identifier)
        ''' </summary>
        PCANTP_CAN_MSGTYPE_STANDARD = TPCANMessageType.PCAN_MESSAGE_STANDARD
        ''' <summary>
        ''' The PCAN message Is a CAN Remote-Transfer-Request Frame
        ''' </summary>
        PCANTP_CAN_MSGTYPE_RTR = TPCANMessageType.PCAN_MESSAGE_RTR
        ''' <summary>
        ''' The PCAN message Is a CAN Extended Frame (29-bit identifier)
        ''' </summary>
        PCANTP_CAN_MSGTYPE_EXTENDED = TPCANMessageType.PCAN_MESSAGE_EXTENDED
        ''' <summary>
        ''' The PCAN message represents a FD frame in terms of CiA Specs
        ''' </summary>
        PCANTP_CAN_MSGTYPE_FD = TPCANMessageType.PCAN_MESSAGE_FD
        ''' <summary>
        ''' The PCAN message represents a FD bit rate switch (CAN data at a higher bit rate)
        ''' </summary>
        PCANTP_CAN_MSGTYPE_BRS = TPCANMessageType.PCAN_MESSAGE_BRS
        ''' <summary>
        ''' The PCAN message represents a FD error state indicator(CAN FD transmitter was error active)
        ''' </summary>
        PCANTP_CAN_MSGTYPE_ESI = TPCANMessageType.PCAN_MESSAGE_ESI
        ''' <summary>
        ''' The PCAN message represents an error frame.
        ''' </summary>
        PCANTP_CAN_MSGTYPE_ERRFRAME = TPCANMessageType.PCAN_MESSAGE_ERRFRAME
        ''' <summary>
        ''' The PCAN message represents a PCAN status message.
        ''' </summary>
        PCANTP_CAN_MSGTYPE_STATUS = TPCANMessageType.PCAN_MESSAGE_STATUS
        ''' <summary>
        ''' Echo messages reception status within a PCAN-Channel
        ''' </summary>
        PCANTP_CAN_MSGTYPE_ECHO = TPCANMessageType.PCAN_MESSAGE_ECHO
        ''' <summary>
        ''' Flag stating that the message is not a CAN Frame
        ''' </summary>
        PCANTP_CAN_MSGTYPE_FLAG_INFO = (TPCANMessageType.PCAN_MESSAGE_ERRFRAME Or TPCANMessageType.PCAN_MESSAGE_STATUS)
    End Enum


    ''' <summary>
    ''' Represents the type of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.msgtype").
    ''' </summary>
    Public Enum cantp_isotp_msgtype As UInt32

        ''' <summary>
        ''' Unknown (non-ISO-TP) message
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_UNKNOWN = &H0
        ''' <summary>
        ''' Diagnostic message (request Or confirmation)
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_DIAGNOSTIC = &H1
        ''' <summary>
        ''' Remote Diagnostic message (request Or confirmation)
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_REMOTE_DIAGNOSTIC = &H2
        ''' <summary>
        ''' Multi-Frame Message Is being received
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION_RX = &H10
        ''' <summary>
        ''' Multi-Frame Message Is being transmitted
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION_TX = &H20
        ''' <summary>
        ''' Multi-Frame Message Is being communicated (Tx Or Rx)
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_FLAG_INDICATION = (&H10 Or &H20)
        ''' <summary>
        ''' Mask to remove Indication flags
        ''' </summary>
        PCANTP_ISOTP_MSGTYPE_MASK_INDICATION = &HF

    End Enum


    ''' <summary>
    ''' Represents the addressing format of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.format").
    ''' </summary>
    Public Enum cantp_isotp_format As UInt32

        ''' <summary>
        ''' unknown adressing format
        ''' </summary>
        PCANTP_ISOTP_FORMAT_UNKNOWN = &HFF
        ''' <summary>
        ''' unsegmented CAN frame
        ''' </summary>
        PCANTP_ISOTP_FORMAT_NONE = &H0
        ''' <summary>
        ''' normal adressing format from ISO 15765-2
        ''' </summary>
        PCANTP_ISOTP_FORMAT_NORMAL = &H1
        ''' <summary>
        ''' fixed normal adressing format from ISO 15765-2
        ''' </summary>
        PCANTP_ISOTP_FORMAT_FIXED_NORMAL = &H2
        ''' <summary>
        ''' extended adressing format from ISO 15765-2
        ''' </summary>
        PCANTP_ISOTP_FORMAT_EXTENDED = &H3
        ''' <summary>
        ''' mixed adressing format from ISO 15765-2
        ''' </summary>
        PCANTP_ISOTP_FORMAT_MIXED = &H4
        ''' <summary>
        ''' enhanced adressing format from ISO 15765-3
        ''' </summary>
        PCANTP_ISOTP_FORMAT_ENHANCED = &H5

    End Enum


    ''' <summary>
    ''' Represents the type of target of an ISO-TP message (see field "cantp_msg.msgdata_isotp.netaddrinfo.target_type").
    ''' </summary>
    Public Enum cantp_isotp_addressing As UInt32

        ''' <summary>
        ''' Unknown adressing format
        ''' </summary>
        PCANTP_ISOTP_ADDRESSING_UNKNOWN = &H0
        ''' <summary>
        ''' Physical addressing ("peer to peer")
        ''' </summary>
        PCANTP_ISOTP_ADDRESSING_PHYSICAL = &H1
        ''' <summary>
        ''' Functional addressing ("peer to any")
        ''' </summary>
        PCANTP_ISOTP_ADDRESSING_FUNCTIONAL = &H2

    End Enum


    ''' <summary>
    ''' Represents the options of a message (mainly supported for ISO-TP message) (see field "cantp_msg.msgdata.options").
    ''' </summary>
    Public Enum cantp_option As UInt32

        ''' <summary>
        ''' 1 BYTE data stating if unsegmented (NON-ISO-TP) CAN frames can be received
        ''' </summary>
        PCANTP_OPTION_FRAME_FILTERING = cantp_parameter.PCANTP_PARAMETER_FRAME_FILTERING
        ''' <summary>
        ''' 1 BYTE data stating if CAN frame DLC uses padding Or Not
        ''' </summary>
        PCANTP_OPTION_CAN_DATA_PADDING = cantp_parameter.PCANTP_PARAMETER_CAN_DATA_PADDING
        ''' <summary>
        ''' 1 BYTE data stating the value used for CAN data padding
        ''' </summary>
        PCANTP_OPTION_CAN_PADDING_VALUE = cantp_parameter.PCANTP_PARAMETER_CAN_PADDING_VALUE
        ''' <summary>
        ''' 1 BYTE data stating the default priority value for normal fixed, mixed And enhanced addressing (default=6)
        ''' </summary>
        PCANTP_OPTION_J1939_PRIORITY = cantp_parameter.PCANTP_PARAMETER_J1939_PRIORITY
        ''' <summary>
        ''' 1 BYTE data stating if pending messages are displayed/hidden
        ''' </summary>
        PCANTP_OPTION_MSG_PENDING = cantp_parameter.PCANTP_PARAMETER_MSG_PENDING
        ''' <summary>
        ''' 1 BYTE data describing the block size parameter (BS)
        ''' </summary>
        PCANTP_OPTION_BLOCK_SIZE = cantp_parameter.PCANTP_PARAMETER_BLOCK_SIZE
        ''' <summary>
        ''' 2 BYTE data describing the transmit block size parameter (BS_TX)
        ''' </summary>
        PCANTP_OPTION_BLOCK_SIZE_TX = cantp_parameter.PCANTP_PARAMETER_BLOCK_SIZE_TX
        ''' <summary>
        ''' 1 BYTE data describing the seperation time parameter (STmin)
        ''' </summary>
        PCANTP_OPTION_SEPARATION_TIME = cantp_parameter.PCANTP_PARAMETER_SEPARATION_TIME
        ''' <summary>
        ''' 2 BYTE data describing the transmit seperation time parameter (STmin_TX)
        ''' </summary>
        PCANTP_OPTION_SEPARATION_TIME_TX = cantp_parameter.PCANTP_PARAMETER_SEPARATION_TIME_TX
        ''' <summary>
        ''' 4 BYTE data describing the Wait Frame Transmissions parameter.µ
        ''' </summary>
        PCANTP_OPTION_WFT_MAX = cantp_parameter.PCANTP_PARAMETER_WFT_MAX
        ''' <summary>
        ''' 1 BYTE data to set optimization options to improve delay between ISO-TP consecutive frames.
        ''' </summary>
        PCANTP_OPTION_SELFRECEIVE_LATENCY = cantp_parameter.PCANTP_PARAMETER_SELFRECEIVE_LATENCY

    End Enum


    ''' <summary>
    ''' Represents the status for a message whose transmission Is in progress.
    ''' </summary>
    Public Enum cantp_msgprogress_state As UInt32

        ''' <summary>
        ''' Message Is Not yet handled.
        ''' </summary>
        PCANTP_MSGPROGRESS_STATE_QUEUED = 0
        ''' <summary>
        ''' Message Is being processed (received Or transmitted).
        ''' </summary>
        PCANTP_MSGPROGRESS_STATE_PROCESSING = 1
        ''' <summary>
        ''' Message Is completed.
        ''' </summary>
        PCANTP_MSGPROGRESS_STATE_COMPLETED = 2
        ''' <summary>
        ''' Message Is unknown/Not found.
        ''' </summary>
        PCANTP_MSGPROGRESS_STATE_UNKNOWN = 3

    End Enum


    ''' <summary>
    ''' Represents the direction of a message's communication.
    ''' </summary>
    Public Enum cantp_msgdirection As UInt32

        ''' <summary>
        ''' Message Is being received.
        ''' </summary>
        PCANTP_MSGDIRECTION_RX = 0
        ''' <summary>
        ''' Message Is being transmitted.
        ''' </summary>
        PCANTP_MSGDIRECTION_TX = 1

    End Enum


#End Region


#Region "Structures"

    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ' miscellaneous message related definitions
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    ''' <summary>
    ''' Internal information about cantp_msg message (reserved).
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msginfo

        ''' <summary>
        ''' (read-only) size of the message object
        ''' </summary>
        Public size As UInt32
        ''' <summary>
        ''' (read-only) reserved
        ''' </summary>
        Public flags As cantp_msginfo_flag
        ''' <summary>
        ''' (read-only) reserved
        ''' </summary>
        Public extra As cantp_msginfo_extra
    End Structure

    ''' <summary>
    ''' Represents message's options to override.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgoption

        ''' <summary>
        ''' Name of the option.
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public name As cantp_option
        ''' <summary>
        ''' Value of the option.
        ''' </summary>
        Public value As UInt32
    End Structure

    ''' <summary>
    ''' Represents a list of message's options to override.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgoption_list

        ''' <summary>
        ''' Pointer to an array of cantp_msgoption.
        ''' Use it with with Marshal.Copy, Marshal.ReadInt32, Marshal.WriteInt32
        ''' (See special VB.Net functions)
        ''' </summary>
        Public buffer As IntPtr
        ''' <summary>
        ''' Number of options in the array.
        ''' </summary>
        Public count As UInt32
    End Structure


    ''' <summary>
    ''' Represents common CAN information.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_can_info

        ''' <summary>
        ''' CAN identifier
        ''' </summary>
        Public can_id As UInt32
        ''' <summary>
        ''' Types And flags of the CAN/CAN-FD frame (see cantp_can_msgtype)
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public can_msgtype As cantp_can_msgtype
        ''' <summary>
        ''' Data Length Code of the frame (0..15)
        ''' </summary>
        Public dlc As Byte
    End Structure

    ''' <summary>
    ''' Represents the network address information of an ISO-TP message.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_netaddrinfo

        ''' <summary>
        ''' ISO-TP message type
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public msgtype As cantp_isotp_msgtype
        ''' <summary>
        ''' ISO-TP format addressing
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public format As cantp_isotp_format
        ''' <summary>
        ''' ISO-TP addressing/target type
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public target_type As cantp_isotp_addressing
        ''' <summary>
        ''' source address
        ''' </summary>
        Public source_addr As UInt16
        ''' <summary>
        ''' target address
        ''' </summary>
        Public target_addr As UInt16
        ''' <summary>
        ''' extension address
        ''' </summary>
        Public extension_addr As Byte
    End Structure

    ''' <summary>
    ''' Represents a mapping between an ISO-TP network address information And a CAN ID.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_mapping

        ''' <summary>
        ''' Mapping's unique ID
        ''' </summary>
        Public uid As UIntPtr
        ''' <summary>
        ''' CAN ID mapped to the Network Address Information
        ''' </summary>
        Public can_id As UInt32
        ''' <summary>
        ''' CAN ID used for the flow control frame (formerly 'can_id_resp')
        ''' </summary>
        Public can_id_flow_ctrl As UInt32
        ''' <summary>
        ''' CAN frame msgtype (only PCANTP_CAN_MSGTYPE_STANDARD Or PCANTP_CAN_MSGTYPE_EXTENDED Is mandatory)
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public can_msgtype As cantp_can_msgtype
        ''' <summary>
        ''' Default CAN DLC value to use with segmented messages
        ''' </summary>
        Public can_tx_dlc As Byte
        ''' <summary>
        ''' ISO-TP Network Address Information
        ''' </summary>
        Public netaddrinfo As cantp_netaddrinfo
    End Structure

    ''' <summary>
    ''' Represents a message rule for filtering.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgrule

        ''' <summary>
        ''' Unique ID (read-only)
        ''' </summary>
        Public uid As UIntPtr
        ''' <summary>
        ''' Type of the message
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public type As cantp_msgtype
        ''' <summary>
        ''' common CAN information
        ''' </summary>
        Public can_info As cantp_can_info
        ''' <summary>
        ''' ISO-TP network address information
        ''' </summary>
        Public netaddrinfo As cantp_netaddrinfo
        ''' <summary>
        ''' specific options to override global CAN configuration
        ''' </summary>
        Public options As cantp_msgoption_list
        ''' <summary>
        ''' reserved
        ''' </summary>
        Public reserved As UIntPtr
    End Structure


    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ' Message definitions
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    ''' <summary>
    ''' Represents the content of a generic message.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgdata

        ''' <summary>
        ''' structure specific flags
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public flags As cantp_msgflag
        ''' <summary>
        ''' Length of the message
        ''' </summary>
        Public length As UInt32
        ''' <summary>
        ''' Data of the message
        ''' Array of bytes
        ''' Use it with Marshal.WriteByte, Marshal.ReadByte, Marshal.Copy...
        ''' See special VB.Net functions
        ''' </summary>
        Public data As IntPtr
        ''' <summary>
        ''' Network status
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public netstatus As cantp_netstatus
        ''' <summary>
        ''' Defines specific options to override global message configuration
        ''' Pointer to a cantp_msgoption_list
        ''' Use it with Marshal.PtrToStructure() And Marshal.StructureToPtr()
        ''' See special VB.Net functions
        ''' </summary>
        Public options As IntPtr
    End Structure

    ''' <summary>
    ''' Represents the content of a standard CAN frame.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgdata_can

        ''' <summary>
        ''' structure specific flags
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public flags As cantp_msgflag
        ''' <summary>
        ''' Length of the message (0..8)
        ''' </summary>
        Public length As UInt32
        ''' <summary>
        ''' Data of the message
        ''' Array of bytes
        ''' Use it with Marshal.WriteByte, Marshal.ReadByte, Marshal.Copy...
        ''' See special VB.Net functions
        ''' </summary>
        Public data As IntPtr
        ''' <summary>
        ''' Network status
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public netstatus As cantp_netstatus
        ''' <summary>
        ''' Defines specific options to override global CAN configuration (Not used yet)
        ''' Pointer to a cantp_msgoption_list
        ''' Use it with Marshal.PtrToStructure() And Marshal.StructureToPtr()
        ''' See special VB.Net functions
        ''' </summary>
        Public options As IntPtr
        ''' <summary>
        ''' Data of the message (DATA[0]..DATA[7])
        ''' </summary>
        <MarshalAs(UnmanagedType.ByValArray, SizeConst:=CanTpApi.PCANTP_MAX_LENGTH_CAN_STANDARD)>
        Public data_max As Byte()
    End Structure


    ''' <summary>
    ''' Represents the content of a CAN FD frame.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgdata_canfd

        ''' <summary>
        ''' structure specific flags
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public flags As cantp_msgflag
        ''' <summary>
        ''' Length of the message (0..64)
        ''' </summary>
        Public length As UInt32
        ''' <summary>
        ''' Data of the message
        ''' Array of bytes
        ''' Use it with Marshal.WriteByte, Marshal.ReadByte, Marshal.Copy...
        ''' See special VB.Net functions
        ''' </summary>
        Public data As IntPtr
        ''' <summary>
        ''' Network status
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public netstatus As cantp_netstatus
        ''' <summary>
        ''' Defines specific options to override global CAN configuration (Not used yet)
        ''' Pointer to a cantp_msgoption_list
        ''' Use it with Marshal.PtrToStructure() And Marshal.StructureToPtr()
        ''' See special VB.Net functions
        ''' </summary>
        Public options As IntPtr
        ''' <summary>
        ''' Data of the message (DATA[0]..DATA[63])
        ''' </summary>
        <MarshalAs(UnmanagedType.ByValArray, SizeConst:=CanTpApi.PCANTP_MAX_LENGTH_CAN_FD)>
        Public data_max As Byte()
    End Structure




    ''' <summary>
    ''' Represents the content of an ISO-TP message.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgdata_isotp

        ''' <summary>
        ''' structure specific flags
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public flags As cantp_msgflag
        ''' <summary>
        ''' Length of the data
        ''' </summary>
        Public length As UInt32
        ''' <summary>
        ''' Data
        ''' Data of the message
        ''' Array of bytes
        ''' Use it with Marshal.WriteByte, Marshal.ReadByte, Marshal.Copy...
        ''' See special VB.Net functions
        ''' </summary>
        Public data As IntPtr
        ''' <summary>
        ''' Network status
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public netstatus As cantp_netstatus
        ''' <summary>
        ''' Defines specific options to override global CAN configuration
        ''' Pointer to a cantp_msgoption_list
        ''' Use it with Marshal.PtrToStructure() And Marshal.StructureToPtr()
        ''' See special VB.Net functions
        ''' </summary>
        Public options As IntPtr
        ''' <summary>
        ''' ISO-TP network address information
        ''' </summary>
        Public netaddrinfo As cantp_netaddrinfo
        ''' <summary>
        ''' Reserved ISO-TP information
        ''' </summary>
        Public reserved As cantp_isotp_info
    End Structure

    ''' <summary>
    ''' A cantp_msg message Is a generic CAN related message than can be either a standard CAN frame,
    ''' a CAN FD frame, an ISO-TP message, etc.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msg

        ''' <summary>
        ''' type of the message
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public type As cantp_msgtype
        ''' <summary>
        ''' misc. read-only information
        ''' </summary>
        Public reserved As cantp_msginfo
        ''' <summary>
        ''' common CAN information
        ''' </summary>
        Public can_info As cantp_can_info
        ''' <summary>
        ''' data of the message
        ''' pointer to different structures depending on the message type
        ''' Use it with following properties (Msgdata_any_Copy, Msgdata_can_copy etc.)
        ''' Or with Marshal.PtrToStructure And Marshal.StructureToPtr
        ''' See special VB.Net functions
        ''' </summary>
        Private _msgdata As IntPtr
        ''' <summary>
        ''' get _msgdata field as a property
        ''' </summary>
        Public ReadOnly Property Msgdata() As IntPtr
            Get
                Return _msgdata
            End Get
        End Property

        ''' <summary>
        ''' get _msgdata field as a cantp_msgdata property
        ''' The fields of this property will Not be writable except (Not directly) those whose type Is "IntPtr".
        ''' Before using this property, check if Msgdata Is Not IntPtr.Zero
        ''' </summary>
        Public ReadOnly Property Msgdata_any_Copy() As cantp_msgdata
            Get
                Return CType(Marshal.PtrToStructure(_msgdata, GetType(cantp_msgdata)), cantp_msgdata)
            End Get
        End Property



        ''' <summary>
        ''' get _msgdata field as a cantp_msgdata_can property
        ''' The fields of this property will Not be writable except (Not directly) those whose type Is "IntPtr".
        ''' Before using this property, check if Msgdata Is Not IntPtr.Zero
        ''' </summary>
        Public ReadOnly Property Msgdata_can_Copy() As cantp_msgdata_can
            Get
                Return CType(Marshal.PtrToStructure(_msgdata, GetType(cantp_msgdata_can)), cantp_msgdata_can)
            End Get
        End Property


        ''' <summary>
        ''' get _msgdata field as a cantp_msgdata_canfd property
        ''' The fields of this property will Not be writable except (Not directly) those whose type Is "IntPtr".
        ''' Before using this property, check if Msgdata Is Not IntPtr.Zero
        ''' </summary>
        Public ReadOnly Property Msgdata_canfd_Copy() As cantp_msgdata_canfd
            Get
                Return CType(Marshal.PtrToStructure(_msgdata, GetType(cantp_msgdata_canfd)), cantp_msgdata_canfd)
            End Get
        End Property

        ''' <summary>
        ''' get _msgdata field as a cantp_msgdata_isotp property
        ''' The fields of this property will Not be writable except (Not directly) those whose type Is "IntPtr".
        ''' Before using this property, check if Msgdata Is Not IntPtr.Zero
        ''' </summary>
        Public ReadOnly Property Msgdata_isotp_Copy() As cantp_msgdata_isotp
            Get
                Return CType(Marshal.PtrToStructure(_msgdata, GetType(cantp_msgdata_isotp)), cantp_msgdata_isotp)
            End Get
        End Property

    End Structure


    ''' <summary>
    ''' Holds information on the communication progress of a message.
    ''' </summary>
    <StructLayout(LayoutKind.Sequential, Pack:=8)>
    Public Structure cantp_msgprogress

        ''' <summary>
        ''' State of the message
        ''' </summary>
        <MarshalAs(UnmanagedType.U4)>
        Public state As cantp_msgprogress_state
        ''' <summary>
        ''' Progress of the transmission/reception in percent.
        ''' </summary>
        Public percentage As Byte
        ''' <summary>
        ''' Buffer to get a copy of the pending message.
        ''' Pointer to a cantp_msg
        ''' If this Is Not needed, set it to IntPtr.Zero.
        ''' Use it in read-only mode with cantp_msg mp = (cantp_msg)Marshal.PtrToStructure(buffer, TypeOf(cantp_msg));
        ''' See special VB.Net functions
        ''' </summary>
        Public buffer As IntPtr

    End Structure



#End Region

#Region "PCANTP Api"
    Partial Public NotInheritable Class CanTpApi

#Region "bitrate"
        ' Represents the configuration for a CAN bit rate
        ' Note:
        '    * Each parameter And its value must be separated with a '='.
        '    * Each pair of parameter/value must be separated using ','.
        '
        ' Example:
        '    f_clock=80000000,nom_brp=10,nom_tseg1=5,nom_tseg2=2,nom_sjw=1,data_brp=4,data_tseg1=7,data_tseg2=2,data_sjw=1
        '
        Public Const PCANTP_BITRATE_CLOCK As String = PCANBasic.PCAN_BR_CLOCK
        Public Const PCANTP_BITRATE_CLOCK_MHZ As String = PCANBasic.PCAN_BR_CLOCK_MHZ
        Public Const PCANTP_BITRATE_NOM_BRP As String = PCANBasic.PCAN_BR_NOM_BRP
        Public Const PCANTP_BITRATE_NOM_TSEG1 As String = PCANBasic.PCAN_BR_NOM_TSEG1
        Public Const PCANTP_BITRATE_NOM_TSEG2 As String = PCANBasic.PCAN_BR_NOM_TSEG2
        Public Const PCANTP_BITRATE_NOM_SJW As String = PCANBasic.PCAN_BR_NOM_SJW
        Public Const PCANTP_BITRATE_NOM_SAMPLE As String = PCANBasic.PCAN_BR_NOM_SAMPLE
        Public Const PCANTP_BITRATE_DATA_BRP As String = PCANBasic.PCAN_BR_DATA_BRP
        Public Const PCANTP_BITRATE_DATA_TSEG1 As String = PCANBasic.PCAN_BR_DATA_TSEG1
        Public Const PCANTP_BITRATE_DATA_TSEG2 As String = PCANBasic.PCAN_BR_DATA_TSEG2
        Public Const PCANTP_BITRATE_DATA_SJW As String = PCANBasic.PCAN_BR_DATA_SJW
        Public Const PCANTP_BITRATE_DATA_SAMPLE As String = PCANBasic.PCAN_BR_DATA_SAMPLE
#End Region

#Region "PCANTP parameter values"

        Public Const PCANTP_VALUE_PARAMETER_OFF As Byte = PCANBasic.PCAN_PARAMETER_OFF
        Public Const PCANTP_VALUE_PARAMETER_ON As Byte = PCANBasic.PCAN_PARAMETER_ON
        ''' <summary>
        ''' Enable debug messages (only notices, informations, warnings, errors)
        ''' </summary>
        Public Const PCANTP_DEBUG_NOTICE As Byte = &HF4
        ''' <summary>
        ''' Enable debug messages (only informations, warnings, errors)
        ''' </summary>
        Public Const PCANTP_DEBUG_INFO As Byte = &HF3
        ''' <summary>
        ''' Enable debug messages (only warnings, errors)
        ''' </summary>
        Public Const PCANTP_DEBUG_WARNING As Byte = &HF2
        ''' <summary>
        ''' Enable debug messages (only errors)
        ''' </summary>
        Public Const PCANTP_DEBUG_ERROR As Byte = &HF1

#If (PCANTP_API_COMPATIBILITY_ISO_2004 = 0) Then
        ''' <summary>
        ''' No debug messages
        ''' </summary>
        Public Const PCANTP_DEBUG_NONE As Byte = &H0
        ''' <summary>
        ''' Puts CAN debug messages to stdout
        ''' </summary>
        Public Const PCANTP_DEBUG_CAN As Byte = &H1
        ''' <summary>
        ''' The Channel Is illegal Or Not available
        ''' </summary>
        Public Const PCANTP_CHANNEL_UNAVAILABLE As Byte = &H0
        ''' <summary>
        ''' The Channel Is available
        ''' </summary>
        Public Const PCANTP_CHANNEL_AVAILABLE As Byte = &H1
        ''' <summary>
        ''' The Channel Is valid, And Is being used
        ''' </summary>
        Public Const PCANTP_CHANNEL_OCCUPIED As Byte = &H2
        ''' <summary>
        ''' if set Flow Control frame shall Not use the WT flow status value
        ''' </summary>
        Public Const PCANTP_WFT_MAX_UNLIMITED As Byte = &H0
        ''' <summary>
        ''' an integer describing the Wait Frame Transmissions parameter.
        ''' </summary>
        Public Const PCANTP_WFT_MAX_DEFAULT As Byte = &H10
        ''' <summary>
        ''' hide messages with type PCANTP_MESSAGE_INDICATION from CANTP_Read function
        ''' </summary>
        Public Const PCANTP_MSG_PENDING_HIDE As Byte = &H0
        ''' <summary>
        ''' show messages with type PCANTP_MESSAGE_INDICATION from CANTP_Read function
        ''' </summary>
        Public Const PCANTP_MSG_PENDING_SHOW As Byte = &H1
        ''' <summary>
        ''' uses CAN frame data optimization
        ''' </summary>
        Public Const PCANTP_CAN_DATA_PADDING_NONE As Byte = &H0
        ''' <summary>
        ''' uses CAN frame data padding (default, i.e. CAN DLC As Byte = 8)
        ''' </summary>
        Public Const PCANTP_CAN_DATA_PADDING_ON As Byte = &H1
        ''' <summary>
        ''' default value used if CAN data padding Is enabled
        ''' </summary>
        Public Const PCANTP_CAN_DATA_PADDING_VALUE As Byte = &H55
#End If

        ''' <summary>
        ''' disable reception of unformatted (NON-ISO-TP) CAN frames (default)
        ''' only ISO 15765 messages will be received
        ''' </summary>
        Public Const PCANTP_FRAME_FILTERING_ISOTP As Byte = &H0
        ''' <summary>
        ''' enable reception of unformatted (NON-ISO-TP) CAN frames
        ''' received messages will be treated as either ISO 15765 Or as an unformatted CAN frame
        ''' </summary>
        Public Const PCANTP_FRAME_FILTERING_CAN As Byte = &H1
        ''' <summary>
        ''' enable reception of unformatted (NON-ISO-TP) CAN frames
        ''' received messages will be treated as ISO 15765, unformatted CAN frame, Or both (user will able to read fragmented CAN frames)
        ''' </summary>
        Public Const PCANTP_FRAME_FILTERING_VERBOSE As Byte = &H2

#If (PCANTP_API_COMPATIBILITY_ISO_2004 = 0) Then

        ''' <summary>
        ''' default priority for ISO-TP messages (only available fot normal fixed, mixed And enhanced addressing)
        ''' </summary>
        Public Const PCANTP_J1939_PRIORITY_DEFAULT As Byte = &H6
#End If
        ''' <summary>
        ''' maximum size of a CAN (non-FD) frame (8)
        ''' </summary>
        Public Const PCANTP_MAX_LENGTH_CAN_STANDARD As Byte = &H8
        ''' <summary>
        ''' maximum size of a CAN FD frame (64)
        ''' </summary>
        Public Const PCANTP_MAX_LENGTH_CAN_FD As Byte = &H40
        ''' <summary>
        ''' maximum size of an ISO-TP rev. 2004 frame (4095)
        ''' </summary>
        Public Const PCANTP_MAX_LENGTH_ISOTP2004 As UInt32 = &HFFF
        ''' <summary>
        ''' maximum size of an ISO-TP rev. 2016 frame (4294967295)
        ''' </summary>
        Public Const PCANTP_MAX_LENGTH_ISOTP2016 As UInt32 = &HFFFFFFFFUI
        ''' <summary>
        ''' maximum size before using virtual allocation for ISO-TP messages
        ''' </summary>
        Public Const PCANTP_MAX_LENGTH_ALLOC As UInt32 = &HFFFFFFUI
        ''' <summary>
        ''' default DLC for fragmented frames when transmiting ISO-TP messages
        ''' </summary>
        Public Const PCANTP_CAN_TX_DL_DEFAULT As Byte = PCANTP_MAX_LENGTH_CAN_STANDARD
        ''' <summary>
        ''' ISO-15765-2:2004(E)
        ''' </summary>
        Public Const PCANTP_ISO_REV_2004 As Byte = &H1
        ''' <summary>
        ''' ISO-15765-2:2016(E)
        ''' </summary>
        Public Const PCANTP_ISO_REV_2016 As Byte = &H2
        ''' <summary>
        ''' disables the feature "ignore received BlockSize value"
        ''' </summary>
        Public Const PCANTP_BLOCK_SIZE_TX_IGNORE As UInt32 = &HFFFF
        ''' <summary>
        ''' disables the feature "ignore received STMin value"
        ''' </summary>
        Public Const PCANTP_SEPERATION_TIME_TX_IGNORE As UInt32 = &HFFFF
        ''' <summary>
        ''' sets timeouts according to ISO-15765-2
        ''' </summary>
        Public Const PCANTP_ISO_TIMEOUTS_15765_2 As Byte = 0
        ''' <summary>
        ''' sets timeouts according to ISO-15765-4 (OBDII)
        ''' </summary>
        Public Const PCANTP_ISO_TIMEOUTS_15765_4 As Byte = 1
        ''' <summary>
        ''' no optimization (use this parameter if ECU requires strict respect of Minimum Separation Time)
        ''' </summary>
        Public Const PCANTP_SELFRECEIVE_LATENCY_NONE As Byte = 0
        ''' <summary>
        ''' (DEFAULT) fragmented self-receive frame mechanism Is ignored when STmin Is set to = 0xF3 And lower (less than 300µs)
        ''' </summary>
        Public Const PCANTP_SELFRECEIVE_LATENCY_LIGHT As Byte = 1
        ''' <summary>
        ''' as LIGHT value plus optimize self-receive latency by predicting the time to effectively write frames on bus
        ''' </summary>
        Public Const PCANTP_SELFRECEIVE_LATENCY_OPTIMIZED As Byte = 2
        ''' <summary>
        ''' (DEFAULT) maxinum number of items in the receive queue
        ''' </summary>
        Public Const PCANTP_MAX_RX_QUEUE_DEFAULT As UInt32 = 32767
        ''' <summary>
        ''' (DEFAULT) Network layer design is full-duplex
        ''' </summary>
        Public Const PCANTP_NETWORK_LAYER_FULL_DUPLEX As Byte = 0
        ''' <summary>
        ''' Network layer design is half-duplex (only one transmission/reception of the same NAI at a time)
        ''' </summary>
        Public Const PCANTP_NETWORK_LAYER_HALF_DUPLEX As Byte = 1

        ' Standard ISO-15765-2 values

        ''' <summary>
        ''' Default value for Separation time
        ''' </summary>
        Public Const PCANTP_STMIN_ISO_15765_2 As Byte = 10
        ''' <summary>
        ''' Default value for BlockSize
        ''' </summary>
        Public Const PCANTP_BS_ISO_15765_2 As Byte = 10
        ''' <summary>
        ''' Default value for Timeout Ar in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_AR_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for Timeout As in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_AS_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for Timeout Br in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_BR_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for Timeout Bs in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_BS_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for Timeout Cr in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_CR_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for Timeout Cs in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_CS_ISO_15765_2 As UInt32 = (1000 * 1000)
        ''' <summary>
        ''' Default value for timeout tolerance [0..100] (timeout = t * (1 + tolerance/100))
        ''' </summary>
        Public Const PCANTP_TIMEOUT_TOLERANCE As Byte = 0

        ' Standard ISO-15765-4 (OBDII) values

        ''' <summary>
        ''' OBDII value for Separation time
        ''' </summary>
        Public Const PCANTP_STMIN_ISO_15765_4 As Byte = 0
        ''' <summary>
        ''' OBDII value for BlockSize
        ''' </summary>
        Public Const PCANTP_BS_ISO_15765_4 As Byte = 0
        ''' <summary>
        ''' OBDII value for Timeout Ar in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_AR_ISO_15765_4 As UInt32 = (1000 * 33)
        ''' <summary>
        ''' OBDII value for Timeout As in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_AS_ISO_15765_4 As UInt32 = (1000 * 33)
        ''' <summary>
        ''' OBDII value for Timeout Br in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_BR_ISO_15765_4 As UInt32 = (1000 * 75)
        ''' <summary>
        ''' OBDII value for Timeout Bs in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_BS_ISO_15765_4 As UInt32 = (1000 * 75)
        ''' <summary>
        ''' OBDII value for Timeout Cr in µs
        ''' </summary>
        Public Const PCANTP_TIMEOUT_CR_ISO_15765_4 As UInt32 = (1000 * 150)
        ''' <summary>
        ''' OBDII value for Timeout Cs in µs (Cs+As < 50ms)
        ''' </summary>
        Public Const PCANTP_TIMEOUT_CS_ISO_15765_4 As UInt32 = (1000 * 17)

        ' Values for cfg_value

        ''' <summary>
        ''' Mask for the 29bits ISOTP priority value (stored in bits [0..2])
        ''' </summary>
        Public Const PCANTP_FLAG_MASK_PRIORITY As Byte = &H7
        ''' <summary>
        ''' Padding Is enabled
        ''' </summary>
        Public Const PCANTP_FLAG_PADDING_ON As Byte = &H8
        ''' <summary>
        ''' Message's indication is enabled
        ''' </summary>
        Public Const PCANTP_FLAG_INDICATION_ON As Byte = &H10
        ''' <summary>
        ''' Echo of fragmented frames Is enabled
        ''' </summary>
        Public Const PCANTP_FLAG_ECHO_FRAMES_ON As Byte = &H20
#End Region

#Region "constants"

        ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        ' Constants definition
        ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

        ''' <summary>
        ''' Mapping does Not require a Flow Control frame.
        ''' </summary>
        Public Const PCANTP_MAPPING_FLOW_CTRL_NONE As UInt32 = &HFFFFFFFFUI
#End Region

#Region "PCAN ISO-TP API Implementation"

        ''' <summary>
        ''' Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
        ''' </summary>
        ''' <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="baudrate">The CAN Hardware speed</param>
        ''' <param name="hw_type">NON PLUG-N-PLAY: The type Of hardware And operation mode</param>
        ''' <param name="io_port">NON PLUG-N-PLAY: The I/O address For the parallel port</param>
        ''' <param name="interrupt">NON PLUG-N-PLAY: Interrupt number Of the parallel port</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Initialize_2016")>
        Public Shared Function Initialize_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal baudrate As cantp_baudrate,
            <MarshalAs(UnmanagedType.U4)>
            ByVal hw_type As cantp_hwtype,
            ByVal io_port As UInt32,
            ByVal interrupt As UInt16) As cantp_status
        End Function

        ''' <summary>
        ''' Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
        ''' </summary>
        ''' <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="baudrate">The CAN Hardware speed</param>
        ''' <param name="hw_type">NON PLUG-N-PLAY: The type Of hardware And operation mode</param>
        ''' <param name="io_port">NON PLUG-N-PLAY: The I/O address For the parallel port</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function Initialize_2016(
            ByVal channel As cantp_handle,
            ByVal baudrate As cantp_baudrate,
            ByVal hw_type As cantp_hwtype,
            ByVal io_port As UInt32) As cantp_status

            Return Initialize_2016(channel, baudrate, hw_type, io_port, 0)
        End Function

        ''' <summary>
        ''' Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
        ''' </summary>
        ''' <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="baudrate">The CAN Hardware speed</param>
        ''' <param name="hw_type">NON PLUG-N-PLAY: The type Of hardware And operation mode</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function Initialize_2016(
             ByVal channel As cantp_handle,
             ByVal baudrate As cantp_baudrate,
            ByVal hw_type As cantp_hwtype) As cantp_status

            Return Initialize_2016(channel, baudrate, hw_type, 0, 0)
        End Function

        ''' <summary>
        ''' Initializes a PCANTP-Client based on a CANTP handle (without CAN-FD support)
        ''' </summary>
        ''' <remarks>Only one PCANTP-Client can be initialized per CAN-Channel</remarks>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="baudrate">The CAN Hardware speed</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function Initialize_2016(
             ByVal channel As cantp_handle,
             ByVal baudrate As cantp_baudrate) As cantp_status

            Return Initialize_2016(channel, baudrate, CType(0, cantp_hwtype), 0, 0)
        End Function


        ''' <summary>
        ''' Initializes a PCANTP-Client based on a CANTP Channel (including CAN-FD support)
        ''' </summary>
        ''' <param name="channel">"The handle of a FD capable PCAN Channel"</param>
        ''' <param name="bitrate_fd">"The speed for the communication (FD bit rate string)"</param>
        ''' <remarks>Only one PCANTP-Client can be initialized per CAN-Channel.
        ''' See PCAN_BR_* values
        ''' * Parameter And values must be separated by '='
        ''' * Couples of Parameter/value must be separated by ','
        ''' * Following Parameter must be filled out: f_clock, data_brp, data_sjw, data_tseg1, data_tseg2,
        '''   nom_brp, nom_sjw, nom_tseg1, nom_tseg2.
        ''' * Following Parameters are optional (Not used yet): data_ssp_offset, nom_samp
        ''' </remarks>
        ''' <example>f_clock_mhz=80,nom_brp=0,nom_tseg1=13,nom_tseg2=0,nom_sjw=0,data_brp=0,
        ''' data_tseg1=13,data_tseg2=0,data_sjw=0</example>
        ''' <returns>"A cantp_status code"</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_InitializeFD_2016")>
        Public Shared Function InitializeFD_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByVal bitrate_fd As cantp_bitrate) As cantp_status
        End Function


        ''' <summary>
        ''' Uninitializes a PCANTP-Client initialized before
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Uninitialize_2016")>
        Public Shared Function Uninitialize_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle) As cantp_status
        End Function

        ''' <summary>
        ''' Resets the receive And transmit queues of a PCANTP-Client
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Reset_2016")>
        Public Shared Function Reset_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle) As cantp_status
        End Function

        ''' <summary>
        ''' Gets information about the internal BUS status of a PCANTP-Channel.
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetCanBusStatus_2016")>
        Public Shared Function GetCanBusStatus_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle) As cantp_status
        End Function

        ''' <summary>
        ''' Reads a PCANTP message from the receive queue of a PCANTP-Client
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
        ''' <param name="timestamp_buffer">A cantp_timestamp structure buffer to get
        ''' the reception time of the message. </param>
        ''' <param name="msg_type">A cantp_msgtype structure buffer to filter the message to read.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Read_2016")>
        Public Shared Function Read_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg,
            ByRef timestamp_buffer As cantp_timestamp,
            <MarshalAs(UnmanagedType.U4)>
            ByVal msg_type As cantp_msgtype) As cantp_status
        End Function

        ''' <summary>
        ''' Reads a PCANTP message from the receive queue of a PCANTP-Client
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
        ''' <param name="timestamp_buffer">A cantp_timestamp structure buffer to get
        ''' the reception time of the message. </param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function Read_2016(
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg,
            ByRef timestamp_buffer As UInt64) As cantp_status

            Return Read_2016(channel, msg_buffer, timestamp_buffer, cantp_msgtype.PCANTP_MSGTYPE_ANY)
        End Function

        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Read_2016")>
        Private Shared Function Read_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg,
            ByVal timestamp_buffer As IntPtr,
            <MarshalAs(UnmanagedType.U4)>
            ByVal msg_type As cantp_msgtype) As cantp_status
        End Function

        ''' <summary>
        ''' Reads a PCANTP message from the receive queue of a PCANTP-Client
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msg_buffer">A cantp_msg structure buffer to store the PUDS message</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function Read_2016(
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg) As cantp_status
            Return Read_2016(channel, msg_buffer, IntPtr.Zero, cantp_msgtype.PCANTP_MSGTYPE_ANY)
        End Function

        ''' <summary>
        ''' Gets progress information on a specific message
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msg_buffer">A cantp_msg structure buffer matching the message to look for</param>
        ''' <param name="direction">The expected direction (incoming/outgoing) of the message</param>
        ''' <param name="msgprogress_buffer">A cantp_msgprogress structure buffer to store the progress information</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetMsgProgress_2016")>
        Public Shared Function GetMsgProgress_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg,
            <MarshalAs(UnmanagedType.U4)>
            ByVal direction As cantp_msgdirection,
            ByRef msgprogress_buffer As cantp_msgprogress) As cantp_status
        End Function

        ''' <summary>
        ''' Adds a PCANTP message to the Transmit queue
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msg_buffer">A cantp_msg buffer with the message to be sent</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_Write_2016")>
        Public Shared Function Write_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef msg_buffer As cantp_msg) As cantp_status
        End Function

        ''' <summary>
        ''' Retrieves a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to get</param>
        ''' <param name="StringBuffer">Buffer for the parameter value</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetValue_2016")>
        Public Shared Function GetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByVal StringBuffer As StringBuilder,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Retrieves a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to get</param>
        ''' <param name="NumericBuffer">Numeric buffer for the parameter value</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetValue_2016")>
        Public Shared Function GetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByRef NumericBuffer As UInt32,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Retrieves a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to get</param>
        ''' <param name="NumericBuffer">Numeric buffer for the parameter value</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetValue_2016")>
        Public Shared Function GetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByRef NumericBuffer As UInt64,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Retrieves a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to get</param>
        ''' <param name="Buffer">Buffer for the parameter value</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetValue_2016")>
        Public Shared Function GetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            <MarshalAs(UnmanagedType.LPArray)>
            <Out> ByVal Buffer As Byte(),
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Configures Or sets a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to set</param>
        ''' <param name="NumericBuffer">Buffer with the value to be set</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_SetValue_2016")>
        Public Shared Function SetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByRef NumericBuffer As UInt32,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Configures Or sets a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to set</param>
        ''' <param name="NumericBuffer">Buffer with the value to be set</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_SetValue_2016")>
        Public Shared Function SetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByRef NumericBuffer As UInt64,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Configures Or sets a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to set</param>
        ''' <param name="StringBuffer">Buffer with the value to be set</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_SetValue_2016")>
        Public Shared Function SetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            <MarshalAs(UnmanagedType.LPStr, SizeParamIndex:=3)>
            ByVal StringBuffer As String,
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Configures Or sets a PCANTP-Client value
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="parameter">The cantp_parameter parameter to set</param>
        ''' <param name="Buffer">Buffer with the value to be set</param>
        ''' <param name="BufferLength">Size in bytes of the buffer</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_SetValue_2016")>
        Public Shared Function SetValue_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.U4)>
            ByVal parameter As cantp_parameter,
            ByVal Buffer As Byte(),
            ByVal BufferLength As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Adds a user-defined PCAN-TP mapping between CAN ID And Network Address Information
        ''' </summary>
        ''' <remark>
        ''' Defining a mapping enables ISO-TP communication with 11BITS CAN ID Or
        ''' with opened Addressing Formats (Like PCANTP_ISOTP_FORMAT_NORMAL Or PCANTP_ISOTP_FORMAT_EXTENDED).
        ''' </remark>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="mapping">Buffer to the mapping to be added</param>
        ''' <returns>A cantp_status code : PCANTP_STATUS_OK Is returned on success,
        ''' PCANTP_STATUS_WRONG_PARAM states invalid Network Address Information parameters.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_AddMapping_2016")>
        Public Shared Function AddMapping_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef mapping As cantp_mapping) As cantp_status
        End Function

        ''' <summary>
        ''' Removes all user-defined PCAN-TP mappings corresponding to a CAN ID
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="can_id">The mapped CAN ID to search for</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_RemoveMappings_2016")>
        Public Shared Function RemoveMappings_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByVal can_id As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Removes a user-defined PCAN-TP mapping between a CAN ID And Network Address Information
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="uid">The identifier of the mapping</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_RemoveMapping_2016")>
        Public Shared Function RemoveMapping_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByVal uid As UIntPtr) As cantp_status
        End Function


        ''' <summary>
        ''' Retrieves all the mappings defined for a PCAN-TP channel
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="buffer">A buffer to store an array of cantp_mapping</param>
        ''' <param name="buffer_length">[In]The number of cantp_mapping element the buffer can store. of the mapping.
        ''' [Out]The actual number of element copied in the buffer.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success,
        ''' PCANTP_STATUS_PARAM_BUFFER_TOO_SMALL if the number of mappings exceeds buffer_length.
        ''' </returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetMappings_2016")>
        Public Shared Function GetMappings_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            <MarshalAs(UnmanagedType.LPArray, SizeParamIndex:=2)>
            <Out> ByVal buffer As cantp_mapping(),
            ByRef buffer_length As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Adds an entry to the CAN-ID white-list filtering.
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="can_id_from">The lowest CAN ID wanted to be received</param>
        ''' <param name="can_id_to">The highest CAN ID wanted to be received</param>
        ''' <param name="ignore_can_msgtype">States if filter should check the CAN message type.</param>
        ''' <param name="can_msgtype">If ignore_can_msgtype Is false, the value states which types of CAN frame should be allowed.</param>
        ''' <returns>A cantp_status code : PCANTP_STATUS_OK Is returned on success, And PCANTP_STATUS_ALREADY_INITIALIZED otherwise.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_AddFiltering_2016")>
        Public Shared Function AddFiltering_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByVal can_id_from As UInt32,
            ByVal can_id_to As UInt32,
            <MarshalAs(UnmanagedType.U1)>
            ByVal ignore_can_msgtype As Boolean,
            <MarshalAs(UnmanagedType.U4)>
            ByVal can_msgtype As cantp_can_msgtype) As cantp_status
        End Function

        ''' <summary>
        ''' Removes an entry from the CAN-ID white-list filtering.
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="can_id_from">The lowest CAN ID wanted to be removed</param>
        ''' <param name="can_id_to">The highest CAN ID wanted to be removed</param>
        ''' <param name="ignore_can_msgtype">States if filter should check the CAN message type.</param>
        ''' <param name="can_msgtype">If ignore_can_msgtype Is false, the value states which types of CAN frame should be allowed.</param>
        ''' <returns>A cantp_status code : PCANTP_STATUS_OK Is returned on success, And PCANTP_STATUS_ALREADY_INITIALIZED otherwise.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_RemoveFiltering_2016")>
        Public Shared Function RemoveFiltering_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByVal can_id_from As UInt32,
            ByVal can_id_to As UInt32,
            <MarshalAs(UnmanagedType.U1)>
            ByVal ignore_can_msgtype As Boolean,
            <MarshalAs(UnmanagedType.U4)>
            ByVal can_msgtype As cantp_can_msgtype) As cantp_status
        End Function

        ''' <summary>
        ''' Adds an entry to the message's rules.
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="msgrule">The rule to insert.</param>
        ''' <returns>A cantp_status code : PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_AddMsgRule_2016")>
        Public Shared Function AddMsgRule_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal channel As cantp_handle,
            ByRef msgrule As cantp_msgrule) As cantp_status
        End Function

        ''' <summary>
        ''' Removes an entry from the message's rules.
        ''' </summary>
        ''' <param name="channel">A PCANTP Channel Handle representing a PCANTP-Client</param>
        ''' <param name="uid">The unique ID of the rule to remove.</param>
        ''' <returns>A cantp_status code : PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_RemoveMsgRule_2016")>
        Public Shared Function RemoveMsgRule_2016(
             <MarshalAs(UnmanagedType.U4)>
             ByVal channel As cantp_handle,
             ByVal uid As UIntPtr) As cantp_status
        End Function

        ''' <summary>
        ''' Returns a descriptive text of a given cantp_status error
        ''' code, in any desired language
        ''' </summary>
        ''' <remarks>The current languages available for translation are:
        ''' Neutral (0x00), German (0x07), English (0x09), Spanish (0x0A),
        ''' Italian (0x10) And French (0x0C)</remarks>
        ''' <param name="err">A cantp_status error code</param>
        ''' <param name="language">Indicates a 'Primary language ID'</param>
        ''' <param name="StringBuffer">Buffer for a null terminated char array</param>
        ''' <param name="BufferSize">Buffer size</param>
        ''' <returns>A cantp_status error code</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_GetErrorText_2016")>
        Public Shared Function GetErrorText_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal err As cantp_status,
            ByVal language As UInt16,
            ByVal StringBuffer As StringBuilder,
            ByVal BufferSize As UInt32) As cantp_status
        End Function


        ''' <summary>
        ''' Allocates a PCAN-TP message based on the given type
        ''' </summary>
        ''' <param name="msg_buffer">A cantp_msg structure buffer (it will be freed if required)</param>
        ''' <param name="type">Type of the message to allocate</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDataAlloc_2016")>
        Public Shared Function MsgDataAlloc_2016(
            ByRef msg_buffer As cantp_msg,
            <MarshalAs(UnmanagedType.U4)>
            ByVal type As cantp_msgtype) As cantp_status
        End Function

        ''' <summary>
        ''' Initializes an allocated PCAN-TP message
        ''' </summary>
        ''' <param name="msg_buffer">An allocated cantp_msg structure buffer</param>
        ''' <param name="can_id">CAN identifier (ISO-TP message may ignore this parameter And use PCANTP_MAPPING_FLOW_CTRL_NONE (-1))</param>
        ''' <param name="can_msgtype">Combination of CAN message types (Like "extended CAN ID", "FD", "RTR", etc. flags)</param>
        ''' <param name="data_length">Length of the data</param>
        ''' <param name="data">A buffer to initialize the message's data with. If NULL, message's data is initialized with zeros.</param>
        ''' <param name="netaddrinfo">Network address information of the ISO-TP message (only valid with an ISO-TP message)</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDataInit_2016")>
        Public Shared Function MsgDataInit_2016(
            ByRef msg_buffer As cantp_msg,
            ByVal can_id As UInt32,
            <MarshalAs(UnmanagedType.U4)>
            ByVal can_msgtype As cantp_can_msgtype,
            ByVal data_length As UInt32,
            ByVal data As Byte(),
            ByRef netaddrinfo As cantp_netaddrinfo) As cantp_status
        End Function

        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDataInit_2016")>
        Private Shared Function MsgDataInit_2016(
            ByRef msg_buffer As cantp_msg,
            ByVal can_id As UInt32,
            <MarshalAs(UnmanagedType.U4)>
            ByVal can_msgtype As cantp_can_msgtype,
            ByVal data_length As UInt32,
            ByVal data As Byte(),
            ByVal netaddrinfo As IntPtr) As cantp_status
        End Function

        ''' <summary>
        ''' Initializes an allocated PCAN-TP message
        ''' </summary>
        ''' <param name="msg_buffer">An allocated cantp_msg structure buffer</param>
        ''' <param name="can_id">CAN identifier (ISO-TP message may ignore this parameter And use PCANTP_MAPPING_FLOW_CTRL_NONE (-1))</param>
        ''' <param name="can_msgtype">Combination of CAN message types (Like "extended CAN ID", "FD", "RTR", etc. flags)</param>
        ''' <param name="data_length">Length of the data</param>
        ''' <param name="data">A buffer to initialize the message's data with. If NULL, message's data is initialized with zeros.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        Public Shared Function MsgDataInit_2016(
            ByRef msg_buffer As cantp_msg,
            ByVal can_id As UInt32,
            ByVal can_msgtype As cantp_can_msgtype,
            ByVal data_length As UInt32,
            ByVal data As Byte()) As cantp_status
            Return MsgDataInit_2016(msg_buffer, can_id, can_msgtype, data_length, data, IntPtr.Zero)
        End Function

        ''' <summary>
        ''' Initializes a number of options for the PCAN-TP message that will override the channel's parameter(s)
        ''' </summary>
        ''' <param name="msg_buffer">An allocated cantp_msg structure buffer.</param>
        ''' <param name="nb_options">Number of options to initialize.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDataInitOptions_2016")>
        Public Shared Function MsgDataInitOptions_2016(
            ByRef msg_buffer As cantp_msg,
            ByVal nb_options As UInt32) As cantp_status
        End Function

        ''' <summary>
        ''' Deallocates a PCAN-TP message
        ''' </summary>
        ''' <param name="msg_buffer">An allocated cantp_msg structure buffer.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDataFree_2016")>
        Public Shared Function MsgDataFree_2016(
            ByRef msg_buffer As cantp_msg) As cantp_status
        End Function

        ' we do not publish this function because the result must be a byte,
        ' And applying 'Not' on this result does not work.
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgEqual_2016")>
        Private Shared Function _MsgEqual_2016(
            ByRef msg_buffer1 As cantp_msg,
            ByRef msg_buffer2 As cantp_msg,
            <MarshalAs(UnmanagedType.I1)>
            ByVal ignoreSelfReceiveFlag As Boolean) As Byte
        End Function

        ''' <summary>
        ''' Checks if two PCAN-TP messages are equal.
        ''' If one message Is the indication of an incoming/outgoing ISO-TP message, the actual data-content will Not be compared.
        ''' In that case the function checks if the messages' network address information matches.
        ''' </summary>
        ''' <param name="msg_buffer1">A cantp_msg structure buffer.</param>
        ''' <param name="msg_buffer2">Another cantp_msg structure buffer to compare with first parameter.</param>
        ''' <param name="ignoreSelfReceiveFlag">States if comparison should ignore loopback flag
        ''' (i.e if true the function will return true when comparing a request And its loopback confirmation).</param>
        ''' <returns>A boolean stating if the cantp_msgs are equal.</returns>
        Public Shared Function MsgEqual_2016(
            ByRef msg_buffer1 As cantp_msg,
            ByRef msg_buffer2 As cantp_msg,
            ByVal ignoreSelfReceiveFlag As Boolean) As Boolean
            Return CType(_MsgEqual_2016(msg_buffer1, msg_buffer2, ignoreSelfReceiveFlag), Boolean)
        End Function


        ''' <summary>
        ''' Copies a PCAN-TP message to another buffer.
        ''' </summary>
        ''' <param name="msg_buffer_dst">A cantp_msg structure buffer to store the copied message.</param>
        ''' <param name="msg_buffer_src">The cantp_msg structure buffer used as the source.</param>
        ''' <returns>A cantp_status code. PCANTP_STATUS_OK Is returned on success</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgCopy_2016")>
        Public Shared Function MsgCopy_2016(
            ByRef msg_buffer_dst As cantp_msg,
            ByRef msg_buffer_src As cantp_msg) As cantp_status
        End Function


        ''' <summary>
        ''' Converts a CAN DLC to its corresponding length.
        ''' </summary>
        ''' <param name="dlc">The Data Length Code (DLC) to convert.</param>
        ''' <returns>The corresponding length of the dlc parameter.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgDlcToLength_2016")>
        Public Shared Function MsgDlcToLength_2016(
            ByVal dlc As Byte) As UInt32
        End Function

        ''' <summary>
        ''' Converts a data length to a corresponding CAN DLC.
        ''' Note the returned DLC can hold more data that the requested length.
        ''' </summary>
        ''' <param name="length">The length to convert.</param>
        ''' <returns>The smallest DLC that can hold the requested length (0x00-0x0F).</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_MsgLengthToDlc_2016")>
        Public Shared Function MsgLengthToDlc_2016(
            ByVal length As UInt32) As Byte
        End Function

        ''' <summary>
        ''' Lists the subtypes contained in the PCAN-TP status.
        ''' </summary>
        ''' <param name="status">The status to analyze.</param>
        ''' <returns>An aggregation of cantp_statustype values.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_StatusListTypes_2016")>
        Public Shared Function StatusListTypes_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal status As cantp_status) As cantp_statustype
        End Function

        ''' <summary>
        ''' Retrieves the value of a cantp_status subtype (Like cantp_errstatus, cantp_busstatus, etc.).
        ''' </summary>
        ''' <param name="status">The status to analyze.</param>
        ''' <param name="type">The type of status to filter.</param>
        ''' <returns>The value of the enumeration matching the requested type.</returns>
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_StatusGet_2016")>
        Public Shared Function StatusGet_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal status As cantp_status,
            <MarshalAs(UnmanagedType.U4)>
            ByVal type As cantp_statustype) As UInt32
        End Function

        ' we do not publish this function because the result must be a byte,
        ' And applying 'Not' on this result does not work.
        <DllImport("PCAN-ISO-TP.dll", EntryPoint:="CANTP_StatusIsOk_2016")>
        Private Shared Function _StatusIsOk_2016(
            <MarshalAs(UnmanagedType.U4)>
            ByVal status As cantp_status,
            <MarshalAs(UnmanagedType.U4)>
            ByVal status_expected As cantp_status,
            <MarshalAs(UnmanagedType.I1)>
            ByVal strict As Boolean) As Byte
        End Function

        ''' <summary>
        ''' Checks if a status matches an expected result.
        ''' </summary>
        ''' <param name="status">The status to analyze.</param>
        ''' <param name="status_expected">The expected status.</param>
        ''' <param name="strict">Enable strict mode. Strict mode ensures that bus Or extra information are the same.</param>
        ''' <returns>Returns true if the status matches expected parameter.</returns>
        Public Shared Function StatusIsOk_2016(
            ByVal status As cantp_status,
            ByVal status_expected As cantp_status,
            ByVal strict As Boolean) As Boolean
            Return CType(_StatusIsOk_2016(status, status_expected, strict), Boolean)
        End Function

        ''' <summary>
        ''' Checks if a status matches an expected result in non-strict mode
        ''' (Strict mode ensures that bus Or extra information are the same).
        ''' </summary>
        ''' <param name="status">The status to analyze.</param>
        ''' <param name="status_expected">The expected status (default Is PCANTP_STATUS_OK).</param>
        ''' <returns>Returns true if the status matches expected parameter.</returns>
        Public Shared Function StatusIsOk_2016(
            ByVal status As cantp_status,
            ByVal status_expected As cantp_status
            ) As Boolean
            Return StatusIsOk_2016(status, status_expected, False)
        End Function

        ''' <summary>
        ''' Checks if a status matches PCANTP_STATUS_OK in non-strict mode
        ''' (Strict mode ensures that bus Or extra information are the same).
        ''' </summary>
        ''' <param name="status">The status to analyze.</param>
        ''' <returns>Returns true if the status matches expected parameter.</returns>
        Public Shared Function StatusIsOk_2016(
            ByVal status As cantp_status
            ) As Boolean
            Return StatusIsOk_2016(status, cantp_status.PCANTP_STATUS_OK, False)
        End Function

#Region "Special VB.Net functions, examples of how to use the structures IntPtr fields with Marshaling operations"
        ''' <summary>
        ''' Get an option value of an option list
        ''' </summary>
        ''' <param name="l">option list</param>
        ''' <param name="number">number of the option</param>
        ''' <param name="opt">where to store a copy of the option</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Private Shared Function getOption_2016(ByRef l As cantp_msgoption_list,
                                               ByVal number As Integer,
                                               ByRef opt As cantp_msgoption) As Boolean

            opt = New cantp_msgoption()
            If number < l.count And l.buffer <> IntPtr.Zero Then
                opt.name = CType(Marshal.ReadInt32(l.buffer, number * 8), cantp_option)
                opt.value = CType(Marshal.ReadInt32(l.buffer, number * 8 + 4), UInt32)
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' Modifies an option
        ''' </summary>
        ''' <param name="l">option list</param>
        ''' <param name="number">number of the option</param>
        ''' <param name="opt">value to set to the option</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Private Shared Function setOption_2016(ByRef l As cantp_msgoption_list,
                                               ByVal number As Integer,
                                               ByRef opt As cantp_msgoption) As Boolean

            If number < l.count And l.buffer <> IntPtr.Zero Then
                Marshal.WriteInt32(l.buffer, number * 8, CType(opt.name, Int32))
                Marshal.WriteInt32(l.buffer, number * 8 + 4, CType(opt.value, Int32))
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' in a progress structure, allocate a buffer to receive a copy of the pending message.
        ''' when finished, must be released with freeProgressBuffer_2016()
        ''' </summary>
        ''' <param name="prog">progress structure</param>
        ''' <param name="type">type of the pending message</param>
        ''' <returns>resulting status</returns>
        Public Shared Function allocProgressBuffer_2016(ByRef prog As cantp_msgprogress, ByVal type As cantp_msgtype) As cantp_status
            Dim pendingMsg As cantp_msg
            Dim status As cantp_status = CanTpApi.MsgDataAlloc_2016(pendingMsg, type)
            If status = cantp_status.PCANTP_STATUS_OK Then
                Try
                    ' Initialize unmanaged memory to hold the struct.
                    prog.buffer = Marshal.AllocHGlobal(Marshal.SizeOf(pendingMsg))
                Catch
                    prog.buffer = IntPtr.Zero
                End Try
                If prog.buffer <> IntPtr.Zero Then
                    Marshal.StructureToPtr(pendingMsg, prog.buffer, True)
                Else
                    status = cantp_status.PCANTP_STATUS_NO_MEMORY
                End If
            End If
            Return status
        End Function

        ''' <summary>
        ''' free the buffer receiving the pending message in a progress structure,
        ''' if allocated with allocProgressBuffer_2016()
        ''' </summary>
        ''' <param name="prog">progress structure</param>
        Public Shared Sub freeProgressBuffer_2016(ByRef prog As cantp_msgprogress)
            ' Free unmanaged memory holding the struct.
            If prog.buffer <> IntPtr.Zero Then
                Marshal.FreeHGlobal(prog.buffer)
                prog.buffer = IntPtr.Zero
            End If
        End Sub

        ''' <summary>
        ''' get the current pending message of a progress structure.
        ''' </summary>
        ''' <param name="prog">progress structure</param>
        ''' <param name="pendmsg">pending message</param>
        ''' <returns>true if ok, false if not ok</returns>
        Public Shared Function getProgressBuffer_2016(ByRef prog As cantp_msgprogress, ByRef pendmsg As cantp_msg) As Boolean
            If prog.buffer <> IntPtr.Zero Then
                pendmsg = CType(Marshal.PtrToStructure(prog.buffer, GetType(cantp_msg)), cantp_msg)
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' get the flags of a message
        ''' </summary>
        ''' <param name="msg">Message structure</param>
        ''' <param name="flags">value of the flags</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getFlags_2016(ByRef msg As cantp_msg, ByRef flags As cantp_msgflag) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                flags = msg.Msgdata_any_Copy.flags
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' set the length of a message
        ''' use carefully
        ''' </summary>
        ''' <param name="len">value to set</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function setLength_2016(ByRef msg As cantp_msg, ByVal len As UInt32) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = CType(Marshal.PtrToStructure(msg.Msgdata, GetType(cantp_msgdata)), cantp_msgdata)
                msgdata.length = len
                Marshal.StructureToPtr(msgdata, msg.Msgdata, True)
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' get the length of a message
        ''' </summary>
        ''' <param name="msg">Message structure</param>
        ''' <param name="len">value of the length</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getLength_2016(ByRef msg As cantp_msg, ByRef len As UInt32) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                len = msg.Msgdata_any_Copy.length
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' set a byte of the data of a message
        ''' </summary>
        ''' <param name="msg">Message structure to modify.</param>
        ''' <param name="i">offset of the byte, cannot be more than 2147483647</param>
        ''' <param name="val"> value to set</param>
        ''' <returns>true if ok, false if not ok</returns>
        Public Shared Function setData_2016(ByRef msg As cantp_msg,
                                            ByVal i As Integer,
                ByVal val As Byte) As Boolean

            If msg.Msgdata <> IntPtr.Zero Then

                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.length > 0 And msgdata.data <> IntPtr.Zero And i >= 0 And i < msgdata.length Then
                    Marshal.WriteByte(msgdata.data, i, val)
                    Return True
                End If
            End If
            Return False
        End Function
        ''' <summary>
        ''' set bytes of the data of a message from a contiguous byte array
        ''' </summary>
        ''' <param name="msg">Message structure to modify.</param>
        ''' <param name="i">offset of the first byte in the message, cannot be more than 2147483647</param>
        ''' <param name="nb">number of bytes</param>
        ''' <param name="vals">values to set, from offset 0</param>
        ''' <returns>true if ok, false if not ok</returns>
        Public Shared Function setData_2016(ByRef msg As cantp_msg, ByVal i As Integer, ByVal vals As Byte(), ByVal nb As Integer) As Boolean

            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.length > 0 And msgdata.data <> IntPtr.Zero And i >= 0 And i + nb - 1 < msgdata.length And vals.Length >= nb Then
                    If i = 0 Then
                        Marshal.Copy(vals, 0, msgdata.data, nb)
                    Else
                        For j As Integer = 0 To nb - 1
                            Marshal.WriteByte(msgdata.data, j + i, vals(j))
                        Next j
                    End If
                    Return True
                End If
            End If
            Return False
        End Function

        ''' <summary>
        ''' get a byte of data of a message
        ''' </summary>
        ''' <param name="msg">Message structure containing data.</param>
        ''' <param name="i">offset of the byte (byte number)</param>
        ''' <param name="val">value of the byte of data</param>
        ''' <returns>true if ok, false if not ok</returns>
        Public Shared Function getData_2016(ByRef msg As cantp_msg,
                                            ByVal i As Integer,
                ByRef val As Byte) As Boolean

            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.length > 0 And msgdata.data <> IntPtr.Zero And i >= 0 And i < msgdata.length Then
                    val = Marshal.ReadByte(msgdata.data, i)
                    Return True
                End If
            End If
            Return False
        End Function

        ''' <summary>
        ''' get bytes of the data of a message
        ''' </summary>
        ''' <param name="msg">Message structure containing data.</param>
        ''' <param name="i">offset of the first byte to get in the message, cannot be more than 2147483647</param>
        ''' <param name="nb">number of bytes</param>
        ''' <param name="vals"> values of the bytes, from offset 0</param>
        ''' <returns>true if ok, false if not ok</returns>
        Public Shared Function getData_2016(ByRef msg As cantp_msg, ByVal i As Integer, ByRef vals As Byte(), ByVal nb As Integer) As Boolean

            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.length > 0 And msgdata.data <> IntPtr.Zero And i >= 0 And i + nb - 1 < msgdata.length And nb <= vals.Length Then
                    If i = 0 Then
                        Marshal.Copy(msgdata.data, vals, 0, nb)
                    Else
                        For j As Integer = 0 To nb - 1
                            vals(j) = Marshal.ReadByte(msgdata.data, j + i)
                        Next j
                    End If
                    Return True
                End If
            End If
            Return False
        End Function

        ''' <summary>
        ''' get the net status of a message
        ''' </summary>
        ''' <param name="msg">Message structure containing the network status</param>
        ''' <param name="status">value of the status</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getNetStatus_2016(ByRef msg As cantp_msg, ByRef status As cantp_netstatus) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                status = msg.Msgdata_any_Copy.netstatus
                Return True
            End If
            Return False
        End Function


        ''' <summary>
        ''' Get the number of options of a message
        ''' </summary>
        ''' <param name="msg">message</param>
        ''' <param name="number">number of options</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getOptionsNumber_2016(ByRef msg As cantp_msg, ByRef number As Integer) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.options <> IntPtr.Zero Then
                    Dim l As cantp_msgoption_list = CType(Marshal.PtrToStructure(msgdata.options, GetType(cantp_msgoption_list)), cantp_msgoption_list)
                    number = l.count
                    Return True
                End If
            End If
            Return False
        End Function


        ''' <summary>
        ''' Get an option of a message
        ''' </summary>
        ''' <param name="number">number of the option</param>
        ''' <param name="opt">where to store a copy of the option</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getOption_2016(ByRef msg As cantp_msg, ByVal number As Integer,
                                               ByRef opt As cantp_msgoption) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.options <> IntPtr.Zero Then
                    Dim l As cantp_msgoption_list = CType(Marshal.PtrToStructure(msgdata.options, GetType(cantp_msgoption_list)), cantp_msgoption_list)
                    Return getOption_2016(l, number, opt)
                End If
            End If
            Return False
        End Function

        ''' <summary>
        ''' Modifies an option of a message
        ''' </summary>
        ''' <param name="msg">Message structure to modify</param>
        ''' <param name="number">number of the option</param>
        ''' <param name="opt">value to set to the option</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function setOption_2016(ByRef msg As cantp_msg, ByVal number As Integer,
                                               ByRef opt As cantp_msgoption) As Boolean
            If msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata = msg.Msgdata_any_Copy
                If msgdata.options <> IntPtr.Zero Then
                    Dim l As cantp_msgoption_list = CType(Marshal.PtrToStructure(msgdata.options, GetType(cantp_msgoption_list)), cantp_msgoption_list)
                    Return setOption_2016(l, number, opt)
                End If
            End If
            Return False
        End Function

        ''' <summary>
        ''' set the network address information of an ISO-TP message
        ''' </summary>
        ''' <param name="adr">address to set</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function setNetaddrinfo_2016(ByRef msg As cantp_msg, ByRef adr As cantp_netaddrinfo) As Boolean
            If msg.type = cantp_msgtype.PCANTP_MSGTYPE_ISOTP And msg.Msgdata <> IntPtr.Zero Then
                Dim msgdata As cantp_msgdata_isotp = CType(Marshal.PtrToStructure(msg.Msgdata, GetType(cantp_msgdata_isotp)), cantp_msgdata_isotp)
                msgdata.netaddrinfo = adr
                Marshal.StructureToPtr(msgdata, msg.Msgdata, True)
                Return True
            End If
            Return False
        End Function

        ''' <summary>
        ''' get the network address information of an ISO-TP message
        ''' </summary>
        ''' <param name="adr">value of address</param>
        ''' <returns>true if ok, false if Not ok</returns>
        Public Shared Function getNetaddrinfo_2016(ByRef msg As cantp_msg, ByRef adr As cantp_netaddrinfo) As Boolean
            If msg.type = cantp_msgtype.PCANTP_MSGTYPE_ISOTP And msg.Msgdata <> IntPtr.Zero Then
                adr = msg.Msgdata_isotp_Copy.netaddrinfo
                Return True
            End If
            Return False
        End Function

#End Region


#End Region
    End Class

#End Region
End Namespace
