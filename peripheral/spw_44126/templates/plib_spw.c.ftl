/*******************************************************************************
  SPW Peripheral Library
  Source File

  Company:
    Microchip Technology Inc.

  File Name:
    plib_${SPW_INSTANCE_NAME?lower_case}.c

  Summary:
    ${SPW_INSTANCE_NAME} PLIB Implementation file

  Description:
    This file defines the interface to the ${SPW_INSTANCE_NAME} peripheral library.
    This library provides access to and control of the associated peripheral
    instance.

*******************************************************************************/
// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "device.h"
#include "plib_${SPW_INSTANCE_NAME?lower_case}.h"
#include "plib_${SPW_INSTANCE_NAME?lower_case}_link.h"
#include "plib_${SPW_INSTANCE_NAME?lower_case}_router.h"
#include "plib_${SPW_INSTANCE_NAME?lower_case}_pktrx.h"
#include "plib_${SPW_INSTANCE_NAME?lower_case}_pkttx.h"
<#if .vars["${SPW_INSTANCE_NAME}_RMAP_EN"] == true>
#include "plib_${SPW_INSTANCE_NAME?lower_case}_rmap.h"
</#if>

// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************

<#if INTERRUPT_MODE == true>
static SPW_OBJ ${SPW_INSTANCE_NAME?lower_case}Obj;
</#if>

// *****************************************************************************
// *****************************************************************************
// ${SPW_INSTANCE_NAME} PLib Interface Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************

/* Function:
    void ${SPW_INSTANCE_NAME}_Initialize(void)

   Summary:
    Initializes given instance of the ${SPW_INSTANCE_NAME} peripheral.

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    None
*/
void ${SPW_INSTANCE_NAME}_Initialize(void)
{
    ${SPW_INSTANCE_NAME}_LINK_Initialize();

    ${SPW_INSTANCE_NAME}_ROUTER_Initialize();

<#if .vars["${SPW_INSTANCE_NAME}_RMAP_EN"] == true>
    ${SPW_INSTANCE_NAME}_RMAP_Initialize();
</#if>
}

<#if INTERRUPT_MODE == true>
// *****************************************************************************
/* Function:
    void ${SPW_INSTANCE_NAME}_CallbackRegister(SPW_CALLBACK callback, uintptr_t contextHandle)

   Summary:
    Sets the pointer to the function (and it's context) to be called when the
    given SPW's interrupt events occur.

  Description:
    This function sets the pointer to a client function to be called "back" when
    the given SPW's interrupt events occur. It also passes a context value
    (usually a pointer to a context structure) that is passed into the function
    when it is called. The specified callback function will be called from the
    peripheral interrupt context.

  Precondition:
    ${SPW_INSTANCE_NAME}_Initialize must have been called for the associated
    SPW instance.

  Parameters:
    callback      - A pointer to a function with a calling signature defined by
                    the SPW_CALLBACK data type. Setting this to NULL
                    disables the callback feature.

    contextHandle - A value (usually a pointer) passed (unused) into the
                    function identified by the callback parameter.

  Returns:
    None.

  Example:
    <code>
        // Refer to the description of the SPW_CALLBACK data type for
        // example usage.
    </code>

  Remarks:
    None.
*/
void ${SPW_INSTANCE_NAME}_CallbackRegister(SPW_CALLBACK callback, uintptr_t contextHandle)
{
    if ( callback == NULL )
    {
        return;
    }

    ${SPW_INSTANCE_NAME?lower_case}Obj.callback = callback;
    ${SPW_INSTANCE_NAME?lower_case}Obj.context = contextHandle;
}

// *****************************************************************************
/* Function:
    void ${SPW_INSTANCE_NAME}_InterruptHandler(void)

   Summary:
    ${SPW_INSTANCE_NAME} Peripheral Interrupt Handler.

   Description:
    This function is ${SPW_INSTANCE_NAME} Peripheral Interrupt Handler and will
    called on every ${SPW_INSTANCE_NAME} interrupt.

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    None.

   Remarks:
    The function is called as peripheral instance's interrupt handler if the
    instance interrupt is enabled. If peripheral instance's interrupt is not
    enabled user need to call it from the main while loop of the application.
*/
void ${SPW_INSTANCE_NAME}_InterruptHandler(void)
{
    SPW_INT_MASK status = SPW_INT_MASK_NONE;

    // Get interrupt group status 1 and 2
    uint32_t group1 = SPW_REGS->SPW_GROUP_IRQSTS1;
    uint32_t group2 = SPW_REGS->SPW_GROUP_IRQSTS2;
    
    if ( group1 & SPW_GROUP_IRQSTS1_TX1_Msk )
        status |= SPW_INT_MASK_PKTTX1;
    if ( group1 & SPW_GROUP_IRQSTS1_RX1_Msk )
        status |= SPW_INT_MASK_PKTRX1;
    if ( group1 & SPW_GROUP_IRQSTS1_TCH_Msk )
        status |= SPW_INT_MASK_TCH;
    if ( group2 & SPW_GROUP_IRQSTS2_Link2_Msk )
        status |= SPW_INT_MASK_LINK2;
    if ( group2 & SPW_GROUP_IRQSTS2_Dia2_Msk )
        status |= SPW_INT_MASK_DIA2;
    if ( group2 & SPW_GROUP_IRQSTS2_Di2_Msk )
        status |= SPW_INT_MASK_DI2;
    if ( group2 & SPW_GROUP_IRQSTS2_Link1_Msk )
        status |= SPW_INT_MASK_LINK1;
    if ( group2 & SPW_GROUP_IRQSTS2_Dia1_Msk )
        status |= SPW_INT_MASK_DIA1;
    if ( group2 & SPW_GROUP_IRQSTS2_Di1_Msk )
        status |= SPW_INT_MASK_DI1;

    if ( ${SPW_INSTANCE_NAME?lower_case}Obj.callback != NULL )
    {
        ${SPW_INSTANCE_NAME?lower_case}Obj.callback(status, ${SPW_INSTANCE_NAME?lower_case}Obj.context);
    }
}
</#if>
