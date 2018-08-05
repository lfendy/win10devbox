<!-- :
echo ==^> Running Windows Update
cscript //nologo "%~f0?.wsf"
exit /b

----- Begin wsf script --->
<job><script language="VBScript">
Option Explicit

deleteStartupEntry

ExecutePostInstallBatch
WScript.Quit

Sub ExecutePostInstallBatch
    Dim fso
    Set fso = CreateObject("Scripting.FileSystemObject")

    If (fso.FileExists("a:\_post_update_install.bat")) Then
        Dim objShell
        Set objShell = WScript.CreateObject("WScript.Shell")
        objShell.Run "a:\_post_update_install.bat"
    End If
End Sub

Sub LogWrite(message)
    Dim strFile, objFSO, objFile
    Const ForAppending = 8
    strFile = "C:\Windows\Temp\windows-update.log"
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFile = objFSO.OpenTextFile(strFile, ForAppending, True)
    objFile.WriteLine(Now & ": " & message)
    WScript.Echo message
    objFile.Close
End Sub

</script></job>
