DefinitionBlock ("", "SSDT", 2, "GLUCH", "HPET", 0x00000000)
{
    External (\_SB.PC00.LPCB, DeviceObj)
    External (\_SB.PC00.LPCB.HPET, DeviceObj)

    Name (\_SB.PC00.LPCB.HPET._CRS, ResourceTemplate ()
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,
            0x00000400,
            )
    })
}
