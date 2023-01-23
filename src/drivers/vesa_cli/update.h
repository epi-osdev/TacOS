#ifndef __TOS_DRIVERS_VESA_CLI_UPDATE_H__
    #define __TOS_DRIVERS_VESA_CLI_UPDATE_H__

    #include "types.h"

/**
 * @brief Updates the screen with the new character
 * @param scancode The scancode of the key that was pressed
 * 
*/
void vesa_cli_update(uint8_t scancode);

#endif