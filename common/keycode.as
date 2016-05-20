
#ifndef KEYCODE_AS
#define KEYCODE_AS

/*
 * Virtual Keys, Standard Set
 */
#define global VK_LBUTTON        0x01
#define global VK_RBUTTON        0x02
#define global VK_CANCEL         0x03
#define global VK_MBUTTON        0x04    /* NOT contiguous with L & RBUTTON */

#if(_WIN32_WINNT >= 0x0500)
#define global VK_XBUTTON1       0x05    /* NOT contiguous with L & RBUTTON */
#define global VK_XBUTTON2       0x06    /* NOT contiguous with L & RBUTTON */
#endif /* _WIN32_WINNT >= 0x0500 */

/*
 * 0x07 : unassigned
 */

#define global VK_BACK           0x08
#define global VK_TAB            0x09

/*
 * 0x0A - 0x0B : reserved
 */

#define global VK_CLEAR          0x0C
#define global VK_RETURN         0x0D

#define global VK_SHIFT          0x10
#define global VK_CONTROL        0x11
#define global VK_MENU           0x12
#define global VK_PAUSE          0x13
#define global VK_CAPITAL        0x14

#define global VK_KANA           0x15
#define global VK_HANGEUL        0x15  /* old name - should be here for compatibility */
#define global VK_HANGUL         0x15
#define global VK_JUNJA          0x17
#define global VK_FINAL          0x18
#define global VK_HANJA          0x19
#define global VK_KANJI          0x19

#define global VK_ESCAPE         0x1B

#define global VK_CONVERT        0x1C
#define global VK_NONCONVERT     0x1D
#define global VK_ACCEPT         0x1E
#define global VK_MODECHANGE     0x1F

#define global VK_SPACE          0x20
#define global VK_PRIOR          0x21
#define global VK_NEXT           0x22
#define global VK_END            0x23
#define global VK_HOME           0x24
#define global VK_LEFT           0x25
#define global VK_UP             0x26
#define global VK_RIGHT          0x27
#define global VK_DOWN           0x28
#define global VK_SELECT         0x29
#define global VK_PRINT          0x2A
#define global VK_EXECUTE        0x2B
#define global VK_SNAPSHOT       0x2C
#define global VK_INSERT         0x2D
#define global VK_DELETE         0x2E
#define global VK_HELP           0x2F

/*
 * VK_0 - VK_9 are the same as ASCII '0' - '9' (0x30 - 0x39)
 * 0x40 : unassigned
 * VK_A - VK_Z are the same as ASCII 'A' - 'Z' (0x41 - 0x5A)
 */

#define global VK_LWIN           0x5B
#define global VK_RWIN           0x5C
#define global VK_APPS           0x5D

/*
 * 0x5E : reserved
 */

#define global VK_SLEEP          0x5F

#define global VK_NUMPAD0        0x60
#define global VK_NUMPAD1        0x61
#define global VK_NUMPAD2        0x62
#define global VK_NUMPAD3        0x63
#define global VK_NUMPAD4        0x64
#define global VK_NUMPAD5        0x65
#define global VK_NUMPAD6        0x66
#define global VK_NUMPAD7        0x67
#define global VK_NUMPAD8        0x68
#define global VK_NUMPAD9        0x69
#define global VK_MULTIPLY       0x6A
#define global VK_ADD            0x6B
#define global VK_SEPARATOR      0x6C
#define global VK_SUBTRACT       0x6D
#define global VK_DECIMAL        0x6E
#define global VK_DIVIDE         0x6F
#define global VK_F1             0x70
#define global VK_F2             0x71
#define global VK_F3             0x72
#define global VK_F4             0x73
#define global VK_F5             0x74
#define global VK_F6             0x75
#define global VK_F7             0x76
#define global VK_F8             0x77
#define global VK_F9             0x78
#define global VK_F10            0x79
#define global VK_F11            0x7A
#define global VK_F12            0x7B
#define global VK_F13            0x7C
#define global VK_F14            0x7D
#define global VK_F15            0x7E
#define global VK_F16            0x7F
#define global VK_F17            0x80
#define global VK_F18            0x81
#define global VK_F19            0x82
#define global VK_F20            0x83
#define global VK_F21            0x84
#define global VK_F22            0x85
#define global VK_F23            0x86
#define global VK_F24            0x87

/*
 * 0x88 - 0x8F : unassigned
 */

#define global VK_NUMLOCK        0x90
#define global VK_SCROLL         0x91

/*
 * NEC PC-9800 kbd definitions
 */
#define global VK_OEM_NEC_EQUAL  0x92   // '=' key on numpad

/*
 * Fujitsu/OASYS kbd definitions
 */
#define global VK_OEM_FJ_JISHO   0x92   // 'Dictionary' key
#define global VK_OEM_FJ_MASSHOU 0x93   // 'Unregister word' key
#define global VK_OEM_FJ_TOUROKU 0x94   // 'Register word' key
#define global VK_OEM_FJ_LOYA    0x95   // 'Left OYAYUBI' key
#define global VK_OEM_FJ_ROYA    0x96   // 'Right OYAYUBI' key

/*
 * 0x97 - 0x9F : unassigned
 */

/*
 * VK_L* & VK_R* - left and right Alt, Ctrl and Shift virtual keys.
 * Used only as parameters to GetAsyncKeyState() and GetKeyState().
 * No other API or message will distinguish left and right keys in this way.
 */
#define global VK_LSHIFT         0xA0
#define global VK_RSHIFT         0xA1
#define global VK_LCONTROL       0xA2
#define global VK_RCONTROL       0xA3
#define global VK_LMENU          0xA4
#define global VK_RMENU          0xA5

#if(_WIN32_WINNT >= 0x0500)
#define global VK_BROWSER_BACK        0xA6
#define global VK_BROWSER_FORWARD     0xA7
#define global VK_BROWSER_REFRESH     0xA8
#define global VK_BROWSER_STOP        0xA9
#define global VK_BROWSER_SEARCH      0xAA
#define global VK_BROWSER_FAVORITES   0xAB
#define global VK_BROWSER_HOME        0xAC

#define global VK_VOLUME_MUTE         0xAD
#define global VK_VOLUME_DOWN         0xAE
#define global VK_VOLUME_UP           0xAF
#define global VK_MEDIA_NEXT_TRACK    0xB0
#define global VK_MEDIA_PREV_TRACK    0xB1
#define global VK_MEDIA_STOP          0xB2
#define global VK_MEDIA_PLAY_PAUSE    0xB3
#define global VK_LAUNCH_MAIL         0xB4
#define global VK_LAUNCH_MEDIA_SELECT 0xB5
#define global VK_LAUNCH_APP1         0xB6
#define global VK_LAUNCH_APP2         0xB7

#endif /* _WIN32_WINNT >= 0x0500 */

/*
 * 0xB8 - 0xB9 : reserved
 */

#define global VK_OEM_1          0xBA   // ';:' for US
#define global VK_OEM_PLUS       0xBB   // '+' any country
#define global VK_OEM_COMMA      0xBC   // ',' any country
#define global VK_OEM_MINUS      0xBD   // '-' any country
#define global VK_OEM_PERIOD     0xBE   // '.' any country
#define global VK_OEM_2          0xBF   // '/?' for US
#define global VK_OEM_3          0xC0   // '`~' for US

/*
 * 0xC1 - 0xD7 : reserved
 */

/*
 * 0xD8 - 0xDA : unassigned
 */

#define global VK_OEM_4          0xDB  //  '[{' for US
#define global VK_OEM_5          0xDC  //  '\|' for US
#define global VK_OEM_6          0xDD  //  ']}' for US
#define global VK_OEM_7          0xDE  //  ''"' for US
#define global VK_OEM_8          0xDF

/*
 * 0xE0 : reserved
 */

/*
 * Various extended or enhanced keyboards
 */
#define global VK_OEM_AX         0xE1  //  'AX' key on Japanese AX kbd
#define global VK_OEM_102        0xE2  //  "<>" or "\|" on RT 102-key kbd.
#define global VK_ICO_HELP       0xE3  //  Help key on ICO
#define global VK_ICO_00         0xE4  //  00 key on ICO

#if(WINVER >= 0x0400)
#define global VK_PROCESSKEY     0xE5
#endif /* WINVER >= 0x0400 */

#define global VK_ICO_CLEAR      0xE6


#if(_WIN32_WINNT >= 0x0500)
#define global VK_PACKET         0xE7
#endif /* _WIN32_WINNT >= 0x0500 */

/*
 * 0xE8 : unassigned
 */

/*
 * Nokia/Ericsson definitions
 */
#define global VK_OEM_RESET      0xE9
#define global VK_OEM_JUMP       0xEA
#define global VK_OEM_PA1        0xEB
#define global VK_OEM_PA2        0xEC
#define global VK_OEM_PA3        0xED
#define global VK_OEM_WSCTRL     0xEE
#define global VK_OEM_CUSEL      0xEF
#define global VK_OEM_ATTN       0xF0
#define global VK_OEM_FINISH     0xF1
#define global VK_OEM_COPY       0xF2
#define global VK_OEM_AUTO       0xF3
#define global VK_OEM_ENLW       0xF4
#define global VK_OEM_BACKTAB    0xF5

#define global VK_ATTN           0xF6
#define global VK_CRSEL          0xF7
#define global VK_EXSEL          0xF8
#define global VK_EREOF          0xF9
#define global VK_PLAY           0xFA
#define global VK_ZOOM           0xFB
#define global VK_NONAME         0xFC
#define global VK_PA1            0xFD
#define global VK_OEM_CLEAR      0xFE

/*
 * 0xFF : reserved
 */

#endif
