##  Definitions of frame buffers

const
  FB_MAX* = 32

##  ioctls
##    0x46 is 'F'

const
  FBIOGET_VSCREENINFO* = 0x00004600
  FBIOPUT_VSCREENINFO* = 0x00004601
  FBIOGET_FSCREENINFO* = 0x00004602
  FBIOGETCMAP* = 0x00004604
  FBIOPUTCMAP* = 0x00004605
  FBIOPAN_DISPLAY* = 0x00004606
var
  FBIO_CURSOR* {.importc, header: "<linux/fb.h>".}: cint

##  0x4607-0x460B are defined below
##  #define FBIOGET_MONITORSPEC	0x460C
##  #define FBIOPUT_MONITORSPEC	0x460D
##  #define FBIOSWITCH_MONIBIT	0x460E

const
  FBIOGET_CON2FBMAP* = 0x0000460F
  FBIOPUT_CON2FBMAP* = 0x00004610
  FBIOBLANK* = 0x00004611
var
  FBIOGET_VBLANK* {.importc, header: "<linux/fb.h>".}: cint
const
  FBIO_ALLOC* = 0x00004613
  FBIO_FREE* = 0x00004614
  FBIOGET_GLYPH* = 0x00004615
  FBIOGET_HWCINFO* = 0x00004616
  FBIOPUT_MODEINFO* = 0x00004617
  FBIOGET_DISPINFO* = 0x00004618
var
  FBIO_WAITFORVSYNC* {.importc, header: "<linux/fb.h>".}: cint
const
  FB_TYPE_PACKED_PIXELS* = 0
  FB_TYPE_PLANES* = 1
  FB_TYPE_INTERLEAVED_PLANES* = 2
  FB_TYPE_TEXT* = 3
  FB_TYPE_VGA_PLANES* = 4
  FB_TYPE_FOURCC* = 5
  FB_AUX_TEXT_MDA* = 0
  FB_AUX_TEXT_CGA* = 1
  FB_AUX_TEXT_S3_MMIO* = 2
  FB_AUX_TEXT_MGA_STEP16* = 3
  FB_AUX_TEXT_MGA_STEP8* = 4
  FB_AUX_TEXT_SVGA_GROUP* = 8
  FB_AUX_TEXT_SVGA_MASK* = 7
  FB_AUX_TEXT_SVGA_STEP2* = 8
  FB_AUX_TEXT_SVGA_STEP4* = 9
  FB_AUX_TEXT_SVGA_STEP8* = 10
  FB_AUX_TEXT_SVGA_STEP16* = 11
  FB_AUX_TEXT_SVGA_LAST* = 15
  FB_AUX_VGA_PLANES_VGA4* = 0
  FB_AUX_VGA_PLANES_CFB4* = 1
  FB_AUX_VGA_PLANES_CFB8* = 2
  FB_VISUAL_MONO01* = 0
  FB_VISUAL_MONO10* = 1
  FB_VISUAL_TRUECOLOR* = 2
  FB_VISUAL_PSEUDOCOLOR* = 3
  FB_VISUAL_DIRECTCOLOR* = 4
  FB_VISUAL_STATIC_PSEUDOCOLOR* = 5
  FB_VISUAL_FOURCC* = 6
  FB_ACCEL_NONE* = 0
  FB_ACCEL_ATARIBLITT* = 1
  FB_ACCEL_AMIGABLITT* = 2
  FB_ACCEL_S3_TRIO64* = 3
  FB_ACCEL_NCR_77C32BLT* = 4
  FB_ACCEL_S3_VIRGE* = 5
  FB_ACCEL_ATI_MACH64GX* = 6
  FB_ACCEL_DEC_TGA* = 7
  FB_ACCEL_ATI_MACH64CT* = 8
  FB_ACCEL_ATI_MACH64VT* = 9
  FB_ACCEL_ATI_MACH64GT* = 10
  FB_ACCEL_SUN_CREATOR* = 11
  FB_ACCEL_SUN_CGSIX* = 12
  FB_ACCEL_SUN_LEO* = 13
  FB_ACCEL_IMS_TWINTURBO* = 14
  FB_ACCEL_3DLABS_PERMEDIA2* = 15
  FB_ACCEL_MATROX_MGA2064W* = 16
  FB_ACCEL_MATROX_MGA1064SG* = 17
  FB_ACCEL_MATROX_MGA2164W* = 18
  FB_ACCEL_MATROX_MGA2164W_AGP* = 19
  FB_ACCEL_MATROX_MGAG100* = 20
  FB_ACCEL_MATROX_MGAG200* = 21
  FB_ACCEL_SUN_CG14* = 22
  FB_ACCEL_SUN_BWTWO* = 23
  FB_ACCEL_SUN_CGTHREE* = 24
  FB_ACCEL_SUN_TCX* = 25
  FB_ACCEL_MATROX_MGAG400* = 26
  FB_ACCEL_NV3* = 27
  FB_ACCEL_NV4* = 28
  FB_ACCEL_NV5* = 29
  FB_ACCEL_CT_6555x* = 30
  FB_ACCEL_3DFX_BANSHEE* = 31
  FB_ACCEL_ATI_RAGE128* = 32
  FB_ACCEL_IGS_CYBER2000* = 33
  FB_ACCEL_IGS_CYBER2010* = 34
  FB_ACCEL_IGS_CYBER5000* = 35
  FB_ACCEL_SIS_GLAMOUR* = 36
  FB_ACCEL_3DLABS_PERMEDIA3* = 37
  FB_ACCEL_ATI_RADEON* = 38
  FB_ACCEL_I810* = 39
  FB_ACCEL_SIS_GLAMOUR_2* = 40
  FB_ACCEL_SIS_XABRE* = 41
  FB_ACCEL_I830* = 42
  FB_ACCEL_NV_10* = 43
  FB_ACCEL_NV_20* = 44
  FB_ACCEL_NV_30* = 45
  FB_ACCEL_NV_40* = 46
  FB_ACCEL_XGI_VOLARI_V* = 47
  FB_ACCEL_XGI_VOLARI_Z* = 48
  FB_ACCEL_OMAP1610* = 49
  FB_ACCEL_TRIDENT_TGUI* = 50
  FB_ACCEL_TRIDENT_3DIMAGE* = 51
  FB_ACCEL_TRIDENT_BLADE3D* = 52
  FB_ACCEL_TRIDENT_BLADEXP* = 53
  FB_ACCEL_CIRRUS_ALPINE* = 53
  FB_ACCEL_NEOMAGIC_NM2070* = 90
  FB_ACCEL_NEOMAGIC_NM2090* = 91
  FB_ACCEL_NEOMAGIC_NM2093* = 92
  FB_ACCEL_NEOMAGIC_NM2097* = 93
  FB_ACCEL_NEOMAGIC_NM2160* = 94
  FB_ACCEL_NEOMAGIC_NM2200* = 95
  FB_ACCEL_NEOMAGIC_NM2230* = 96
  FB_ACCEL_NEOMAGIC_NM2360* = 97
  FB_ACCEL_NEOMAGIC_NM2380* = 98
  FB_ACCEL_PXA3XX* = 99
  FB_ACCEL_SAVAGE4* = 0x00000080
  FB_ACCEL_SAVAGE3D* = 0x00000081
  FB_ACCEL_SAVAGE3D_MV* = 0x00000082
  FB_ACCEL_SAVAGE2000* = 0x00000083
  FB_ACCEL_SAVAGE_MX_MV* = 0x00000084
  FB_ACCEL_SAVAGE_MX* = 0x00000085
  FB_ACCEL_SAVAGE_IX_MV* = 0x00000086
  FB_ACCEL_SAVAGE_IX* = 0x00000087
  FB_ACCEL_PROSAVAGE_PM* = 0x00000088
  FB_ACCEL_PROSAVAGE_KM* = 0x00000089
  FB_ACCEL_S3TWISTER_P* = 0x0000008A
  FB_ACCEL_S3TWISTER_K* = 0x0000008B
  FB_ACCEL_SUPERSAVAGE* = 0x0000008C
  FB_ACCEL_PROSAVAGE_DDR* = 0x0000008D
  FB_ACCEL_PROSAVAGE_DDRK* = 0x0000008E
  FB_ACCEL_PUV3_UNIGFX* = 0x000000A0
  FB_CAP_FOURCC* = 1

type
  fb_fix_screeninfo* = object
    id*: array[16, char]        ##  identification string eg "TT Builtin"
    smem_start*: culong        ##  Start of frame buffer mem
                      ##  (physical address)
    smem_len*: uint32           ##  Length of frame buffer mem
    `type`*: uint32             ##  see FB_TYPE_*
    type_aux*: uint32           ##  Interleave for interleaved Planes
    visual*: uint32             ##  see FB_VISUAL_*
    xpanstep*: uint16           ##  zero if no hardware panning
    ypanstep*: uint16           ##  zero if no hardware panning
    ywrapstep*: uint16          ##  zero if no hardware ywrap
    line_length*: uint32        ##  length of a line in bytes
    mmio_start*: culong        ##  Start of Memory Mapped I/O
                      ##  (physical address)
    mmio_len*: uint32           ##  Length of Memory Mapped I/O
    accel*: uint32              ##  Indicate to driver which
                ##   specific chip/card we have
    capabilities*: uint16       ##  see FB_CAP_*
    reserved*: array[2, uint16]  ##  Reserved for future compatibility
  

##  Interpretation of offset for color fields: All offsets are from the right,
##  inside a "pixel" value, which is exactly 'bits_per_pixel' wide (means: you
##  can use the offset as right argument to <<). A pixel afterwards is a bit
##  stream and is written to video memory as that unmodified.
## 
##  For pseudocolor: offset and length should be the same for all color
##  components. Offset specifies the position of the least significant bit
##  of the pallette index in a pixel value. Length indicates the number
##  of available palette entries (i.e. # of entries = 1 << length).
## 

type
  fb_bitfield* = object
    offset*: uint32             ##  beginning of bitfield
    length*: uint32             ##  length of bitfield
    msb_right*: uint32          ##  != 0 : Most significant bit is
                    ##  right
  

const
  FB_NONSTD_HAM* = 1
  FB_NONSTD_REV_PIX_IN_B* = 2
  FB_ACTIVATE_NOW* = 0
  FB_ACTIVATE_NXTOPEN* = 1
  FB_ACTIVATE_TEST* = 2
  FB_ACTIVATE_MASK* = 15

##  values

const
  FB_ACTIVATE_VBL* = 16
  FB_CHANGE_CMAP_VBL* = 32
  FB_ACTIVATE_ALL* = 64
  FB_ACTIVATE_FORCE* = 128
  FB_ACTIVATE_INV_MODE* = 256
  FB_ACCELF_TEXT* = 1
  FB_SYNC_HOR_HIGH_ACT* = 1
  FB_SYNC_VERT_HIGH_ACT* = 2
  FB_SYNC_EXT* = 4
  FB_SYNC_COMP_HIGH_ACT* = 8
  FB_SYNC_BROADCAST* = 16

##  vtotal = 144d/288n/576i => PAL
##  vtotal = 121d/242n/484i => NTSC

const
  FB_SYNC_ON_GREEN* = 32
  FB_VMODE_NONINTERLACED* = 0
  FB_VMODE_INTERLACED* = 1
  FB_VMODE_DOUBLE* = 2
  FB_VMODE_ODD_FLD_FIRST* = 4
  FB_VMODE_MASK* = 255
  FB_VMODE_YWRAP* = 256
  FB_VMODE_SMOOTH_XPAN* = 512
  FB_VMODE_CONUPDATE* = 512

## 
##  Display rotation support
## 

const
  FB_ROTATE_UR* = 0
  FB_ROTATE_CW* = 1
  FB_ROTATE_UD* = 2
  FB_ROTATE_CCW* = 3

template PICOS2KHZ*(a: untyped): untyped =
  (1000000000 div (a))

template KHZ2PICOS*(a: untyped): untyped =
  (1000000000 div (a))

type
  fb_var_screeninfo* = object
    xres*: uint32               ##  visible resolution
    yres*: uint32
    xres_virtual*: uint32       ##  virtual resolution
    yres_virtual*: uint32
    xoffset*: uint32            ##  offset from virtual to visible
    yoffset*: uint32            ##  resolution
    bits_per_pixel*: uint32     ##  guess what
    grayscale*: uint32          ##  0 = color, 1 = grayscale,
                    ##  >1 = FOURCC
    red*: fb_bitfield          ##  bitfield in fb mem if true color,
    green*: fb_bitfield        ##  else only length is significant
    blue*: fb_bitfield
    transp*: fb_bitfield       ##  transparency
    nonstd*: uint32             ##  != 0 Non standard pixel format
    activate*: uint32           ##  see FB_ACTIVATE_*
    height*: uint32             ##  height of picture in mm
    width*: uint32              ##  width of picture in mm
    accel_flags*: uint32        ##  (OBSOLETE) see fb_info.flags
                      ##  Timing: All values in pixclocks, except pixclock (of course)
    pixclock*: uint32           ##  pixel clock in ps (pico seconds)
    left_margin*: uint32        ##  time from sync to picture
    right_margin*: uint32       ##  time from picture to sync
    upper_margin*: uint32       ##  time from sync to picture
    lower_margin*: uint32
    hsync_len*: uint32          ##  length of horizontal sync
    vsync_len*: uint32          ##  length of vertical sync
    sync*: uint32               ##  see FB_SYNC_*
    vmode*: uint32              ##  see FB_VMODE_*
    rotate*: uint32             ##  angle we rotate counter clockwise
    colorspace*: uint32         ##  colorspace for FOURCC-based modes
    reserved*: array[4, uint32]  ##  Reserved for future compatibility
  
  fb_cmap* = object
    start*: uint32              ##  First entry
    len*: uint32                ##  Number of entries
    red*: ptr uint16             ##  Red values
    green*: ptr uint16
    blue*: ptr uint16
    transp*: ptr uint16          ##  transparency, can be NULL
  
  fb_con2fbmap* = object
    console*: uint32
    framebuffer*: uint32


##  VESA Blanking Levels

const
  VESA_NO_BLANKING* = 0
  VESA_VSYNC_SUSPEND* = 1
  VESA_HSYNC_SUSPEND* = 2
  VESA_POWERDOWN* = 3

const                         ##  screen: unblanked, hsync: on,  vsync: on
  FB_BLANK_UNBLANK* = VESA_NO_BLANKING ##  screen: blanked,   hsync: on,  vsync: on
  FB_BLANK_NORMAL* = VESA_NO_BLANKING + 1 ##  screen: blanked,   hsync: on,  vsync: off
  FB_BLANK_VSYNC_SUSPEND* = VESA_VSYNC_SUSPEND + 1 ##  screen: blanked,   hsync: off, vsync: on
  FB_BLANK_HSYNC_SUSPEND* = VESA_HSYNC_SUSPEND + 1 ##  screen: blanked,   hsync: off, vsync: off
  FB_BLANK_POWERDOWN* = VESA_POWERDOWN + 1

const
  FB_VBLANK_VBLANKING* = 0x00000001
  FB_VBLANK_HBLANKING* = 0x00000002
  FB_VBLANK_HAVE_VBLANK* = 0x00000004
  FB_VBLANK_HAVE_HBLANK* = 0x00000008
  FB_VBLANK_HAVE_COUNT* = 0x00000010
  FB_VBLANK_HAVE_VCOUNT* = 0x00000020
  FB_VBLANK_HAVE_HCOUNT* = 0x00000040
  FB_VBLANK_VSYNCING* = 0x00000080
  FB_VBLANK_HAVE_VSYNC* = 0x00000100

type
  fb_vblank* = object
    flags*: uint32              ##  FB_VBLANK flags
    count*: uint32              ##  counter of retraces since boot
    vcount*: uint32             ##  current scanline position
    hcount*: uint32             ##  current scandot position
    reserved*: array[4, uint32]  ##  reserved for future compatibility
  

##  Internal HW accel

const
  ROP_COPY* = 0
  ROP_XOR* = 1

type
  fb_copyarea* = object
    dx*: uint32
    dy*: uint32
    width*: uint32
    height*: uint32
    sx*: uint32
    sy*: uint32

  fb_fillrect* = object
    dx*: uint32                 ##  screen-relative
    dy*: uint32
    width*: uint32
    height*: uint32
    color*: uint32
    rop*: uint32

  fb_image* = object
    dx*: uint32                 ##  Where to place image
    dy*: uint32
    width*: uint32              ##  Size of image
    height*: uint32
    fg_color*: uint32           ##  Only used when a mono bitmap
    bg_color*: uint32
    depth*: uint8               ##  Depth of the image
    data*: cstring             ##  Pointer to image data
    cmap*: fb_cmap             ##  color map info
  

## 
##  hardware cursor control
## 

const
  FB_CUR_SETIMAGE* = 0x00000001
  FB_CUR_SETPOS* = 0x00000002
  FB_CUR_SETHOT* = 0x00000004
  FB_CUR_SETCMAP* = 0x00000008
  FB_CUR_SETSHAPE* = 0x00000010
  FB_CUR_SETSIZE* = 0x00000020
  FB_CUR_SETALL* = 0x000000FF

type
  fbcurpos* = object
    x*: uint16
    y*: uint16

  fb_cursor* = object
    set*: uint16                ##  what to set
    enable*: uint16             ##  cursor on/off
    rop*: uint16                ##  bitop operation
    mask*: cstring             ##  cursor mask bits
    hot*: fbcurpos             ##  cursor hot spot
    image*: fb_image           ##  Cursor image
  

when defined(CONFIG_FB_BACKLIGHT):
  ##  Settings for the generic backlight code
  const
    FB_BACKLIGHT_LEVELS* = 128
    FB_BACKLIGHT_MAX* = 0x000000FF
