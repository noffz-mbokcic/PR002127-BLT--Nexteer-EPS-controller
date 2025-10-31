function readformatEvent() 
	local res = ""
	local delimiter =":"
	local code = ""
	local data = {""}
	code = readResult(1):readData()
	data[1] = str2hex(code)

--Add additional results to the output string here
--Example: 
--table.insert(data,readResult(1):matchingLevel())

--Sending data
	res=table.concat(data,str2hex(delimiter),1, table.getn(data))
	return (res)
end

--Helper functions

--returns HEX representation of str
function str2hex(str)
	local hex =""
	for i = 1, string.len(str) do
		hex=hex..string.format("%02X",string.byte(str,i))
        end
	return hex
end