@echo on
    cd /d c:\Windows\system32
    netsh wlan set hostednetwork mode=allow ssid=oblank key=dandelion
    netsh wlan start hostednetwork
@echo off
:loop
goto loop