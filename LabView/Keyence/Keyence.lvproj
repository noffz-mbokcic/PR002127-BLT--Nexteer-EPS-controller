<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
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
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Convert Scanned HEX data to ASCII QR Code.vi" Type="VI" URL="../Convert Scanned HEX data to ASCII QR Code.vi"/>
			<Item Name="Send LON command to SR752.vi" Type="VI" URL="../Send LON command to SR752.vi"/>
		</Item>
		<Item Name="Initialize TCP Connection.vi" Type="VI" URL="../Initialize TCP Connection.vi"/>
		<Item Name="Read.vi" Type="VI" URL="../Read.vi"/>
		<Item Name="Deinitialize TCP Connection.vi" Type="VI" URL="../Deinitialize TCP Connection.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
