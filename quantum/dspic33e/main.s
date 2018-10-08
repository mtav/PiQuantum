	/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
	* File Name: main.s
	*
	* Type: SOURCE
	*
	* Title: Matrix arithmetic test
	*
	* Purpose: To test the ability of the dsPIC33 family at performing
	*          fast 2 by 2 matrix manipulations.
	*
	* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

	.include "p33EP512MU810.inc" ; Macros for dsPIC33EP512MU810 device
	.include "io.inc"            ; Include input/output configuration

	; ============================== CONFIG BITS =========================

	; FGS
	    ;General Segment may be written
	    ;General Segment Code protect is disabled
	    ;General Segment Write Protection and Code Protection is Disabled
	    config __FGS, GWRP_OFF & GSS_OFF & GSSK_OFF

	; FOSCSEL
	    ;Start processor with user selected oscillator source
	    ;User selected oscillator source = Primary Oscillator (External to device)
	    config __FOSCSEL, IESO_ON & FNOSC_PRI

	; FOSC
	    ;Primary Oscillator mode = XT (3.5MHz < Clock Frequency < 10MHz)
	    ;OSC2 is clock output
	    ;Allow multiple Peripheral Pin Select reconfigurations
	    ;Clock switching enabled, Fail-safe Clock Monitor disabled
	    config __FOSC, POSCMD_XT & OSCIOFNC_OFF & IOL1WAY_OFF & FCKSM_CSECMD

	; FWDT
	    ;Set Watchdog Timer Postscaler Bits (1:32,768)
	    ;Set Watchdog Timer Prescaler bit (1:128)
	    ;Clock switch to PLL source will wait until the PLL lock signal is valid.
	    ;Watchdog Timer in Non-Window mode
	    ;Watchdog timer enabled/disabled by user software
	    config __FWDT, WDTPOST_PS32768 & WDTPRE_PR128 & PLLKEN_ON & WINDIS_OFF & FWDTEN_OFF

	; FPOR
	    ;Set Power-on Reset Timer Value (128ms)
	    ;Set Brown-out Reset Detection Enable bit (BOR is enabled)
	    ;ASDA1/ASCK1 pins are selected as the I/O pins for I2C1
	    ;SDA2/SCK2 pins are selected as the I/O pins for I2C2
	    config __FPOR, FPWRT_PWR128 & BOREN_ON & ALTI2C1_ON & ALTI2C2_OFF

	; FICD
	    ;Set ICD Communication Channel Select bits (Communicate on PGEC1 and PGED1)
	    ;Device will obtain reset instruction from Primary flash
	    ;JTAG is disabled
	    config __FICD, ICS_PGD1 & RSTPRI_PF & JTAGEN_OFF

	; FAS
	    ;Auxiliary program memory is not write-protected
	    ;Aux Flash Code protect is disabled
	    ;Aux Flash Write Protection and Code Protection is Disabled
	    config __FAS, AWRP_OFF & APL_OFF & APLK_OFF

	; ============================== DECLARATIONS ========================

	; Code Entry Point
	.global _main

	; Default interrupt names
	.global __OscillatorFail    ; Oscillator fail trap
	.global __AddressError      ; Address error trap
	.global __HardTrapError     ; Generic hard trap
	.global __StackError        ; Stack error trap
	.global __MathError         ; Math error trap
	.global __DMACError         ; Direct memory access trap
	.global __SoftTrapError     ; Generic soft trap

	.text
	; ============================ CODE ==================================

	; First thing to run after Power-on Reset
	_main:

	    RCALL   IO.SUB.CONFIG   ; Configure input/output

	; ======================== MAIN ROUTINE ==============================

	    ; Signal to indicate that the program is running
	    RCALL   IO.SUB.green_flash
	    
	0:  BRA     0b


	; =========================== TRAP ERRORS ============================

	__OscillatorFail:
	    0:
	    BRA 0b

	__AddressError:
	    0:
	    BRA 0b

	__HardTrapError:
	    0:
	    BRA 0b

	__StackError:
	    0:
	    BRA 0b

	__MathError:
	    0:
	    BRA 0b

	__DMACError:
	    0:
	    BRA 0b

	__SoftTrapError:

	NOP
	NOP
	NOP

	; INTCON1
	; IFS5
	; U1EIR
	; U1IR


	    0:
	    BRA 0b





