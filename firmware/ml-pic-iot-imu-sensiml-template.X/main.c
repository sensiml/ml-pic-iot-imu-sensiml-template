/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.171.1
        Device            :  PIC24FJ128GA705
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.70
        MPLAB 	          :  MPLAB X v5.50
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdint.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "ringbuffer.h"
#include "sensor.h"
#include "app_config.h"
#include "kb.h"
#if STREAM_FORMAT_IS(SMLSS)
#include "sensiml/ssi_comms.h"
#endif //STREAM_FORMAT_IS(SMLSS)

// *****************************************************************************
// *****************************************************************************
// Section: Platform specific includes
// *****************************************************************************
// *****************************************************************************
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/uart1.h"
#include "mcc_generated_files/tmr1.h"
#include "mcc_generated_files/pin_manager.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global variables
// *****************************************************************************
// *****************************************************************************

/* Must be large enough to hold the connect/disconnect strings from SensiML DCL */
static uint8_t _uartRxBuffer_data[128];
static ringbuffer_t uartRxBuffer;

static volatile uint32_t tickcounter = 0;
static volatile unsigned int tickrate = 0;

static struct sensor_device_t sensor;
static struct sensor_buffer_t snsr_buffer;

// *****************************************************************************
// *****************************************************************************
// Section: Platform specific stub definitions
// *****************************************************************************
// *****************************************************************************
void __attribute__ ( ( interrupt, no_auto_psv ) ) _U1RXInterrupt() {
    uint8_t *ptr;
    IFS0bits.U1RXIF = 0; // Clear interrupt
    if (UART_IsRxReady() && ringbuffer_get_write_buffer(&uartRxBuffer, &ptr)) {
        *ptr = U1RXREG; // Read a byte
        ringbuffer_advance_write_index(&uartRxBuffer, 1);
    }
}

static size_t __attribute__(( unused )) UART_Write(uint8_t *ptr, const size_t nbytes) {
    size_t bytecnt;
    for (bytecnt=0; bytecnt < nbytes; bytecnt++) {
        UART1_Write(*(ptr + bytecnt));
    }
    return bytecnt;
}

// *****************************************************************************
// *****************************************************************************
// Section: Generic stub definitions
// *****************************************************************************
// *****************************************************************************
void Null_Handler() {
    // Do nothing
}

static size_t __attribute__(( unused )) UART_Read(uint8_t *ptr, const size_t nbytes) {
    return ringbuffer_read(&uartRxBuffer, ptr, nbytes);
}

void Ticker_Callback() {
    static uint32_t mstick = 0;

    ++tickcounter;
    if (tickrate == 0) {
        mstick = 0;
    }
    else if (++mstick == tickrate) {
        LED_STATUS_Toggle();
        mstick = 0;
    }
}

uint64_t read_timer_ms(void) {
    return tickcounter;
}

uint64_t read_timer_us(void) {
    return tickcounter * 1000U + (uint32_t) TC_TimerGet_us();
}

void sleep_ms(uint32_t ms) {
    uint32_t t0 = read_timer_ms();
    while ((read_timer_ms() - t0) < ms) { };
}

void sleep_us(uint32_t us) {
    uint32_t t0 = read_timer_us();
    while ((read_timer_us() - t0) < us) { };
}

// For handling read of the sensor data
void SNSR_ISR_HANDLER() {
    /* Check if any errors we've flagged have been acknowledged */
    if (sensor.status != SNSR_STATUS_OK) {
        return;
    }
    
    buffer_data_t *ptr;
    if (buffer_get_write_buffer(&snsr_buffer, &ptr) \
        && (sensor.status = sensor_read(&sensor, ptr)) == SNSR_STATUS_OK) {
        buffer_advance_write_index(&snsr_buffer, 1);
    }
    else {
        snsr_buffer.overrun = true;
    }
}

#if STREAM_FORMAT_IS(SMLSS)
static char json_config_str[SML_MAX_CONFIG_STRLEN];

size_t ssi_build_json_config(char json_config_str[], size_t maxlen)
{
    size_t written=0;
    size_t snsr_index = 0;

    written += snprintf(json_config_str, maxlen,
                        "{\"version\":%d"
                        ",\"sample_rate\":%d"
                        ",\"samples_per_packet\":%d"
                        ",\"column_location\":{"
                        , SSI_JSON_CONFIG_VERSION, SNSR_SAMPLE_RATE, SNSR_SAMPLES_PER_PACKET);
#if SNSR_USE_ACCEL_X
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerX\":%d,", snsr_index++);
#endif
#if SNSR_USE_ACCEL_Y
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerY\":%d,", snsr_index++);
#endif
#if SNSR_USE_ACCEL_Z
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerZ\":%d,", snsr_index++);
#endif
#if SNSR_USE_GYRO_X
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeX\":%d,", snsr_index++);
#endif
#if SNSR_USE_GYRO_Y
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeY\":%d,", snsr_index++);
#endif
#if SNSR_USE_GYRO_Z
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeZ\":%d", snsr_index++);
#endif
    if(json_config_str[written-1] == ',')
    {
        written--;
    }
    snprintf(json_config_str+written, maxlen-written, "}}\n");

    return written;
}

#endif //STREAM_FORMAT_IS(SMLSS)

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    int8_t app_failed = 0;
#if STREAM_FORMAT_IS(SMLSS)
    uint32_t ssi_adtimer = 0;
    ssi_io_funcs_t ssi_io_s;
#endif

    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Register and start the millisecond interrupt ticker */
    TC_TimerCallbackRegister(Ticker_Callback);
    TC_TimerStart();

    sleep_ms(10u);
    
    /* Initialize our data buffer */
    buffer_init(&snsr_buffer);

    printf("Startup \n");

    /* Application init routine */
    app_failed = 1;
    while (1)
    {
        /* Initialize the UART RX buffer */
        if (ringbuffer_init(&uartRxBuffer, _uartRxBuffer_data, sizeof(_uartRxBuffer_data)))
            break;

        /* Discard any existing UART data */
        while (UART_IsRxReady())
            (void) UART_RX_DATA;

        /* Enable the RX interrupt */
        UART_RXC_Enable();

        /* Init and configure sensor */
        if (sensor_init(&sensor) != SNSR_STATUS_OK) {
            printf("ERROR: sensor init result = %d\n", sensor.status);
            break;
        }

        if (sensor_set_config(&sensor) != SNSR_STATUS_OK) {
            printf("ERROR: sensor configuration result = %d\n", sensor.status);
            break;
        }

        printf("sensor type is %s\n", SNSR_NAME);
        printf("sensor sample rate set at %dHz\n", SNSR_SAMPLE_RATE);
#if SNSR_USE_ACCEL
        printf("accelerometer axes %s%s%s enabled with range set at +/-%dGs\n", SNSR_USE_ACCEL_X ? "x" : "", SNSR_USE_ACCEL_Y ? "y" : "", SNSR_USE_ACCEL_Z ? "z" : "", SNSR_ACCEL_RANGE);
#else
        printf("accelerometer disabled\n");
#endif
#if SNSR_USE_GYRO
        printf("gyrometer axes %s%s%s enabled with range set at %dDPS\n", SNSR_USE_GYRO_X ? "x" : "", SNSR_USE_GYRO_Y ? "y" : "", SNSR_USE_GYRO_Z ? "z" : "", SNSR_GYRO_RANGE);
#else
        printf("gyrometer disabled\n");
#endif

#if STREAM_FORMAT_IS(SMLSS)
        /* Init SensiML simple-stream interface */
        ssi_io_s.ssi_read = UART_Read;
        ssi_io_s.ssi_write = UART_Write;
        ssi_io_s.connected = false;
        ssi_init(&ssi_io_s);
        ssi_build_json_config(json_config_str, SML_MAX_CONFIG_STRLEN);
#endif

        /* Activate External Interrupt Controller for sensor capture */
        MIKRO_INT_CallbackRegister(SNSR_ISR_HANDLER);

        /* STATE CHANGE - Application successfully initialized */
        tickrate = 0;
        LED_ALL_Off();
        LED_STATUS_On();

#if STREAM_FORMAT_IS(SMLSS)
        /* STATE CHANGE - Application now waiting for connect */
#elif !STREAM_FORMAT_IS(NONE)
        /* STATE CHANGE - Application is streaming */
        tickrate = TICK_RATE_SLOW;
#endif //STREAM_FORMAT_IS(SMLSS)
        kb_model_init();
        sml_output_init(NULL);
        app_failed = 0;
        break;
    }

    while (!app_failed)
    {
        /* Maintain state machines of all system modules. */
        SYS_Tasks ( );
        LED_RED_On();
        if (sensor.status != SNSR_STATUS_OK) {
            printf("ERROR: Got a bad sensor status: %d\n", sensor.status);
            break;
        }
        else if (snsr_buffer.overrun == true) {
            printf("\n\n\nOverrun!\n\n\n");

            /* STATE CHANGE - buffer overflow */
            tickrate = 0;
            LED_ALL_Off();
            LED_STATUS_On(); LED_RED_On();
            sleep_ms(3000U);

            // Clear OVERFLOW
            MIKRO_INT_CallbackRegister(Null_Handler);
            buffer_reset(&snsr_buffer);
            MIKRO_INT_CallbackRegister(SNSR_ISR_HANDLER);

            /* STATE CHANGE - Application is streaming */
            tickrate = TICK_RATE_SLOW;
            LED_ALL_Off();
            continue;
        }
#if !STREAM_FORMAT_IS(NONE)
        else if(buffer_get_read_frames(&snsr_buffer) >= SNSR_SAMPLES_PER_PACKET) {
            buffer_data_t *ptr;
            size_t rdcnt = buffer_get_read_buffer(&snsr_buffer, &ptr);
            while (rdcnt >= SNSR_SAMPLES_PER_PACKET) {
                int ret = sml_recognition_run((snsr_data_t *) ptr++,1, SNSR_NUM_AXES,0);    
                rdcnt -= SNSR_SAMPLES_PER_PACKET;
                ptr += SNSR_NUM_AXES * SNSR_SAMPLES_PER_PACKET;
                buffer_advance_read_index(&snsr_buffer, SNSR_SAMPLES_PER_PACKET);
            }
        }
#else   /* Template code for processing sensor data */
        else {
            buffer_data_t *ptr;
            int16_t Ax,Ay,Az;
            int16_t Gx, Gy, Gz;
            size_t rdcnt = buffer_get_read_buffer(&snsr_buffer, &ptr);
            printf("rdcnt = %u\n\r",rdcnt);
            while (rdcnt--) {
                Ax = *ptr++;
                Ay = *ptr++;
                Az = *ptr++;
                Gx = *ptr++;
                Gy = *ptr++;
                Gz = *ptr++;
                        
            //printf("what is in ptr? %i, %i %i\n\r",Ax,Ay,Az);
            //printf("what is in ptr? %i, %i %i\n\r",Gx,Gy,Gz);
            //ptr++;
                // process sesnsor data
            printf("rdcnt = %u\n\r",rdcnt);
                buffer_advance_read_index(&snsr_buffer, 1);
            }
        }
#endif //!STREAM_FORMAT_IS(NONE)

#if STREAM_FORMAT_IS(SMLSS)
        if (ssi_connected() && ringbuffer_get_read_bytes(&uartRxBuffer) >= DISCONNECT_CHARS) {
            ssi_try_disconnect();
            ringbuffer_advance_read_index(&uartRxBuffer, ringbuffer_get_read_bytes(&uartRxBuffer));
            if (!ssi_connected()) {
                /* STATE CHANGE - Application now waiting for connect */
                tickrate = 0;
                LED_ALL_Off();
                LED_STATUS_On();
            }
        }
#endif

    }

    tickrate = 0;
    LED_ALL_Off();
    LED_RED_On();

    return ( EXIT_FAILURE );
}

/**
 End of File
*/

