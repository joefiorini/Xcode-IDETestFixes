# Xcode 4.4 IDETest Fix Plugin

Fixes missing selector error when running unit tests in Xcode 4.4 pre-releases. If you are running a pre-release of this Xcode try installing this plugin and see if that fixes unit test crashes.

## Instructions

### From source

- Clone repository and build/archive
- Distribute the archive and go to your DerivedData directory for the project
- Copy .xcplugin folder to `~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/`

### Pre-built binary

- Download the [pre-built plugin](https://github.com/downloads/joefiorini/Xcode-IDETestFixes/IDETestFixes.xcplugin.zip)
- Extract the zip file and copy the .xcplugin folder to `~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/`

### Credit

Many thanks to:

- [@martjinthe](http://github.com/martjinthe) for (the gist containing the code)[https://gist.github.com/1893437]
- [@davekeck](http://github.com/davekeck) for his (Xcode plugin examples)[https://github.com/davekeck/Xcode-4-Fixins] that helped me figure out how to write a real plugin
