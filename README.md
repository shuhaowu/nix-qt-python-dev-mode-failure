Python + QT is broken in nix-shell
==================================

To reproduce:

1. Clone this repository.
2. `$ nix-shell`
3. `$ qt-test`
4. Watch the following error occur and the program crashes:
```
qt.qpa.plugin: Could not find the Qt platform plugin "xcb" in ""
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
```

However, outside of nix-shell is fine. To reproduce:

1. Clone this repository.
2. `$ nix-build`
3. `$ result/bin/qt-test`
4. See the hello world message.

What's going on??
