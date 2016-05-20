//Window Message
#define global WM_NULL                         0x0000
#define global WM_CREATE                       0x0001
#define global WM_DESTROY                      0x0002
#define global WM_MOVE                         0x0003
#define global WM_SIZE                         0x0005
#define global WM_ACTIVATE                     0x0006
#define global WM_SETFOCUS                     0x0007
#define global WM_KILLFOCUS                    0x0008
#define global WM_ENABLE                       0x000A
#define global WM_SETREDRAW                    0x000B
#define global WM_SETTEXT                      0x000C
#define global WM_GETTEXT                      0x000D
#define global WM_GETTEXTLENGTH                0x000E
#define global WM_PAINT                        0x000F
#define global WM_CLOSE                        0x0010
#define global WM_QUERYENDSESSION              0x0011
#define global WM_QUERYOPEN                    0x0013
#define global WM_ENDSESSION                   0x0016
#define global WM_QUIT                         0x0012
#define global WM_ERASEBKGND                   0x0014
#define global WM_SYSCOLORCHANGE               0x0015
#define global WM_SHOWWINDOW                   0x0018
#define global WM_WININICHANGE                 0x001A
#define global WM_SETTINGCHANGE                WM_WININICHANGE
#define global WM_DEVMODECHANGE                0x001B
#define global WM_ACTIVATEAPP                  0x001C
#define global WM_FONTCHANGE                   0x001D
#define global WM_TIMECHANGE                   0x001E
#define global WM_CANCELMODE                   0x001F
#define global WM_SETCURSOR                    0x0020
#define global WM_MOUSEACTIVATE                0x0021
#define global WM_CHILDACTIVATE                0x0022
#define global WM_QUEUESYNC                    0x0023
#define global WM_GETMINMAXINFO                0x0024
#define global WM_PAINTICON                    0x0026
#define global WM_ICONERASEBKGND               0x0027
#define global WM_NEXTDLGCTL                   0x0028
#define global WM_SPOOLERSTATUS                0x002A
#define global WM_DRAWITEM                     0x002B
#define global WM_MEASUREITEM                  0x002C
#define global WM_DELETEITEM                   0x002D
#define global WM_VKEYTOITEM                   0x002E
#define global WM_CHARTOITEM                   0x002F
#define global WM_SETFONT                      0x0030
#define global WM_GETFONT                      0x0031
#define global WM_SETHOTKEY                    0x0032
#define global WM_GETHOTKEY                    0x0033
#define global WM_QUERYDRAGICON                0x0037
#define global WM_COMPAREITEM                  0x0039
#define global WM_GETOBJECT                    0x003D
#define global WM_COMPACTING                   0x0041
#define global WM_COMMNOTIFY                   0x0044  /* no longer suported */
#define global WM_WINDOWPOSCHANGING            0x0046
#define global WM_WINDOWPOSCHANGED             0x0047
#define global WM_POWER                        0x0048
#define global WM_COPYDATA                     0x004A
#define global WM_CANCELJOURNAL                0x004B
#define global WM_NOTIFY                       0x004E
#define global WM_INPUTLANGCHANGEREQUEST       0x0050
#define global WM_INPUTLANGCHANGE              0x0051
#define global WM_TCARD                        0x0052
#define global WM_HELP                         0x0053
#define global WM_USERCHANGED                  0x0054
#define global WM_NOTIFYFORMAT                 0x0055
#define global WM_CONTEXTMENU                  0x007B
#define global WM_STYLECHANGING                0x007C
#define global WM_STYLECHANGED                 0x007D
#define global WM_DISPLAYCHANGE                0x007E
#define global WM_GETICON                      0x007F
#define global WM_SETICON                      0x0080
#define global WM_NCCREATE                     0x0081
#define global WM_NCDESTROY                    0x0082
#define global WM_NCCALCSIZE                   0x0083
#define global WM_NCHITTEST                    0x0084
#define global WM_NCPAINT                      0x0085
#define global WM_NCACTIVATE                   0x0086
#define global WM_GETDLGCODE                   0x0087
#define global WM_SYNCPAINT                    0x0088
#define global WM_NCMOUSEMOVE                  0x00A0
#define global WM_NCLBUTTONDOWN                0x00A1
#define global WM_NCLBUTTONUP                  0x00A2
#define global WM_NCLBUTTONDBLCLK              0x00A3
#define global WM_NCRBUTTONDOWN                0x00A4
#define global WM_NCRBUTTONUP                  0x00A5
#define global WM_NCRBUTTONDBLCLK              0x00A6
#define global WM_NCMBUTTONDOWN                0x00A7
#define global WM_NCMBUTTONUP                  0x00A8
#define global WM_NCMBUTTONDBLCLK              0x00A9
#define global WM_NCXBUTTONDOWN                0x00AB
#define global WM_NCXBUTTONUP                  0x00AC
#define global WM_NCXBUTTONDBLCLK              0x00AD
#define global WM_INPUT_DEVICE_CHANGE          0x00FE
#define global WM_INPUT                        0x00FF
#define global WM_KEYFIRST                     0x0100
#define global WM_KEYDOWN                      0x0100
#define global WM_KEYUP                        0x0101
#define global WM_CHAR                         0x0102
#define global WM_DEADCHAR                     0x0103
#define global WM_SYSKEYDOWN                   0x0104
#define global WM_SYSKEYUP                     0x0105
#define global WM_SYSCHAR                      0x0106
#define global WM_SYSDEADCHAR                  0x0107
#define global WM_UNICHAR                      0x0109
#define global WM_KEYLAST                      0x0108
#define global WM_IME_STARTCOMPOSITION         0x010D
#define global WM_IME_ENDCOMPOSITION           0x010E
#define global WM_IME_COMPOSITION              0x010F
#define global WM_IME_KEYLAST                  0x010F
#define global WM_INITDIALOG                   0x0110
#define global WM_COMMAND                      0x0111
#define global WM_SYSCOMMAND                   0x0112
#define global WM_TIMER                        0x0113
#define global WM_HSCROLL                      0x0114
#define global WM_VSCROLL                      0x0115
#define global WM_INITMENU                     0x0116
#define global WM_INITMENUPOPUP                0x0117
#define global WM_GESTURE                      0x0119
#define global WM_GESTURENOTIFY                0x011A
#define global WM_MENUSELECT                   0x011F
#define global WM_MENUCHAR                     0x0120
#define global WM_ENTERIDLE                    0x0121
#define global WM_MENURBUTTONUP                0x0122
#define global WM_MENUDRAG                     0x0123
#define global WM_MENUGETOBJECT                0x0124
#define global WM_UNINITMENUPOPUP              0x0125
#define global WM_MENUCOMMAND                  0x0126
#define global WM_CHANGEUISTATE                0x0127
#define global WM_UPDATEUISTATE                0x0128
#define global WM_QUERYUISTATE                 0x0129
#define global WM_CTLCOLORMSGBOX               0x0132
#define global WM_CTLCOLOREDIT                 0x0133
#define global WM_CTLCOLORLISTBOX              0x0134
#define global WM_CTLCOLORBTN                  0x0135
#define global WM_CTLCOLORDLG                  0x0136
#define global WM_CTLCOLORSCROLLBAR            0x0137
#define global WM_CTLCOLORSTATIC               0x0138
#define global WM_MOUSEFIRST                   0x0200
#define global WM_MOUSEMOVE                    0x0200
#define global WM_LBUTTONDOWN                  0x0201
#define global WM_LBUTTONUP                    0x0202
#define global WM_LBUTTONDBLCLK                0x0203
#define global WM_RBUTTONDOWN                  0x0204
#define global WM_RBUTTONUP                    0x0205
#define global WM_RBUTTONDBLCLK                0x0206
#define global WM_MBUTTONDOWN                  0x0207
#define global WM_MBUTTONUP                    0x0208
#define global WM_MBUTTONDBLCLK                0x0209
#define global WM_MOUSEWHEEL                   0x020A
#define global WM_XBUTTONDOWN                  0x020B
#define global WM_XBUTTONUP                    0x020C
#define global WM_XBUTTONDBLCLK                0x020D
#define global WM_MOUSEHWHEEL                  0x020E
#define global WM_PARENTNOTIFY                 0x0210
#define global WM_ENTERMENULOOP                0x0211
#define global WM_EXITMENULOOP                 0x0212
#define global WM_NEXTMENU                     0x0213
#define global WM_SIZING                       0x0214
#define global WM_CAPTURECHANGED               0x0215
#define global WM_MOVING                       0x0216
#define global WM_POWERBROADCAST               0x0218
#define global WM_DEVICECHANGE                 0x0219
#define global WM_MDICREATE                    0x0220
#define global WM_MDIDESTROY                   0x0221
#define global WM_MDIACTIVATE                  0x0222
#define global WM_MDIRESTORE                   0x0223
#define global WM_MDINEXT                      0x0224
#define global WM_MDIMAXIMIZE                  0x0225
#define global WM_MDITILE                      0x0226
#define global WM_MDICASCADE                   0x0227
#define global WM_MDIICONARRANGE               0x0228
#define global WM_MDIGETACTIVE                 0x0229
#define global WM_MDISETMENU                   0x0230
#define global WM_ENTERSIZEMOVE                0x0231
#define global WM_EXITSIZEMOVE                 0x0232
#define global WM_DROPFILES                    0x0233
#define global WM_MDIREFRESHMENU               0x0234
#define global WM_TOUCH                        0x0240
#define global WM_IME_SETCONTEXT               0x0281
#define global WM_IME_NOTIFY                   0x0282
#define global WM_IME_CONTROL                  0x0283
#define global WM_IME_COMPOSITIONFULL          0x0284
#define global WM_IME_SELECT                   0x0285
#define global WM_IME_CHAR                     0x0286
#define global WM_IME_REQUEST                  0x0288
#define global WM_IME_KEYDOWN                  0x0290
#define global WM_IME_KEYUP                    0x0291
#define global WM_MOUSEHOVER                   0x02A1
#define global WM_MOUSELEAVE                   0x02A3
#define global WM_NCMOUSEHOVER                 0x02A0
#define global WM_NCMOUSELEAVE                 0x02A2
#define global WM_WTSSESSION_CHANGE            0x02B1
#define global WM_TABLET_FIRST                 0x02c0
#define global WM_TABLET_LAST                  0x02df
#define global WM_CUT                          0x0300
#define global WM_COPY                         0x0301
#define global WM_PASTE                        0x0302
#define global WM_CLEAR                        0x0303
#define global WM_UNDO                         0x0304
#define global WM_RENDERFORMAT                 0x0305
#define global WM_RENDERALLFORMATS             0x0306
#define global WM_DESTROYCLIPBOARD             0x0307
#define global WM_DRAWCLIPBOARD                0x0308
#define global WM_PAINTCLIPBOARD               0x0309
#define global WM_VSCROLLCLIPBOARD             0x030A
#define global WM_SIZECLIPBOARD                0x030B
#define global WM_ASKCBFORMATNAME              0x030C
#define global WM_CHANGECBCHAIN                0x030D
#define global WM_HSCROLLCLIPBOARD             0x030E
#define global WM_QUERYNEWPALETTE              0x030F
#define global WM_PALETTEISCHANGING            0x0310
#define global WM_PALETTECHANGED               0x0311
#define global WM_HOTKEY                       0x0312
#define global WM_PRINT                        0x0317
#define global WM_PRINTCLIENT                  0x0318
#define global WM_APPCOMMAND                   0x0319
#define global WM_THEMECHANGED                 0x031A
#define global WM_CLIPBOARDUPDATE              0x031D
#define global WM_DWMCOMPOSITIONCHANGED        0x031E
#define global WM_DWMNCRENDERINGCHANGED        0x031F
#define global WM_DWMCOLORIZATIONCOLORCHANGED  0x0320
#define global WM_DWMWINDOWMAXIMIZEDCHANGE     0x0321
#define global WM_DWMSENDICONICTHUMBNAIL           0x0323
#define global WM_DWMSENDICONICLIVEPREVIEWBITMAP   0x0326
#define global WM_GETTITLEBARINFOEX            0x033F
#define global WM_HANDHELDFIRST                0x0358
#define global WM_HANDHELDLAST                 0x035F
#define global WM_AFXFIRST                     0x0360
#define global WM_AFXLAST                      0x037F
#define global WM_PENWINFIRST                  0x0380
#define global WM_PENWINLAST                   0x038F
#define	global WM_USER							0x0400
#define global WM_APP							0x8000

//Window Styles
#define global WS_OVERLAPPED       0x00000000
#define global WS_POPUP            0x80000000
#define global WS_CHILD            0x40000000
#define global WS_MINIMIZE         0x20000000
#define global WS_VISIBLE          0x10000000
#define global WS_DISABLED         0x08000000
#define global WS_CLIPSIBLINGS     0x04000000
#define global WS_CLIPCHILDREN     0x02000000
#define global WS_MAXIMIZE         0x01000000
#define global WS_CAPTION          0x00C00000     /* WS_BORDER | WS_DLGFRAME  */
#define global WS_BORDER           0x00800000
#define global WS_DLGFRAME         0x00400000
#define global WS_VSCROLL          0x00200000
#define global WS_HSCROLL          0x00100000
#define global WS_SYSMENU          0x00080000
#define global WS_THICKFRAME       0x00040000
#define global WS_GROUP            0x00020000
#define global WS_TABSTOP          0x00010000
#define global WS_MINIMIZEBOX      0x00020000
#define global WS_MAXIMIZEBOX      0x00010000
#define global WS_TILED            WS_OVERLAPPED
#define global WS_ICONIC           WS_MINIMIZE
#define global WS_SIZEBOX          WS_THICKFRAME
#define global WS_TILEDWINDOW      WS_OVERLAPPEDWINDOW
#define global WS_OVERLAPPEDWINDOW (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)
#define global WS_POPUPWINDOW      (WS_POPUP |  WS_BORDER | WS_SYSMENU)
#define global WS_CHILDWINDOW      WS_CHILD

//Extended Window Styles
#define global WS_EX_DLGMODALFRAME     0x00000001
#define global WS_EX_NOPARENTNOTIFY    0x00000004
#define global WS_EX_TOPMOST           0x00000008
#define global WS_EX_ACCEPTFILES       0x00000010
#define global WS_EX_TRANSPARENT       0x00000020
#define global WS_EX_MDICHILD          0x00000040
#define global WS_EX_TOOLWINDOW        0x00000080
#define global WS_EX_WINDOWEDGE        0x00000100
#define global WS_EX_CLIENTEDGE        0x00000200
#define global WS_EX_CONTEXTHELP       0x00000400
#define global WS_EX_RIGHT             0x00001000
#define global WS_EX_LEFT              0x00000000
#define global WS_EX_RTLREADING        0x00002000
#define global WS_EX_LTRREADING        0x00000000
#define global WS_EX_LEFTSCROLLBAR     0x00004000
#define global WS_EX_RIGHTSCROLLBAR    0x00000000
#define global WS_EX_CONTROLPARENT     0x00010000
#define global WS_EX_STATICEDGE        0x00020000
#define global WS_EX_APPWINDOW         0x00040000
#define global WS_EX_OVERLAPPEDWINDOW  (WS_EX_WINDOWEDGE | WS_EX_CLIENTEDGE)
#define global WS_EX_PALETTEWINDOW     (WS_EX_WINDOWEDGE | WS_EX_TOOLWINDOW | WS_EX_TOPMOST)
#define global WS_EX_LAYERED           0x00080000
#define global WS_EX_NOINHERITLAYOUT   0x00100000 // Disable inheritence of mirroring by children
#define global WS_EX_LAYOUTRTL         0x00400000 // Right to left mirroring
#define global WS_EX_COMPOSITED        0x02000000
#define global WS_EX_NOACTIVATE        0x08000000

// WindowLong
#define global GWL_WNDPROC         -4
#define global GWL_HINSTANCE       -6
#define global GWL_HWNDPARENT      -8
#define global GWL_STYLE           -16
#define global GWL_EXSTYLE         -20
#define global GWL_USERDATA        -21
#define global GWL_ID              -12

// begin_r_commctrl
#define global TVS_HASBUTTONS          0x0001
#define global TVS_HASLINES            0x0002
#define global TVS_LINESATROOT         0x0004
#define global TVS_EDITLABELS          0x0008
#define global TVS_DISABLEDRAGDROP     0x0010
#define global TVS_SHOWSELALWAYS       0x0020
#define global TVS_RTLREADING          0x0040
#define global TVS_NOTOOLTIPS          0x0080
#define global TVS_CHECKBOXES          0x0100
#define global TVS_TRACKSELECT         0x0200
#define global TVS_SINGLEEXPAND        0x0400
#define global TVS_INFOTIP             0x0800
#define global TVS_FULLROWSELECT       0x1000
#define global TVS_NOSCROLL            0x2000
#define global TVS_NONEVENHEIGHT       0x4000
#define global TVS_NOHSCROLL           0x8000  // TVS_NOSCROLL overrides this
#define global TVS_EX_MULTISELECT          0x0002
#define global TVS_EX_DOUBLEBUFFER         0x0004
#define global TVS_EX_NOINDENTSTATE        0x0008
#define global TVS_EX_RICHTOOLTIP          0x0010
#define global TVS_EX_AUTOHSCROLL          0x0020
#define global TVS_EX_FADEINOUTEXPANDOS    0x0040
#define global TVS_EX_PARTIALCHECKBOXES    0x0080
#define global TVS_EX_EXCLUSIONCHECKBOXES  0x0100
#define global TVS_EX_DIMMEDCHECKBOXES     0x0200
#define global TVS_EX_DRAWIMAGEASYNC       0x0400

//grachic
#define global SRCCOPY             0x00CC0020 /* dest = source                   */
#define global SRCPAINT            0x00EE0086 /* dest = source OR dest           */
#define global SRCAND              0x008800C6 /* dest = source AND dest          */
#define global SRCINVERT           0x00660046 /* dest = source XOR dest          */
#define global SRCERASE            0x00440328 /* dest = source AND (NOT dest )   */
#define global NOTSRCCOPY          0x00330008 /* dest = (NOT source)             */
#define global NOTSRCERASE         0x001100A6 /* dest = (NOT src) AND (NOT dest) */
#define global MERGECOPY           0x00C000CA /* dest = (source AND pattern)     */
#define global MERGEPAINT          0x00BB0226 /* dest = (NOT source) OR dest     */
#define global PATCOPY             0x00F00021 /* dest = pattern                  */
#define global PATPAINT            0x00FB0A09 /* dest = DPSnoo                   */
#define global PATINVERT           0x005A0049 /* dest = pattern XOR dest         */
#define global DSTINVERT           0x00550009 /* dest = (NOT dest)               */
#define global BLACKNESS           0x00000042 /* dest = BLACK                    */
#define global WHITENESS           0x00FF0062 /* dest = WHITE                    */
#define global NOMIRRORBITMAP      0x80000000 /* Do not Mirror the bitmap in this call */
#define global CAPTUREBLT          0x40000000 /* Include layered windows */

