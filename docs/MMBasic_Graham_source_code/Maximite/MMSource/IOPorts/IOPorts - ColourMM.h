/***********************************************************************************************************************
MMBasic

IOPorts - ColourMM.h

Include file that defines the IOPins for the PIC32 chip in the Colour Maximite version of MMBasic.
  
Copyright 2011, 2012 Geoff Graham.  All Rights Reserved.

This file and modified versions of this file are supplied to specific individuals or organisations under the following 
provisions:

- This file, or any files that comprise the MMBasic source (modified or not), may not be distributed or copied to any other
  person or organisation without written permission.

- Object files (.o and .hex files) generated using this file (modified or not) may not be distributed or copied to any other
  person or organisation without written permission.

- This file is provided in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

************************************************************************************************************************/

#if !defined(__32MX695F512L__) && !defined(__32MX795F512L__)
    #error Processor must be set to 32MX695F512L or 32MX795F512L
#endif

//#define FINALBUILD

// General defines
#define P_INPUT				1						// for setting the TRIS on I/O bits
#define P_OUTPUT			0
#define P_ON				1
#define P_OFF				0

// Constant definitions of the port registers in the 32MX695F512H, 32MX795F512H, 32MX695F512L or 32MX795F512L
#define ADDR_PORTA          (volatile unsigned int *)0xbf886010
#define ADDR_PORTB          ADDR_PORTA + 0x10
#define ADDR_PORTC          ADDR_PORTB + 0x10
#define ADDR_PORTD          ADDR_PORTC + 0x10
#define ADDR_PORTE          ADDR_PORTD + 0x10
#define ADDR_PORTF          ADDR_PORTE + 0x10
#define ADDR_PORTG          ADDR_PORTF + 0x10

// Structure that defines the SFR, bit number and mode for each I/O pin
struct s_PinDef {
    volatile unsigned int *sfr;
    int bitnbr;
    int mode;
};
    
// Defines for the various modes that an I/O pin can be set to
// Defines for the various modes that an I/O pin can be set to
#define UNUSED       (1 << 0)
#define ANALOG_IN    (1 << 1)
#define DIGITAL_IN   (1 << 2)
#define COUNTING     (1 << 3)
#define INTERRUPT    (1 << 4)
#define DIGITAL_OUT  (1 << 5)
#define OC_OUT       (1 << 6)
#define DO_NOT_RESET (1 << 7)

#define NBRPINS				40						// number of pins for external i/o
#define NBR_SERIAL_PORTS    2


// Define the structure for the I/O pins
// the first element of the structure contains a pointer to the SFR for the port to be used
// the second element is the bit number within that port to use
// the third is a set of flags that defines what that I/O pin can do
#if defined(DEFINE_PINDEF_TABLE)
struct s_PinDef PinDef[NBRPINS + 1] = {
    { NULL,  0, UNUSED | DO_NOT_RESET },                                              // pin 0
    { ADDR_PORTB,  5, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT },             // pin 1
    { ADDR_PORTB,  4, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 2
    { ADDR_PORTB,  3, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 3
    { ADDR_PORTB,  2, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 4
#if defined(FINALBUILD)
    { ADDR_PORTB,  1, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 5
    { ADDR_PORTB,  0, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 6
#else
    { NULL,  0, UNUSED | DO_NOT_RESET },                                              // dummy to be used when in circuit programming is used
    { NULL,  0, UNUSED | DO_NOT_RESET },                                              // ditto
#endif
    { ADDR_PORTB, 12, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 7
    { ADDR_PORTB, 13, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 8
    { ADDR_PORTB, 14, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 9
    { ADDR_PORTB, 15, ANALOG_IN | DIGITAL_IN | INTERRUPT | DIGITAL_OUT  },            // pin 10
    { ADDR_PORTE,  8, DIGITAL_IN | COUNTING | INTERRUPT | DIGITAL_OUT | OC_OUT },     // pin 11
    { ADDR_PORTA, 15, DIGITAL_IN | COUNTING | INTERRUPT | DIGITAL_OUT | OC_OUT },     // pin 12
    { ADDR_PORTA, 14, DIGITAL_IN | COUNTING | INTERRUPT | DIGITAL_OUT | OC_OUT },     // pin 13
    { ADDR_PORTE,  9, DIGITAL_IN | COUNTING | INTERRUPT | DIGITAL_OUT | OC_OUT },     // pin 14
    { ADDR_PORTG, 15, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 15
    { ADDR_PORTE,  5, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 16
    { ADDR_PORTC,  1, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 17
    { ADDR_PORTC,  2, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 18
    { ADDR_PORTC,  3, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 19
    { ADDR_PORTA,  0, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 20
    { ADDR_PORTD,  8, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 21  Arduino D0
    { ADDR_PORTD, 11, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 22  Arduino D1
    { ADDR_PORTD, 12, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 23  Arduino D2
    { ADDR_PORTD,  4, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 24  Arduino D3
    { ADDR_PORTF,  0, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 25  Arduino D4
    { ADDR_PORTF,  1, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 26  Arduino D5
    { ADDR_PORTG,  1, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 27  Arduino D6
    { ADDR_PORTG,  0, DIGITAL_IN | INTERRUPT | DIGITAL_OUT | OC_OUT },                // pin 28  Arduino D7
    { ADDR_PORTA,  6, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 29  Arduino D8
    { ADDR_PORTA,  7, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 30  Arduino D9
    { ADDR_PORTG, 14, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 31  Arduino D10
    { ADDR_PORTG, 12, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 32  Arduino D11
    { ADDR_PORTG, 13, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 33  Arduino D12
    { ADDR_PORTE,  4, DIGITAL_IN | DIGITAL_OUT | OC_OUT },                            // pin 34  Arduino D13
    { ADDR_PORTB,  8, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT },                         // pin 35  Arduino A0
    { ADDR_PORTB,  9, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT },                         // pin 36  Arduino A1
    { ADDR_PORTB, 10, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT },                         // pin 37  Arduino A2
    { ADDR_PORTB, 11, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT },                         // pin 38  Arduino A3
#if defined(FINALBUILD)
    { ADDR_PORTB,  7, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT },                         // pin 39  Arduino A4
    { ADDR_PORTB,  6, ANALOG_IN | DIGITAL_IN | DIGITAL_OUT }                          // pin 40  Arduino A5
#else
    { NULL,  0, UNUSED | DO_NOT_RESET },                                              // dummy to be used when in circuit programming is used
    { NULL,  0, UNUSED | DO_NOT_RESET },                                              // ditto
#endif
};

int UBW32Colour;                                    // set to true if this is the UBW32 version of the Colour Maximite

#else       // DEFINE_PINDEF_TABLE

extern struct s_PinDef PinDef[];
extern int UBW32Colour;

#endif      // !DEFINE_PINDEF_TABLE


#define P_BUTTON_IN_UBW32	PORTEbits.RE7	        // this is the program push button on the UBW32
#define P_BUTTON_IN_CMM		PORTCbits.RC13	        // this is the program push button on the Colour Maximite
#define P_BUTTON_IN_PULLUP	CNPUEbits.CNPUE1		// and its pullup

#define P_LED_OUT			LATEbits.LATE0			// this is the power LED
#define P_LED_TRIS			TRISEbits.TRISE0


// Define the pins that are associated with the external interrupts (used for counting)
#define INT1PIN             11
#define INT2PIN             14
#define INT3PIN             13
#define INT4PIN             12

// pin used for receiving IR messages
#define WAKEUP_PIN          12

// I2C definitions
#define P_I2C_SDA           12  // I/O pin number
#define P_I2C_SCL           13  // I/O pin number

                

// Keyboard definitions
#define P_PS2CLK			PORTDbits.RD13			// Pin 80 input  - Keyboard clock
#define P_PS2CLK_TRIS       TRISDbits.TRISD13       // tris
#define P_PS2CLK_OUT        LATDbits.LATD13         // output latch for the clock
#define P_PS2CLK_PULLUP		CNPUEbits.CNPUE19
#define P_PS2CLK_INT		CNENbits.CNEN19

#define P_PS2DAT			PORTDbits.RD7			// Pin 81 input  - Keyboard data
#define P_PS2DAT_TRIS       TRISDbits.TRISD7        // tris
#define P_PS2DAT_OUT        LATDbits.LATD7          // output latch for the data
#define P_PS2DAT_PULLUP		CNPUEbits.CNPUE16



// video defines
#define P_VGA_COMP			PORTCbits.RC14			// VGA/Composite jumper
#define P_VGA_SELECT		1						// state when VGA selected
#define P_VGA_COMP_PULLUP	CNPUEbits.CNPUE0

// RED channel.  Note: pin G9 is automatically set as the framing input
#define P_RED_SPI			SPI_CHANNEL2A			// the SPI peripheral used for video
#define P_RED_SPI_INPUT		SPI2ABUF				// input buffer for the SPI peripheral
#define P_RED_SPI_INTERRUPT	_SPI2A_TX_IRQ			// interrupt used by the video DMA

// GREEN channel.  Note: pin D9 is automatically set as the framing input
#define P_GRN_SPI			SPI_CHANNEL1			// the SPI peripheral used for video
#define P_GRN_SPI_INPUT		SPI1BUF			    	// input buffer for the SPI peripheral
#define P_GRN_SPI_INTERRUPT	_SPI1_TX_IRQ			// interrupt used by the video DMA

// BLUE channel.  Note: pin D14 is automatically set as the framing input
#define P_BLU_SPI			SPI_CHANNEL1A			// the SPI peripheral used for video
#define P_BLU_SPI_INPUT		SPI1ABUF				// input buffer for the SPI peripheral
#define P_BLU_SPI_INTERRUPT	_SPI1A_TX_IRQ			// interrupt used by the video DMA

#define P_VID_OC_OPEN       OpenOC3					// the function used to open the output compare (see video.c)
#define P_VID_OC_REG        OC3R                    // the output compare register

#define P_HORIZ				PORTDbits.RD2			// horizontal sync
#define P_HORIZ_TRIS		TRISDbits.TRISD2

#define P_VERT_SET_HI		LATASET = (1 << 4)		// set vert sync hi
#define P_VERT_SET_LO		LATACLR = (1 << 4)		// set vert sync lo
#define P_VERT_TRIS			TRISAbits.TRISA4



// SD card defines
// This file is included in SDCard/HardwareProfile.h and replaces the defines in that file
#define P_SD_LED_SET_HI		LATECLR = (1 << 1)		// SD card activity led - Note: Inverted
#define P_SD_LED_SET_LO		LATESET = (1 << 1)		// SD card activity led - Note: Inverted
#define P_SD_ACTIVITY_TRIS	TRISEbits.TRISE1

#define SD_CS_SET_HI        LATASET = (1 << 1)		// SD-SPI Chip Select Output bit high
#define SD_CS_SET_LO        LATACLR = (1 << 1)		// SD-SPI Chip Select Output bit low
#define SD_CS_TRIS          TRISAbits.TRISA1		// SD-SPI Chip Select TRIS bit

#define SD_CD               PORTDbits.RD5			// SD-SPI Card Detect Input bit
#define SD_CD_TRIS          TRISDbits.TRISD5		// SD-SPI Card Detect TRIS bit

#define SD_WE               PORTDbits.RD6			// SD-SPI Write Protect Check Input bit
#define SD_WE_TRIS          TRISDbits.TRISD6		// SD-SPI Write Protect Check TRIS bit

#define SPICON1             SPI3ACON				// The main SPI control register
#define SPISTAT             SPI3ASTAT				// The SPI status register
#define SPIBUF              SPI3ABUF				// The SPI Buffer
#define SPISTAT_RBF         SPI3ASTATbits.SPIRBF	// The receive buffer full bit in the SPI status register
#define SPICON1bits         SPI3ACONbits			// The bitwise define for the SPI control register (i.e. _____bits)
#define SPISTATbits         SPI3ASTATbits			// The bitwise define for the SPI status register (i.e. _____bits)
#define SPIENABLE           SPI3ACONbits.ON			// The enable bit for the SPI module
#define SPIBRG			    SPI3ABRG				// The definition for the SPI baud rate generator register (PIC32)

#define SPICLOCK            TRISFbits.TRISF13		// The TRIS bit for the SCK pin
#define SPIIN               TRISFbits.TRISF4		// The TRIS bit for the SDI pin
#define SPIOUT              TRISFbits.TRISF5		// The TRIS bit for the SDO pin

#define putcSPI(spichar)     SpiChnPutC(SPI_CHANNEL3A, spichar)	//SPI library functions
#define getcSPI()            SpiChnGetC(SPI_CHANNEL3A)
#define OpenSPI(config1, config2)   SpiChnOpen(SPI_CHANNEL3A, config1, config2)



// Serial ports defines
#define P_COM1_RX_PIN_NBR	15
#define P_COM1_RX_PORT		PORTGbits.RG15

#define P_COM1_TX_PIN_NBR	16
#define P_COM1_TX_SET_HI	LATESET = (1 << 5)
#define P_COM1_TX_SET_LO	LATECLR = (1 << 5)

#define P_COM1_RTS_PIN_NBR	17
#define P_COM1_RTS_SET_HI	LATCSET = (1 << 1)
#define P_COM1_RTS_SET_LO	LATCCLR = (1 << 1)

#define P_COM1_CTS_PIN_NBR	18
#define P_COM1_CTS_PORT		PORTCbits.RC2

#define P_COM2_RX_PIN_NBR	21
#define P_COM2_RX_PORT		PORTDbits.RD8

#define P_COM2_TX_PIN_NBR	22
#define P_COM2_TX_SET_HI	LATDSET = (1 << 11)
#define P_COM2_TX_SET_LO	LATDCLR = (1 << 11)



// sound output - Right Channel
#define P_SOUND_OPEN_OC     OpenOC2
#define P_SOUND_CLOSE_OC    CloseOC2
#define P_SOUND_SET_PWM     SetDCOC2PWM
#define P_SOUND_TRIS		TRISDbits.TRISD1

// sound output - Left Channel
#define P_SOUND2_OPEN_OC    OpenOC4
#define P_SOUND2_CLOSE_OC   CloseOC4
#define P_SOUND2_SET_PWM    SetDCOC4PWM
#define P_SOUND2_TRIS		TRISDbits.TRISD3


