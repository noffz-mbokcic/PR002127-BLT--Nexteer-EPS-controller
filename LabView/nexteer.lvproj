<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="CCSymbols" Type="Str"></Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="NI.Project.SaveVersion" Type="Str">Editor version</Property>
	<Property Name="utf.calculate.project.code.coverage" Type="Bool">true</Property>
	<Property Name="utf.create.arraybrackets" Type="Str">[]</Property>
	<Property Name="utf.create.arraythreshold" Type="UInt">100</Property>
	<Property Name="utf.create.captureinputvalues" Type="Bool">true</Property>
	<Property Name="utf.create.captureoutputvalues" Type="Bool">true</Property>
	<Property Name="utf.create.codecoverage.flag" Type="Bool">false</Property>
	<Property Name="utf.create.codecoverage.value" Type="UInt">100</Property>
	<Property Name="utf.create.editor.flag" Type="Bool">false</Property>
	<Property Name="utf.create.editor.path" Type="Path"></Property>
	<Property Name="utf.create.nameseparator" Type="Str">/</Property>
	<Property Name="utf.create.precision" Type="UInt">6</Property>
	<Property Name="utf.create.repetitions" Type="UInt">1</Property>
	<Property Name="utf.create.testpath.flag" Type="Bool">false</Property>
	<Property Name="utf.create.testpath.path" Type="Path"></Property>
	<Property Name="utf.create.timeout.flag" Type="Bool">false</Property>
	<Property Name="utf.create.timeout.value" Type="UInt">0</Property>
	<Property Name="utf.create.type" Type="UInt">0</Property>
	<Property Name="utf.enable.RT.VI.server" Type="Bool">false</Property>
	<Property Name="utf.passwords" Type="Bin">)Q#!!!!!!!)!%%!Q`````Q:4&gt;(*J&lt;G=!!":!1!!"`````Q!!#6"B=X.X&lt;X*E=Q!"!!%!!!!"!!!!#F652E&amp;-4&amp;.516)!!!!!</Property>
	<Property Name="utf.report.atml.create" Type="Bool">false</Property>
	<Property Name="utf.report.atml.path" Type="Path">ATML report.xml</Property>
	<Property Name="utf.report.atml.view" Type="Bool">false</Property>
	<Property Name="utf.report.details.errors" Type="Bool">false</Property>
	<Property Name="utf.report.details.failed" Type="Bool">false</Property>
	<Property Name="utf.report.details.passed" Type="Bool">false</Property>
	<Property Name="utf.report.errors" Type="Bool">true</Property>
	<Property Name="utf.report.failed" Type="Bool">true</Property>
	<Property Name="utf.report.html.create" Type="Bool">false</Property>
	<Property Name="utf.report.html.path" Type="Path">HTML report.html</Property>
	<Property Name="utf.report.html.view" Type="Bool">false</Property>
	<Property Name="utf.report.passed" Type="Bool">true</Property>
	<Property Name="utf.report.skipped" Type="Bool">true</Property>
	<Property Name="utf.report.sortby" Type="UInt">1</Property>
	<Property Name="utf.report.stylesheet.flag" Type="Bool">false</Property>
	<Property Name="utf.report.stylesheet.path" Type="Path"></Property>
	<Property Name="utf.report.summary" Type="Bool">true</Property>
	<Property Name="utf.report.txt.create" Type="Bool">false</Property>
	<Property Name="utf.report.txt.path" Type="Path">ASCII report.txt</Property>
	<Property Name="utf.report.txt.view" Type="Bool">false</Property>
	<Property Name="utf.run.changed.days" Type="UInt">1</Property>
	<Property Name="utf.run.changed.outdated" Type="Bool">false</Property>
	<Property Name="utf.run.changed.timestamp" Type="Bin">)Q#!!!!!!!%!%%"5!!9*2'&amp;U:3^U;7VF!!%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</Property>
	<Property Name="utf.run.days.flag" Type="Bool">false</Property>
	<Property Name="utf.run.includevicallers" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.flag" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.overwrite" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.path" Type="Path">test execution log.txt</Property>
	<Property Name="utf.run.modified.last.run.flag" Type="Bool">true</Property>
	<Property Name="utf.run.priority.flag" Type="Bool">false</Property>
	<Property Name="utf.run.priority.value" Type="UInt">5</Property>
	<Property Name="utf.run.statusfile.flag" Type="Bool">false</Property>
	<Property Name="utf.run.statusfile.path" Type="Path">test status log.txt</Property>
	<Property Name="utf.run.timestamp.flag" Type="Bool">false</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Communication" Type="Folder">
			<Item Name="PCAN API.lvlib" Type="Library" URL="../Communication/PCAN2023/PCAN API.lvlib"/>
			<Item Name="PCAN2023.lvlib" Type="Library" URL="../Communication/PCAN2023/PCAN2023/PCAN2023.lvlib"/>
		</Item>
		<Item Name="DUT testing" Type="Folder">
			<Item Name="Section 2 System " Type="Folder">
				<Item Name="Read HW Torque 4.vi" Type="VI" URL="../Tests/Read HW Torque 4.vi"/>
				<Item Name="Read HW Torque 5.vi" Type="VI" URL="../Tests/Read HW Torque 5.vi"/>
				<Item Name="Read MEC Counter.vi" Type="VI" URL="../Tests/Read MEC Counter.vi"/>
				<Item Name="Read SW version.vi" Type="VI" URL="../Tests/Read SW version.vi"/>
				<Item Name="Read System Status.vi" Type="VI" URL="../Tests/Read System Status.vi"/>
				<Item Name="Set Vehicle Speed Override.vi" Type="VI" URL="../Tests/Set Vehicle Speed Override.vi"/>
				<Item Name="Trim toque 45.vi" Type="VI" URL="../Tests/Trim toque 45.vi"/>
				<Item Name="Trim toque 4.vi" Type="VI" URL="../Tests/Trim toque 4.vi"/>
				<Item Name="Trim toque 5.vi" Type="VI" URL="../Tests/Trim toque 5.vi"/>
				<Item Name="Verify Trim toque 45.vi" Type="VI" URL="../Tests/Verify Trim toque 45.vi"/>
				<Item Name="Verify Trim toque 4.vi" Type="VI" URL="../Tests/Verify Trim toque 4.vi"/>
				<Item Name="Verify Trim toque 5.vi" Type="VI" URL="../Tests/Verify Trim toque 5.vi"/>
				<Item Name="Write Analog Torque Scale 4.vi" Type="VI" URL="../Tests/Write Analog Torque Scale 4.vi"/>
				<Item Name="Write Analog Torque Scale 5.vi" Type="VI" URL="../Tests/Write Analog Torque Scale 5.vi"/>
				<Item Name="Write BEMF.vi" Type="VI" URL="../Tests/Write BEMF.vi"/>
				<Item Name="Write Gain Values to Default.vi" Type="VI" URL="../Tests/Write Gain Values to Default.vi"/>
				<Item Name="Write Offset Values to Default.vi" Type="VI" URL="../Tests/Write Offset Values to Default.vi"/>
				<Item Name="Write Polarity.vi" Type="VI" URL="../Tests/Write Polarity.vi"/>
				<Item Name="Write System Friction.vi" Type="VI" URL="../Tests/Write System Friction.vi"/>
			</Item>
			<Item Name="Section 3 Calibration" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Set Manifacturing Diagnostic.vi" Type="VI" URL="../Tests/Set Manifacturing Diagnostic.vi"/>
				<Item Name="Perform Current Gain.vi" Type="VI" URL="../Tests/Perform Current Gain.vi"/>
				<Item Name="Perform Current Offset.vi" Type="VI" URL="../Tests/Perform Current Offset.vi"/>
				<Item Name="Read Current Gain Status.vi" Type="VI" URL="../Tests/Read Current Gain Status.vi"/>
				<Item Name="Read Current Offset Status.vi" Type="VI" URL="../Tests/Read Current Offset Status.vi"/>
				<Item Name="Disable Torque Ramp Dowm.vi" Type="VI" URL="../Tests/Disable Torque Ramp Dowm.vi"/>
				<Item Name="Read Gain Values.vi" Type="VI" URL="../Tests/Read Gain Values.vi"/>
				<Item Name="Read Offset Values.vi" Type="VI" URL="../Tests/Read Offset Values.vi"/>
			</Item>
			<Item Name="Section 4" Type="Folder">
				<Item Name="Read ECU Software ID.vi" Type="VI" URL="../Tests/Read ECU Software ID.vi"/>
				<Item Name="Read Software Version.vi" Type="VI" URL="../Tests/Read Software Version.vi"/>
				<Item Name="Read Bootloader ID.vi" Type="VI" URL="../Tests/Read Bootloader ID.vi"/>
				<Item Name="Read Bootloader Software Version.vi" Type="VI" URL="../Tests/Read Bootloader Software Version.vi"/>
				<Item Name="Read Calibration Release 0.vi" Type="VI" URL="../Tests/Read Calibration Release 0.vi"/>
				<Item Name="Read Calibration Release 1.vi" Type="VI" URL="../Tests/Read Calibration Release 1.vi"/>
				<Item Name="Read Calibration Release 2.vi" Type="VI" URL="../Tests/Read Calibration Release 2.vi"/>
			</Item>
			<Item Name="Section 5" Type="Folder">
				<Item Name="Read Temperature.vi" Type="VI" URL="../Tests/Read Temperature.vi"/>
				<Item Name="Read Battery Voltage.vi" Type="VI" URL="../Tests/Read Battery Voltage.vi"/>
				<Item Name="Read Motor Angle Sensor 0.vi" Type="VI" URL="../Tests/Read Motor Angle Sensor 0.vi"/>
				<Item Name="Read Motor Angle Sensor 1.vi" Type="VI" URL="../Tests/Read Motor Angle Sensor 1.vi"/>
				<Item Name="Read Motor Speed.vi" Type="VI" URL="../Tests/Read Motor Speed.vi"/>
				<Item Name="Enable Engine Run.vi" Type="VI" URL="../Tests/Enable Engine Run.vi"/>
				<Item Name="Disable Engine Run.vi" Type="VI" URL="../Tests/Disable Engine Run.vi"/>
				<Item Name="Read Motor Current.vi" Type="VI" URL="../Tests/Read Motor Current.vi"/>
				<Item Name="Set Motor Toque.vi" Type="VI" URL="../Tests/Set Motor Toque.vi"/>
				<Item Name="Stop Motor Torque.vi" Type="VI" URL="../Tests/Stop Motor Torque.vi"/>
			</Item>
			<Item Name="Section 6" Type="Folder">
				<Item Name="Write Serial Number.vi" Type="VI" URL="../Tests/Write Serial Number.vi"/>
				<Item Name="Write Hardware part number.vi" Type="VI" URL="../Tests/Write Hardware part number.vi"/>
				<Item Name="Write MEC counter.vi" Type="VI" URL="../Tests/Write MEC counter.vi"/>
				<Item Name="Read Hardware Part Number.vi" Type="VI" URL="../Tests/Read Hardware Part Number.vi"/>
				<Item Name="Read Serial Number.vi" Type="VI" URL="../Tests/Read Serial Number.vi"/>
				<Item Name="Read Polarity.vi" Type="VI" URL="../Tests/Read Polarity.vi"/>
				<Item Name="Read Trim toque NOT performed 45.vi" Type="VI" URL="../Tests/Read Trim toque NOT performed 45.vi"/>
				<Item Name="Read Trim toque NOT performed 4.vi" Type="VI" URL="../Tests/Read Trim toque NOT performed 4.vi"/>
				<Item Name="Read Trim toque NOT performed 5.vi" Type="VI" URL="../Tests/Read Trim toque NOT performed 5.vi"/>
				<Item Name="Clear HW Torque Trim Sensors 4 and 5.vi" Type="VI" URL="../Tests/Clear HW Torque Trim Sensors 4 and 5.vi"/>
				<Item Name="Clear HW Torque Trim Sensors 4.vi" Type="VI" URL="../Tests/Clear HW Torque Trim Sensors 4.vi"/>
				<Item Name="Clear HW Torque Trim Sensors 5.vi" Type="VI" URL="../Tests/Clear HW Torque Trim Sensors 5.vi"/>
				<Item Name="Read System Status For No response.vi" Type="VI" URL="../Tests/Read System Status For No response.vi"/>
			</Item>
			<Item Name="Coverters" Type="Folder">
				<Item Name="Calculate Sensor Angle.vi" Type="VI" URL="../Tests/Calculate Sensor Angle.vi"/>
				<Item Name="Convert Data Bytes to Calibration number.vi" Type="VI" URL="../Tests/Convert Data Bytes to Calibration number.vi"/>
				<Item Name="Convert payload to float.vi" Type="VI" URL="../Tests/Convert payload to float.vi"/>
				<Item Name="Convert float to payload.vi" Type="VI" URL="../Tests/Convert float to payload.vi"/>
				<Item Name="Convert HW number to Data Bytes.vi" Type="VI" URL="../Tests/Convert HW number to Data Bytes.vi"/>
				<Item Name="Convert Data Bytes to HW number.vi" Type="VI" URL="../Tests/Convert Data Bytes to HW number.vi"/>
				<Item Name="Convert Data to Offset values.vi" Type="VI" URL="../Tests/Convert Data to Offset values.vi"/>
				<Item Name="Convert Data to Gain values.vi" Type="VI" URL="../Tests/Convert Data to Gain values.vi"/>
				<Item Name="Convert SN bytes to SN data.vi" Type="VI" URL="../Tests/Convert SN bytes to SN data.vi"/>
				<Item Name="Convert SN data to SN bytes.vi" Type="VI" URL="../Tests/Convert SN data to SN bytes.vi"/>
			</Item>
			<Item Name="Unused" Type="Folder">
				<Item Name="Trim HW Angle 0.vi" Type="VI" URL="../Tests/Trim HW Angle 0.vi"/>
				<Item Name="Read HW Angle 0 Trim Performed.vi" Type="VI" URL="../Tests/Read HW Angle 0 Trim Performed.vi"/>
			</Item>
			<Item Name="Calibration.vi" Type="VI" URL="../Tests/Calibration.vi"/>
			<Item Name="Nexteer connect.vi" Type="VI" URL="../Tests/Nexteer connect.vi"/>
			<Item Name="XCP connect.vi" Type="VI" URL="../Tests/XCP connect.vi"/>
			<Item Name="Testing.vi" Type="VI" URL="../Tests/Testing.vi"/>
			<Item Name="NTC codes.vi" Type="VI" URL="../Tests/NTC codes.vi"/>
			<Item Name="Read NTCs.vi" Type="VI" URL="../Tests/Read NTCs.vi"/>
			<Item Name="Clear Nexteer NTCs.vi" Type="VI" URL="../Tests/Clear Nexteer NTCs.vi"/>
			<Item Name="Read HW Angle.vi" Type="VI" URL="../Tests/Read HW Angle.vi"/>
			<Item Name="Section2.vi" Type="VI" URL="../Tests/Section2.vi"/>
		</Item>
		<Item Name="Report" Type="Folder">
			<Item Name="Generate txt Report.vi" Type="VI" URL="../Report/Generate txt Report.vi"/>
		</Item>
		<Item Name="Rigol" Type="Folder">
			<Item Name="Deinitialize Rigol.vi" Type="VI" URL="../Rigol/Deinitialize Rigol.vi"/>
			<Item Name="Initialize Rigol.vi" Type="VI" URL="../Rigol/Initialize Rigol.vi"/>
			<Item Name="Read Data Rigol.vi" Type="VI" URL="../Rigol/Read Data Rigol.vi"/>
			<Item Name="Set Current Limit.vi" Type="VI" URL="../Rigol/Set Current Limit.vi"/>
			<Item Name="Set Value and Output.vi" Type="VI" URL="../Rigol/Set Value and Output.vi"/>
			<Item Name="RIGOL DP800 Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/RIGOL DP800 Series/RIGOL DP800 Series.lvlib"/>
		</Item>
		<Item Name="AimTTi" Type="Folder">
			<Item Name="Aim TTi 1908P DMM.lvlib" Type="Library" URL="../AimTTi/Aim TTi 1908P DMM.lvlib"/>
		</Item>
		<Item Name="TDK_20-38" Type="Folder">
			<Item Name="TDK-Lambda GEN LAN Series.lvlib" Type="Library" URL="../LabVIEW - Drivers/Genesys Drivers/LAN/TDK-Lambda GEN LAN Series.lvlib"/>
			<Item Name="TDK20-38 API.lvlib" Type="Library" URL="../TDK_20_38/TDK20-38 API.lvlib"/>
		</Item>
		<Item Name="Sequence SubVIs" Type="Folder">
			<Item Name="Get IPs.vi" Type="VI" URL="../Sequence SubVIs/Get IPs.vi"/>
			<Item Name="Get Ports.vi" Type="VI" URL="../Sequence SubVIs/Get Ports.vi"/>
			<Item Name="Collect Average Measurement.vi" Type="VI" URL="../Sequence SubVIs/Collect Average Measurement.vi"/>
			<Item Name="Get Additional data.vi" Type="VI" URL="../Sequence SubVIs/Get Additional data.vi"/>
			<Item Name="Read Ini FIle.vi" Type="VI" URL="../Sequence SubVIs/Read Ini FIle.vi"/>
			<Item Name="Read Ini FIle bool.vi" Type="VI" URL="../Sequence SubVIs/Read Ini FIle bool.vi"/>
			<Item Name="Set ini value.vi" Type="VI" URL="../Sequence SubVIs/Set ini value.vi"/>
			<Item Name="Read Sequence parameters.vi" Type="VI" URL="../Sequence SubVIs/Read Sequence parameters.vi"/>
		</Item>
		<Item Name="Keyence" Type="Folder">
			<Item Name="SubVIs" Type="Folder">
				<Item Name="Convert Scanned HEX data to ASCII QR Code.vi" Type="VI" URL="../Keyence/Convert Scanned HEX data to ASCII QR Code.vi"/>
				<Item Name="Send LON command to SR752.vi" Type="VI" URL="../Keyence/Send LON command to SR752.vi"/>
			</Item>
			<Item Name="Deinitialize TCP Connection.vi" Type="VI" URL="../Keyence/Deinitialize TCP Connection.vi"/>
			<Item Name="Initialize TCP Connection.vi" Type="VI" URL="../Keyence/Initialize TCP Connection.vi"/>
			<Item Name="Read.vi" Type="VI" URL="../Keyence/Read.vi"/>
			<Item Name="Test keyence.vi" Type="VI" URL="../Keyence/Test keyence.vi"/>
		</Item>
		<Item Name="Station" Type="Folder">
			<Item Name="Add alarm to archive.vi" Type="VI" URL="../Station/Add alarm to archive.vi"/>
			<Item Name="Convert Array of Bytes to String (RX and TX).vi" Type="VI" URL="../Station/Convert Array of Bytes to String (RX and TX).vi"/>
			<Item Name="Convert CAN message to String (RX and TX).vi" Type="VI" URL="../Station/Convert CAN message to String (RX and TX).vi"/>
			<Item Name="Delete Alarm archive and Create Header for new one Alarm archive.vi" Type="VI" URL="../Station/Delete Alarm archive and Create Header for new one Alarm archive.vi"/>
			<Item Name="Get Error Message.vi" Type="VI" URL="../Station/Get Error Message.vi"/>
			<Item Name="Get Failure set to write.vi" Type="VI" URL="../Station/Get Failure set to write.vi"/>
			<Item Name="Update Operating Mode.vi" Type="VI" URL="../Station/Update Operating Mode.vi"/>
		</Item>
		<Item Name="Actuators" Type="Folder">
			<Item Name="Actuators.lvlib" Type="Library" URL="../Actuators/Actuators.lvlib"/>
		</Item>
		<Item Name="Read Message.vi" Type="VI" URL="../Communication/Read Message.vi"/>
		<Item Name="Multiple Write One Read(SubVI).vi" Type="VI" URL="../Tests/Multiple Write One Read(SubVI).vi"/>
		<Item Name="Arrange messages.vi" Type="VI" URL="../Tests/Arrange messages.vi"/>
		<Item Name="Rule.vi" Type="VI" URL="../Tests/Rule.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="UTP IO Library.lvlib" Type="Library" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/UTP IO Library.lvlib"/>
				<Item Name="UTP IO Core.lvlibp" Type="LVLibp" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp">
					<Item Name="UTP IO Pool.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Pool/UTP IO Pool.lvclass"/>
					<Item Name="UTP IO Item.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Item/UTP IO Item.lvclass"/>
					<Item Name="UTP IO Deferred Item.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Deferred Item/UTP IO Deferred Item.lvclass"/>
					<Item Name="UTP Generic Resource.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Generic Resource/UTP Generic Resource.lvclass"/>
					<Item Name="UTP IO Resource.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Resource/UTP IO Resource.lvclass"/>
					<Item Name="UTP Input Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Input Channel/UTP Input Channel.lvclass"/>
					<Item Name="UTP Output Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Output Channel/UTP Output Channel.lvclass"/>
					<Item Name="UTP IO Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Channel/UTP IO Channel.lvclass"/>
					<Item Name="UTP AI Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AI Channel/UTP AI Channel.lvclass"/>
					<Item Name="UTP AO Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AO Channel/UTP AO Channel.lvclass"/>
					<Item Name="UTP CI Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP CI Channel/UTP CI Channel.lvclass"/>
					<Item Name="UTP CO Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP CO Channel/UTP CO Channel.lvclass"/>
					<Item Name="UTP DI Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DI Channel/UTP DI Channel.lvclass"/>
					<Item Name="UTP DO Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DO Channel/UTP DO Channel.lvclass"/>
					<Item Name="UTP IO Channel List.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Channel List/UTP IO Channel List.lvclass"/>
					<Item Name="UTP IO Task.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Task/UTP IO Task.lvclass"/>
					<Item Name="UTP PLC.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP PLC/UTP PLC.lvclass"/>
					<Item Name="UTP PLC Communication Behavior.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP PLC Communication Behavior/UTP PLC Communication Behavior.lvclass"/>
					<Item Name="UTP Writable Variable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Writable Variable/UTP Writable Variable.lvclass"/>
					<Item Name="UTP Readable Variable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Readable Variable/UTP Readable Variable.lvclass"/>
					<Item Name="UTP DCPSU.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DCPSU/UTP DCPSU.lvclass"/>
					<Item Name="UTP DCPSU Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DCPSU Channel/UTP DCPSU Channel.lvclass"/>
					<Item Name="UTP DC Electronic Load.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DC Electronic Load/UTP DC Electronic Load.lvclass"/>
					<Item Name="UTP DC Electronic Load Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DC Electronic Load Channel/UTP DC Electronic Load Channel.lvclass"/>
					<Item Name="UTP AC Power Source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AC Power Source/UTP AC Power Source.lvclass"/>
					<Item Name="UTP AC Power Source Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AC Power Source Channel/UTP AC Power Source Channel.lvclass"/>
					<Item Name="UTP DMM.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DMM/UTP DMM.lvclass"/>
					<Item Name="UTP DMM Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DMM Channel/UTP DMM Channel.lvclass"/>
					<Item Name="UTP Chassis.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Chassis/UTP Chassis.lvclass"/>
					<Item Name="UTP Matrix Bank.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Matrix Bank/UTP Matrix Bank.lvclass"/>
					<Item Name="UTP Switching Device.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Switching Device/UTP Switching Device.lvclass"/>
					<Item Name="UTP Switch Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Switch Channel/UTP Switch Channel.lvclass"/>
					<Item Name="UTP Custom Switch Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Custom Switch Channel/UTP Custom Switch Channel.lvclass"/>
					<Item Name="UTP SPDT Switch Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SPDT Switch Channel/UTP SPDT Switch Channel.lvclass"/>
					<Item Name="UTP SPST Switch Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SPST Switch Channel/UTP SPST Switch Channel.lvclass"/>
					<Item Name="UTP SP4T Switch Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SP4T Switch Channel/UTP SP4T Switch Channel.lvclass"/>
					<Item Name="UTP Multiplexer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Multiplexer Channel/UTP Multiplexer Channel.lvclass"/>
					<Item Name="UTP Code Reader.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Code Reader/UTP Code Reader.lvclass"/>
					<Item Name="UTP Code Reader Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Code Reader Channel/UTP Code Reader Channel.lvclass"/>
					<Item Name="UTP Climatic Chamber.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Climatic Chamber/UTP Climatic Chamber.lvclass"/>
					<Item Name="UTP Climatic Chamber Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Climatic Chamber Channel/UTP Climatic Chamber Channel.lvclass"/>
					<Item Name="UTP Programmable Resistor Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Programmable Resistor Channel/UTP Programmable Resistor Channel.lvclass"/>
					<Item Name="UTP Communication Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Communication Channel/UTP Communication Channel.lvclass"/>
					<Item Name="UTP CAN Communication Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP CAN Communication Channel/UTP CAN Communication Channel.lvclass"/>
					<Item Name="UTP LIN Communication Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP LIN Communication Channel/UTP LIN Communication Channel.lvclass"/>
					<Item Name="UTP FlexRay Communication Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP FlexRay Communication Channel/UTP FlexRay Communication Channel.lvclass"/>
					<Item Name="UTP Generic Communication Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Generic Communication Channel/UTP Generic Communication Channel.lvclass"/>
					<Item Name="UTP Communication Device.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Communication Device/UTP Communication Device.lvclass"/>
					<Item Name="UTP Wireless Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Wireless Channel/UTP Wireless Channel.lvclass"/>
					<Item Name="UTP Environmental Sensor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Environmental Sensor/UTP Environmental Sensor.lvclass"/>
					<Item Name="UTP Environmental Sensor Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Environmental Sensor Channel/UTP Environmental Sensor Channel.lvclass"/>
					<Item Name="UTP Action Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Action Channel/UTP Action Channel.lvclass"/>
					<Item Name="UTP IO Data Storage.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Data Storage/UTP IO Data Storage.lvclass"/>
					<Item Name="UTP Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Data/UTP Data.lvclass"/>
					<Item Name="UTP Action.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Action/UTP Action.lvclass"/>
					<Item Name="UTP Boolean.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Boolean/UTP Boolean.lvclass"/>
					<Item Name="UTP SGL.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SGL/UTP SGL.lvclass"/>
					<Item Name="UTP Double.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Double/UTP Double.lvclass"/>
					<Item Name="UTP Toggle.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Toggle/UTP Toggle.lvclass"/>
					<Item Name="UTP Waveform.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Waveform/UTP Waveform.lvclass"/>
					<Item Name="UTP String.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP String/UTP String.lvclass"/>
					<Item Name="UTP Pulse.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Pulse/UTP Pulse.lvclass"/>
					<Item Name="UTP Communication Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Communication Configuration/UTP Communication Configuration.lvclass"/>
					<Item Name="UTP TCP Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP TCP Configuration/UTP TCP Configuration.lvclass"/>
					<Item Name="UTP TCP INSTR Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP TCP INSTR Configuration/UTP TCP INSTR Configuration.lvclass"/>
					<Item Name="UTP GPIB Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP GPIB Configuration/UTP GPIB Configuration.lvclass"/>
					<Item Name="UTP RS232 Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP RS232 Configuration/UTP RS232 Configuration.lvclass"/>
					<Item Name="UTP USB RAW Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP USB RAW Configuration/UTP USB RAW Configuration.lvclass"/>
					<Item Name="UTP DCPSU Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DCPSU Data/UTP DCPSU Data.lvclass"/>
					<Item Name="UTP DC Electronic Load Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DC Electronic Load Data/UTP DC Electronic Load Data.lvclass"/>
					<Item Name="UTP AC Power Source Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AC Power Source Data/UTP AC Power Source Data.lvclass"/>
					<Item Name="UTP Code.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Code/UTP Code.lvclass"/>
					<Item Name="UTP U8.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP U8/UTP U8.lvclass"/>
					<Item Name="UTP I8.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP I8/UTP I8.lvclass"/>
					<Item Name="UTP I16.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP I16/UTP I16.lvclass"/>
					<Item Name="UTP U16.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP U16/UTP U16.lvclass"/>
					<Item Name="UTP I32.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP I32/UTP I32.lvclass"/>
					<Item Name="UTP U32.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP U32/UTP U32.lvclass"/>
					<Item Name="UTP Enum.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Enum/UTP Enum.lvclass"/>
					<Item Name="UTP SPDT Position.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SPDT Position/UTP SPDT Position.lvclass"/>
					<Item Name="UTP SPST Position.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SPST Position/UTP SPST Position.lvclass"/>
					<Item Name="UTP SP4T Position.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP SP4T Position/UTP SP4T Position.lvclass"/>
					<Item Name="UTP Climatic Chamber Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Climatic Chamber Data/UTP Climatic Chamber Data.lvclass"/>
					<Item Name="UTP Environmental Sensor Data.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Environmental Sensor Data/UTP Environmental Sensor Data.lvclass"/>
					<Item Name="UTP 1D Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Array/UTP 1D Array.lvclass"/>
					<Item Name="UTP 1D Boolean Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Boolean Array/UTP 1D Boolean Array.lvclass"/>
					<Item Name="UTP 1D Double Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Double Array/UTP 1D Double Array.lvclass"/>
					<Item Name="UTP 1D Toggle Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Toggle Array/UTP 1D Toggle Array.lvclass"/>
					<Item Name="UTP 1D SPST Position Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D SPST Position Array/UTP 1D SPST Position Array.lvclass"/>
					<Item Name="UTP 1D Waveform Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Waveform Array/UTP 1D Waveform Array.lvclass"/>
					<Item Name="UTP 1D Pulse Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 1D Pulse Array/UTP 1D Pulse Array.lvclass"/>
					<Item Name="UTP 2D Boolean Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 2D Boolean Array/UTP 2D Boolean Array.lvclass"/>
					<Item Name="UTP 2D Array.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP 2D Array/UTP 2D Array.lvclass"/>
					<Item Name="UTP Route.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Route/UTP Route.lvclass"/>
					<Item Name="UTP Timestamp.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Timestamp/UTP Timestamp.lvclass"/>
					<Item Name="UTP IO Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP IO Group/UTP IO Group.lvclass"/>
					<Item Name="UTP Output Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Output Group/UTP Output Group.lvclass"/>
					<Item Name="UTP Input Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Input Group/UTP Input Group.lvclass"/>
					<Item Name="UTP AI Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AI Group/UTP AI Group.lvclass"/>
					<Item Name="UTP AO Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP AO Group/UTP AO Group.lvclass"/>
					<Item Name="UTP DI Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DI Group/UTP DI Group.lvclass"/>
					<Item Name="UTP DO Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP DO Group/UTP DO Group.lvclass"/>
					<Item Name="UTP Programmable Resistor Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Programmable Resistor Group/UTP Programmable Resistor Group.lvclass"/>
					<Item Name="UTP Switch Group.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Switch Group/UTP Switch Group.lvclass"/>
					<Item Name="UTP Output Task.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Output Task/UTP Output Task.lvclass"/>
					<Item Name="UTP Command.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/UTP Command/UTP Command.lvclass"/>
					<Item Name="SCPI Command.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/SCPI Command/SCPI Command.lvclass"/>
					<Item Name="addToLog.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/addToLog.vi"/>
					<Item Name="loadLibrary.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/Sentinel LDK/loadLibrary.vi"/>
					<Item Name="getAssemblyPath.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/Sentinel LDK/getAssemblyPath.vi"/>
					<Item Name="logErrorHandler.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/logErrorHandler.vi"/>
					<Item Name="log data.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/log data.ctl"/>
					<Item Name="log mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/log mode.ctl"/>
					<Item Name="sendToLogViewer.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/sendToLogViewer.vi"/>
					<Item Name="checkDataStorageIsRunning.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/checkDataStorageIsRunning.vi"/>
					<Item Name="import file type.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/import/typedefs/import file type.ctl"/>
					<Item Name="importFromFile.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/classes/core/import/importFromFile.vi"/>
					<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/lvfile.llb/NI_FileType.lvlib"/>
					<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
					<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/NIReport.llb/NI_report.lvclass"/>
					<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
					<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
					<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
					<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
					<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
					<Item Name="popup error abstract method.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/popup error abstract method.vi"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/file.llb/Is Path and Not Empty.vi"/>
					<Item Name="build reasons for checkSanity.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/build reasons for checkSanity.vi"/>
					<Item Name="remote debug cmd id.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/typedefs/remote debug cmd id.ctl"/>
					<Item Name="runtime panel user event cmd.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/viewer/typedefs/runtime panel user event cmd.ctl"/>
					<Item Name="runtime panel status event cmd.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/viewer/typedefs/runtime panel status event cmd.ctl"/>
					<Item Name="configPanel status.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/typedefs/configPanel status.ctl"/>
					<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
					<Item Name="get typedefed cluster reference.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/configurator/subvis/get typedefed cluster reference.vi"/>
					<Item Name="utp-io-tcpip-write.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/tcpip/utp-io-tcpip-write.vi"/>
					<Item Name="utp-io-tcpip-read.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/tcpip/utp-io-tcpip-read.vi"/>
					<Item Name="tcpip msg cmd.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/typedefs/tcpip msg cmd.ctl"/>
					<Item Name="tcpip msg.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/typedefs/tcpip msg.ctl"/>
					<Item Name="api tcp read from data storage.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api tcp read from data storage.vi"/>
					<Item Name="api connection mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/typedefs/api connection mode.ctl"/>
					<Item Name="obtain runTimePanel VIref notifier.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/runTimePanel/obtain runTimePanel VIref notifier.vi"/>
					<Item Name="utp-io-viewer-runTimePanel_user_event.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/viewer/typedefs/utp-io-viewer-runTimePanel_user_event.ctl"/>
					<Item Name="utp-io-viewer-runTimePanel_status_user_event.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/viewer/typedefs/utp-io-viewer-runTimePanel_status_user_event.ctl"/>
					<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
					<Item Name="obtain configPanel state notifier.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/configPanel/obtain configPanel state notifier.vi"/>
					<Item Name="insert VI in subpanel.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/configurator/subvis/insert VI in subpanel.vi"/>
					<Item Name="set front panel at origin.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/UI/set front panel at origin.vi"/>
					<Item Name="set typedef cluster position at origin.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/UI/set typedef cluster position at origin.vi"/>
					<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
					<Item Name="get typedef cluster bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/UI/get typedef cluster bounds.vi"/>
					<Item Name="api check connection data storage.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api check connection data storage.vi"/>
					<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Path.vi"/>
					<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Name.vi"/>
					<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Default Value.vi"/>
					<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
					<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/picture.llb/imagedata.ctl"/>
					<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Create Mask By Alpha.vi"/>
					<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
					<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
					<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
					<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP Data.vi"/>
					<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP File.vi"/>
					<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Search and Replace Pattern.vi"/>
					<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
					<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
					<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/printing/PathToURL.llb/Path to URL inner.vi"/>
					<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/printing/PathToURL.llb/Path to URL.vi"/>
					<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry SAM.ctl"/>
					<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry RtKey.ctl"/>
					<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry View.ctl"/>
					<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/STR_ASCII-Unicode.vi"/>
					<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry WinErr-LVErr.vi"/>
					<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry refnum.ctl"/>
					<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry Handle Master.vi"/>
					<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Open Registry Key.vi"/>
					<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry Simplify Data Type.vi"/>
					<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Read Registry Value STR.vi"/>
					<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Read Registry Value Simple STR.vi"/>
					<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/Wait types.ctl"/>
					<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/Create Error Clust.vi"/>
					<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
					<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/EventData.ctl"/>
					<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/OccFireType.ctl"/>
					<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
					<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
					<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Close Registry Key.vi"/>
					<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check File Permissions.vi"/>
					<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Color Table Size.vi"/>
					<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Data Size.vi"/>
					<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Directory of Top Level VI.vi"/>
					<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Path.vi"/>
					<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/png.llb/Read PNG File.vi"/>
					<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Write JPEG File.vi"/>
					<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/png.llb/Write PNG File.vi"/>
					<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/AppBuilder/Built App File Layout.vi"/>
					<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Get File Extension.vi"/>
					<Item Name="VariantFlattenExp.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/VariantFlattenExp.vi"/>
					<Item Name="scan pool string for required ppls.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/scan pool string for required ppls.vi"/>
					<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
					<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
					<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
					<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
					<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
					<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/Write to XML File(string).vi"/>
					<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindEmptyElement.vi"/>
					<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindElement.vi"/>
					<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindFirstTag.vi"/>
					<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindCloseTagByName.vi"/>
					<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindElementStartByName.vi"/>
					<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/FindMatchingCloseTag.vi"/>
					<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/ParseXMLFragments.vi"/>
					<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/xml.llb/Read From XML File(string).vi"/>
					<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="udpOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/udp/udpOpen.vi"/>
					<Item Name="remote debug port.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/constants/remote debug port.vi"/>
					<Item Name="udpCaculateNumberOfChunks.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/udp/udpCaculateNumberOfChunks.vi"/>
					<Item Name="udpWrite.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/udp/udpWrite.vi"/>
					<Item Name="udpRead.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/udp/udpRead.vi"/>
					<Item Name="udpClose.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/udp/udpClose.vi"/>
					<Item Name="remote debug cmd.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/typedefs/remote debug cmd.ctl"/>
					<Item Name="api tcpip gvar.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/typedefs/api tcpip gvar.vi"/>
					<Item Name="data storage port numbers.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/constants/data storage port numbers.vi"/>
					<Item Name="api connection manager.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api connection manager.vi"/>
					<Item Name="api try reading from data storage.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api try reading from data storage.vi"/>
					<Item Name="api tc write to data storage.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api tc write to data storage.vi"/>
					<Item Name="api try writing to data storage.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/apps/data storage/subvis/client/api try writing to data storage.vi"/>
					<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogType.ctl"/>
					<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
					<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Semaphore RefNum"/>
					<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Not A Semaphore.vi"/>
					<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Release Semaphore.vi"/>
					<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Acquire Semaphore.vi"/>
					<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
					<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
					<Item Name="Get Semaphore Status.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Get Semaphore Status.vi"/>
					<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
					<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
					<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
					<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/TagReturnType.ctl"/>
					<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Check Special Tags.vi"/>
					<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set String Value.vi"/>
					<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetRTHostConnectedProp.vi"/>
					<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Code Database.vi"/>
					<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Find Tag.vi"/>
					<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set Bold Text.vi"/>
					<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Format Message String.vi"/>
					<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/ErrWarn.ctl"/>
					<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/event_ctls.llb/eventvkey.ctl"/>
					<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogTypeEnum.ctl"/>
					<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Details Display Dialog.vi"/>
					<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Convert property node font to graphics font.vi"/>
					<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Get Text Rect.vi"/>
					<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Longest Line Length in Pixels.vi"/>
					<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Get String Text Bounds.vi"/>
					<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog CORE.vi"/>
					<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog.vi"/>
					<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetHelpDir.vi"/>
					<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/BuildHelpPath.vi"/>
					<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Not Found Dialog.vi"/>
					<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler Core CORE.vi"/>
					<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler.vi"/>
					<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Simple Error Handler.vi"/>
					<Item Name="create error with name.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/create error with name.vi"/>
					<Item Name="create detailed error.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/create detailed error.vi"/>
					<Item Name="remote pool session call.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/remote debug/remote pool session call.vi"/>
					<Item Name="poll busy remote pool session.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/remote debug/poll busy remote pool session.vi"/>
					<Item Name="merge additional errors.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/sub/merge additional errors.vi"/>
					<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/UTP IO Core.lvlibp/1abvi3w/vi.lib/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				</Item>
				<Item Name="hasp_net_windows.dll" Type="Document" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Shared/bin/hasp_net_windows.dll"/>
				<Item Name="create error with name.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/create error with name.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="UTP ESF.lvlib" Type="Library" URL="/&lt;vilib&gt;/Noffz/UTP ESF/UTP ESF.lvlib"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="create detailed error.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/create detailed error.vi"/>
				<Item Name="remote debug cmd id.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/remote debug cmd id.ctl"/>
				<Item Name="remote debug cmd.ctl" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/remote debug cmd.ctl"/>
				<Item Name="remote debug port.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/remote debug port.vi"/>
				<Item Name="udpOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/udpOpen.vi"/>
				<Item Name="udpRead.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/udpRead.vi"/>
				<Item Name="udpCaculateNumberOfChunks.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/udpCaculateNumberOfChunks.vi"/>
				<Item Name="udpWrite.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/udpWrite.vi"/>
				<Item Name="udpClose.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/udpClose.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="scan pool string for required ppls.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/scan pool string for required ppls.vi"/>
				<Item Name="load all classes.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/load all classes.vi"/>
				<Item Name="get installed software.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/get installed software.vi"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Query Registry Key Info.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Query Registry Key Info.vi"/>
				<Item Name="Enum Registry Keys.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Enum Registry Keys.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="get file info.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/get file info.vi"/>
				<Item Name="check plugin dependencies.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/check plugin dependencies.vi"/>
				<Item Name="check dependencies.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/check dependencies.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="build skipped plugins info string.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/build skipped plugins info string.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="check datastorage and start.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/check datastorage and start.vi"/>
				<Item Name="check if datastorage is running.vi" Type="VI" URL="/&lt;vilib&gt;/Noffz/UTP IO/UTP IO Library/_sub/check if datastorage is running.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="TestStand - Initialize Termination Monitor.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Initialize Termination Monitor.vi"/>
				<Item Name="TestStand - Status Monitor.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Status Monitor.ctl"/>
				<Item Name="TestStand - Get Termination Monitor Status.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Get Termination Monitor Status.vi"/>
				<Item Name="TestStand - Set Property Value.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value.vi"/>
				<Item Name="TestStand - Set Property Value (Boolean Array).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Boolean Array).vi"/>
				<Item Name="TestStand API Numeric Constants.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand API Numeric Constants.ctl"/>
				<Item Name="TestStand API Numeric Constants.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand API Numeric Constants.vi"/>
				<Item Name="TestStand - Set Property Value (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Boolean).vi"/>
				<Item Name="TestStand - Set Property Value (Number).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number).vi"/>
				<Item Name="TestStand - Set Property Value (Object).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Object).vi"/>
				<Item Name="TestStand - Set Property Value (String Array).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (String Array).vi"/>
				<Item Name="TestStand - Set Property Value (String).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (String).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Signed 64-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Signed 64-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Unsigned 64-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Unsigned 64-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Signed 64-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Signed 64-bit Integer}).vi"/>
				<Item Name="TestStand - Validate Evaluation Types.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Validate Evaluation Types.vi"/>
				<Item Name="lvpalettesupport.dll" Type="Document" URL="/&lt;vilib&gt;/addons/TestStand/lvpalettesupport.dll"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Unsigned 64-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Unsigned 64-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Signed 8-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Signed 8-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Unsigned 8-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Unsigned 8-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Signed 16-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Signed 16-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Unsigned 16-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Unsigned 16-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Signed 32-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Signed 32-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Numeric Array {Unsigned 32-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Numeric Array {Unsigned 32-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Signed 8-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Signed 8-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Unsigned 8-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Unsigned 8-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Signed 16-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Signed 16-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Unsigned 16-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Unsigned 16-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Signed 32-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Signed 32-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Number {Unsigned 32-bit Integer}).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Number {Unsigned 32-bit Integer}).vi"/>
				<Item Name="TestStand - Set Property Value (Reference).vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Set Property Value (Reference).vi"/>
				<Item Name="TestStand - Close Termination Monitor.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUtility.llb/TestStand - Close Termination Monitor.vi"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
