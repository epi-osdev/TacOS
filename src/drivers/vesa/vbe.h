#ifndef __TOS_DRIVERS_VESA_VBE_H__
    #define __TOS_DRIVERS_VESA_VBE_H__

    #include "types.h"

typedef struct {
    char VbeSignature[4];                   // VBE Signature
    uint16_t VbeVersion;                         // VBE version number
    char *OEMStringPtr;                     // Pointer to OEM string
    uint32_t Capabilities;                       // Capabilities of video card
    uint32_t *VideoModePtr;                      // Pointer to supported modes
    uint16_t TotalMemory;                        // Number of 64kb memory blocks
    uint16_t OemSoftwareRev;                     // VBE implementation Software revision
    uint32_t OemVendorNamePtr;                   // Pointer to Vendor Name String
    uint32_t OemProductNamePtr;                  // Pointer to Product Name String
    uint32_t OemProductRevPtr;                   // Pointer to Product Revision String
    char reserved[222];                     // Pad to 256 byte block size
    char OemData[256];                      // Data Area for OEM Strings
} __attribute__ ((packed)) VBE20_INFOBLOCK;

typedef struct {
    // Mandatory information for all VBE revisions
    uint16_t ModeAttributes;                     // Mode attributes
    uint8_t WinAAttributes;                      // Window A attributes
    uint8_t WinBAttributes;                      // Window B attributes
    uint16_t WinGranularity;                     // Window granularity in k
    uint16_t WinSize;                            // Window size in k
    uint16_t WinASegment;                        // Window A segment
    uint16_t WinBSegment;                        // Window B segment
    void (*WinFuncPtr)(void);                // Pointer to window function
    uint16_t BytesPerScanLine;                   // Bytes per scanline

    // Mandatory information for VBE 1.2 and above
    uint16_t XResolution;                        // Horizontal resolution
    uint16_t YResolution;                        // Vertical resolution
    uint8_t XCharSize;                           // Character cell width
    uint8_t YCharSize;                           // Character cell height
    uint8_t NumberOfPlanes;                      // Number of memory planes
    uint8_t BitsPerPixel;                        // Bits per pixel
    uint8_t NumberOfBanks;                       // Number of CGA style banks
    uint8_t MemoryModel;                         // Memory model type
    uint8_t BankSize;                            // Size of CGA style banks
    uint8_t NumberOfImagePages;                  // Number of images pages
    uint8_t Reserved;                            // Reserved

    // Direct color fields
    uint8_t RedMaskSize;                         // Size of direct color red mask
    uint8_t RedFieldPosition;                    // Bit posn of lsb of red mask
    uint8_t GreenMaskSize;                       // Size of direct color green mask
    uint8_t GreenFieldPosition;                  // Bit posn of lsb of green mask
    uint8_t BlueMaskSize;                        // Size of direct color blue mask
    uint8_t BlueFieldPosition;                   // Bit posn of lsb of blue mask
    uint8_t RsvdMaskSize;                        // Size of direct color res mask
    uint8_t RsvdFieldPosition;                   // Bit posn of lsb of res mask
    uint8_t DirectColorModeInfo;                 // Direct color mode attributes

    // Mandatory information for VBE 2.0 and above
    uint32_t PhysBasePtr;                        // physical address for flat frame buffer
    uint32_t OffScreenMemOffset;                 // pointer to start of off screen memory
    uint16_t OffScreenMemSize;                   // amount of off screen memory in 1k units
    uint8_t Reserved2[206];                      // remainder of ModeInfoBlock
} VBE20_MODEINFOBLOCK;

#endif