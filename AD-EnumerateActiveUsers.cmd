::===========================================================
::| AD-EnumerateActiveUsers.cmd                             |
::===========================================================
::|                                                         |
::| Created by:   Trey Donovan                              |
::| Last Updated: 01/19/12                                  |
::|                                                         |
::===========================================================
::|                                                         |
::| This script enumerates all active user objects in AD.   |
::| Results are sent to .\results.txt file.                 |
::|                                                         |
::===========================================================

dsquery user -samid * -limit 999 | dsget user -samid -disabled > results.txt
