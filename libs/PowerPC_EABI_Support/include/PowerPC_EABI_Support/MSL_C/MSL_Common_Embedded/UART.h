#ifndef _UART_H
#define _UART_H

typedef int UARTError;

 enum {
	kUARTNoError = 0,
	kUARTUnknownBaudRate,
	kUARTConfigurationError,
	kUARTBufferOverflow, /* specified buffer was too small */
	kUARTNoData          /* no data available from polling */
};

typedef enum {
	kBaudHWSet  = -1,  /* use HW settings such as DIP switches */
	kBaud300    = 300, /* valid baud rates */
	kBaud600    = 600,
	kBaud1200   = 1200,
	kBaud1800   = 1800,
	kBaud2000   = 2000,
	kBaud2400   = 2400,
	kBaud3600   = 3600,
	kBaud4800   = 4800,
	kBaud7200   = 7200,
	kBaud9600   = 9600,
	kBaud19200  = 19200,
	kBaud38400  = 38400,
	kBaud57600  = 57600,
	kBaud115200 = 115200,
	kBaud230400 = 230400
} UARTBaudRate;

extern UARTError InitializeUART(UARTBaudRate baudRate);
extern UARTError WriteUARTN(const void* bytes, unsigned long length);

#endif
