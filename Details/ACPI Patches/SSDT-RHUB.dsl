DefinitionBlock ("", "SSDT", 2, "GLUCH", "RhubOff", 0x00001000)
{
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)

    Scope (_SB.PC00.XHCI.RHUB) // Full pathing to RHUB, change to yours
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }                    
    }  
}
