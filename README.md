# DialogModule (Originally was a GameMaker Extension)
Cross-platform native dialog boxes which match your desktop environment and support a multiple file filter drop down box. Uses `kdialog` for Qt dialogs on KDE-based Free Desktop platforms, (which is based on whether the `XDG_CURRENT_DESKTOP` environment variable is equal to `KDE`), `zenity` for GTK on non-KDE-based Free Desktop platforms, WinAPI on Windows, AppKit on macOS. Supports Windows, macOS, Linux, FreeBSD, DragonFly BSD, NetBSD, OpenBSD, Solaris, and illumos. No third-party dependencies. If `kdialog` or `zenity` do not exist on the target Free Desktop platform you can use whatever fallback of your choosing. Requires setting an owner window handle in order to function properly: `HWND` on Windows, `NSWindow *` on macOS, or X11/Xlib `Window`. The owner window handle needs to be casted to an unsigned integer pointer, wrapped into a C-string, and then passed to `widget_set_owner(owner)`. Click the animated GIF slideshows below to view documentation and screenshots:

[![win32.gif](resources/win32.gif)](resources/win32/README.md)

[![macos.gif](resources/macos.gif)](resources/macos/README.md)

[![linux.gif](resources/linux.gif)](resources/linux/README.md)
