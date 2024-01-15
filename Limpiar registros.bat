@echo off

:: Ruta de los registros
:: %SystemRoot%\System32\Winevt\Logs\Application.evtx
:: %SystemRoot%\System32\Winevt\Logs\Security.evtx
:: %SystemRoot%\System32\Winevt\Logs\Setup.evtx
:: %SystemRoot%\System32\Winevt\Logs\System.evtx


wevtutil el | foreach-object {wevtutil cl $_}