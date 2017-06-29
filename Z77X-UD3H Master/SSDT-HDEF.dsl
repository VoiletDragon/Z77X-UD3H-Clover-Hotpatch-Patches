//DefinitionBlock ("", "SSDT", 2, "APPLE ", "SSDT-HDE", 0x00001000)
//{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.HDEF)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "VIA Audio Controller", 
                    "model", 
                    Buffer (0x37)
                    {
                        "VIA VT2021 Audio Controller"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "Audio Controller"
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x0C, 0x00, 0x00, 0x00                         
                    }, 

                    "PinConfigurations", 
                    Buffer (0x30)
                    {
                        /* 0000 */  0x10, 0x40, 0x11, 0x01, 0xF0, 0x00, 0x00, 0x40,
                        /* 0008 */  0xF0, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x40,
                        /* 0010 */  0xF0, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x40,
                        /* 0018 */  0x50, 0x30, 0x81, 0x01, 0x60, 0x90, 0xA1, 0x90,
                        /* 0020 */  0xF0, 0x00, 0x00, 0x40, 0x20, 0x21, 0x45, 0x07,
                        /* 0028 */  0xF0, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x40 
                    }, 

                    "MaximumBootBeepVolume", 
                    Buffer (One)
                    {
                         0x40                                           
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }
    }
//}

