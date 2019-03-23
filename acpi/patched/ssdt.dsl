/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140210-00 [Feb 10 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000036A (874)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00021500 (136448)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140210 (538182160)
 */

DefinitionBlock ("ssdt.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00021500)
{
    External (\_SB.SCK0.CP00, DeviceObj)
    External (\_SB.SCK0.CP01, DeviceObj)
    External (\_SB.SCK0.CP02, DeviceObj)
    External (\_SB.SCK0.CP03, DeviceObj)
    External (\_SB.SCK0.CP04, DeviceObj)
    External (\_SB.SCK0.CP05, DeviceObj)
    External (\_SB.SCK0.CP06, DeviceObj)
    External (\_SB.SCK0.CP07, DeviceObj)
    External (\_SB.SCK0.CP08, DeviceObj)
    External (\_SB.SCK0.CP09, DeviceObj)
    External (\_SB.SCK0.CP0A, DeviceObj)
    External (\_SB.SCK0.CP0B, DeviceObj)
    External (\_SB.SCK1.CP00, DeviceObj)
    External (\_SB.SCK1.CP01, DeviceObj)
    External (\_SB.SCK1.CP02, DeviceObj)
    External (\_SB.SCK1.CP03, DeviceObj)
    External (\_SB.SCK1.CP04, DeviceObj)
    External (\_SB.SCK1.CP05, DeviceObj)
    External (\_SB.SCK1.CP06, DeviceObj)
    External (\_SB.SCK1.CP07, DeviceObj)
    External (\_SB.SCK1.CP08, DeviceObj)
    External (\_SB.SCK1.CP09, DeviceObj)
    External (\_SB.SCK1.CP0A, DeviceObj)
    External (\_SB.SCK1.CP0B, DeviceObj)

    Scope (\_SB.SCK0.CP00)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store ("ssdtPRGen version.....: 21.5 / Mac OS X 10.13.5 (17F77)", Debug)
            Store ("custom mode...........: 0", Debug)
            Store ("host processor........: Intel(R) Xeon(R) CPU E5-2620 v2 @ 2.10GHz", Debug)
            Store ("target processor......: E5-2620 v2", Debug)
            Store ("number of processors..: 1", Debug)
            Store ("baseFrequency.........: 1200", Debug)
            Store ("frequency.............: 2100", Debug)
            Store ("busFrequency..........: 100", Debug)
            Store ("logicalCPUs...........: 24", Debug)
            Store ("maximum TDP...........: 80", Debug)
            Store ("packageLength.........: 15", Debug)
            Store ("turboStates...........: 5", Debug)
            Store ("maxTurboFrequency.....: 2600", Debug)
            Store ("CPU Workarounds.......: 3", Debug)
            Store ("machdep.xcpm.mode.....: 0", Debug)
        }

        Name (APLF, 0x05)
        Name (APSN, 0x06)
        Name (APSS, Package (0x15)
        {
            /* CPU Workaround #1 */
            Package (0x06) { 0x0A29, 0x013880, 0x0A, 0x0A, 0x1B00, 0x1B00 },
            /* High Frequency Modes (turbo) */
            Package (0x06) { 0x0A28, 0x013880, 0x0A, 0x0A, 0x1A00, 0x1A00 },
            Package (0x06) { 0x09C4, 0x013880, 0x0A, 0x0A, 0x1900, 0x1900 },
            Package (0x06) { 0x0960, 0x013880, 0x0A, 0x0A, 0x1800, 0x1800 },
            Package (0x06) { 0x08FC, 0x013880, 0x0A, 0x0A, 0x1700, 0x1700 },
            Package (0x06) { 0x0898, 0x013880, 0x0A, 0x0A, 0x1600, 0x1600 },
            /* High Frequency Modes (non-turbo) */
            Package (0x06) { 0x0834, 0x013880, 0x0A, 0x0A, 0x1500, 0x1500 },
            Package (0x06) { 0x07D0, 0x01263E, 0x0A, 0x0A, 0x1400, 0x1400 },
            Package (0x06) { 0x076C, 0x011459, 0x0A, 0x0A, 0x1300, 0x1300 },
            Package (0x06) { 0x0708, 0x0102CD, 0x0A, 0x0A, 0x1200, 0x1200 },
            Package (0x06) { 0x06A4, 0x00F19B, 0x0A, 0x0A, 0x1100, 0x1100 },
            Package (0x06) { 0x0640, 0x00E0C2, 0x0A, 0x0A, 0x1000, 0x1000 },
            Package (0x06) { 0x05DC, 0x00D041, 0x0A, 0x0A, 0x0F00, 0x0F00 },
            Package (0x06) { 0x0578, 0x00C017, 0x0A, 0x0A, 0x0E00, 0x0E00 },
            Package (0x06) { 0x0514, 0x00B043, 0x0A, 0x0A, 0x0D00, 0x0D00 },
            /* Low Frequency Mode */
            Package (0x06) { 0x04B0, 0x00A0C6, 0x0A, 0x0A, 0x0C00, 0x0C00 },
            Package (0x06) { 0x044C,     Zero, 0x0A, 0x0A, 0x0B00, 0x0B00 },
            Package (0x06) { 0x03E8,     Zero, 0x0A, 0x0A, 0x0A00, 0x0A00 },
            Package (0x06) { 0x0384,     Zero, 0x0A, 0x0A, 0x0900, 0x0900 },
            Package (0x06) { 0x0320,     Zero, 0x0A, 0x0A, 0x0800, 0x0800 },
            /* CPU Workaround #2 */
            Package (0x06) { 0x02BC,     Zero, 0x0A, 0x0A, 0x0700, 0x0700 }
        })

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP00.ACST Called", Debug)
            Store ("CP00 C-States    : 13", Debug)

            /* Low Power Modes for CP00 */
            Return (Package (0x05)
            {
                One,
                0x03,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    Zero,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xCD,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                }
            })
        }

        Method (_DSM, 4, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP00._DSM Called", Debug)

            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                    0x03
                })
            }

            Return (Package (0x02)
            {
                "plugin-type",
                One
            })
        }
    }

    Scope (\_SB.SCK0.CP01)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP01.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP01.ACST Called", Debug)
            Store ("CP01 C-States    : 13", Debug)

            /* Low Power Modes for CP01 */
            Return (Package (0x05)
            {
                One,
                0x03,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    0x03E8,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xC6,
                    0xC8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                }
            })
        }
    }

    Scope (\_SB.SCK0.CP02)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP02.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP03)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP03.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP04)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP04.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP05)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP05.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP06)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP06.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP07)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP07.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP08)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP08.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP09)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP09.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP0A)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP0A.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK0.CP0B)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP0B.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP00)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP00.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP01)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK0.CP01.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP02)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP02.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP03)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP03.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP04)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP04.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP05)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP05.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP06)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP06.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP07)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP07.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP08)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP08.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP09)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP09.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP0A)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP0A.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }

    Scope (\_SB.SCK1.CP0B)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.SCK1.CP0B.APSS Called", Debug)

            Return (\_SB.SCK0.CP00.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.SCK0.CP01.ACST ()) }
    }
}
