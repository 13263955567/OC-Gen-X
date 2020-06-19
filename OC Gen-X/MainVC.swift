import Cocoa

class MainVC: NSViewController {
    
    @IBOutlet weak var ivyBridgeChecked: NSButton!
    @IBOutlet weak var haswellChecked: NSButton!
    @IBOutlet weak var skylakeChecked: NSButton!
    @IBOutlet weak var kabylakeChecked: NSButton!
    @IBOutlet weak var haswellEChecked: NSButton!
    @IBOutlet weak var broadwellEChecked: NSButton!
    @IBOutlet weak var skylakeXChecked: NSButton!
    @IBOutlet weak var ryzenChecked: NSButton!
    @IBOutlet weak var coffeelakeChecked: NSButton!
    @IBOutlet weak var bulldozerChecked: NSButton!
    @IBOutlet weak var threadripperChecked: NSButton!
    @IBOutlet weak var liluChecked: NSButton!
    @IBOutlet weak var virtualSMCChecked: NSButton!
    @IBOutlet weak var smcProcessorChecked: NSButton!
    @IBOutlet weak var smcSuperIOChecked: NSButton!
    @IBOutlet weak var smcLightSensorChecked: NSButton!
    @IBOutlet weak var smcBatteryManagerChecked: NSButton!
    @IBOutlet weak var whatevergreenChecked: NSButton!
    @IBOutlet weak var appleALCChecked: NSButton!
    @IBOutlet weak var intelMausiChecked: NSButton!
    @IBOutlet weak var smallTreeChecked: NSButton!
    @IBOutlet weak var atherosChecked: NSButton!
    @IBOutlet weak var realTekChecked: NSButton!
    @IBOutlet weak var usbInjectAllChecked: NSButton!
    @IBOutlet weak var xhciUnsupportedChecked: NSButton!
    @IBOutlet weak var airportBrcmChecked: NSButton!
    @IBOutlet weak var brcmPatchRamChecked: NSButton!
    @IBOutlet weak var brcmBluetoothInjectorChecked: NSButton!
    @IBOutlet weak var brcmFirmwareDataChecked: NSButton!
    @IBOutlet weak var brcmPatchRam3Checked: NSButton!
    @IBOutlet weak var fxXlncUSBChecked: NSButton!
    @IBOutlet weak var appleMCEReporterChecked: NSButton!
    @IBOutlet weak var openRuntimeChecked: NSButton!
    @IBOutlet weak var openUSBChecked: NSButton!
    @IBOutlet weak var nvmExpressChecked: NSButton!
    @IBOutlet weak var xhciChecked: NSButton!
    @IBOutlet weak var textfield: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func systemTypeChecked(_ sender: NSButton) {
    }
    
    func kextCopy (kextname: String, item: String, location: URL) {
        let bundle = Bundle.main
        let fm = FileManager.default
        let kextname = bundle.path(forResource: "\(item)", ofType: ".kext")
        let kextnameURL = URL(fileURLWithPath: kextname!)
        let kextnameDir = "\(item).kext"
        do {
            try fm.copyItem(at: kextnameURL, to: location.appendingPathComponent(kextnameDir))
        }
        catch {
        }
    }
    
    func driverCopy (drivername: String, item: String, location: URL) {
        let bundle = Bundle.main
        let fm = FileManager.default
        let drivername = bundle.path(forResource: "\(item)", ofType: ".efi")
        let drivernameURL = URL(fileURLWithPath: drivername!)
        let drivernameDir = "\(item).efi"
        do {
            try fm.copyItem(at: drivernameURL, to: location.appendingPathComponent(drivernameDir))
        }
        catch {
        }
    }
    
    @IBAction func generateClicked(_ sender: Any) {
        //TODO: Add Sylake-X/Cascade Lake-X/W, Comet Lake, Bulldozer/Jaguar AMD specific info
        //TODO: Create UI textfield elements so users can add SMBIOS info themselves.
        //TODO: Add UI element with dropdown menu to mount ESP of selected drive.
        //TODO: Add methods to copy items from Bundle to ESP.
        switch ivyBridgeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch haswellChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch skylakeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch kabylakeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch coffeelakeChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch haswellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.disableVariableWrite = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.appleXcpmExtraMsrs = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch broadwellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.disableVariableWrite = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.appleXcpmExtraMsrs = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch ryzenChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kPatch = [firstRyzenPatch]
            config.kernel.kPatch?.append(secondRyzenPatch)
            config.kernel.kPatch?.append(thirdRyzenPatch)
            config.kernel.kPatch?.append(forthRyzenPatch)
            config.kernel.kPatch?.append(fifthRyzenPatch)
            config.kernel.kPatch?.append(sixthRyzenPatch)
            config.kernel.kPatch?.append(seventhRyzenPatch)
            config.kernel.kPatch?.append(eigthRyzenPatch)
            config.kernel.kPatch?.append(ninthRyzenPatch)
            config.kernel.kPatch?.append(tenthRyzenPatch)
            config.kernel.kPatch?.append(eleventhRyzenPatch)
            config.kernel.kPatch?.append(twelfthRyzenPatch)
            config.kernel.kPatch?.append(thirteenthRyzenPatch)
            config.kernel.kPatch?.append(fourteenthRyzenPatch)
            config.kernel.kPatch?.append(fiftheenthRyzenPatch)
            config.kernel.kPatch?.append(sixthteenthRyzenPatch)
            config.kernel.kPatch?.append(seventeethRyzenPatch)
            config.kernel.kPatch?.append(eigthteethRyzenPatch)
            config.kernel.kPatch?.append(ninthteenthRyzenPatch)
            config.kernel.kPatch?.append(twentiethRyzenPatch)
            config.kernel.kPatch?.append(twentiefirstRyzenPatch)
            config.kernel.kPatch?.append(twentiesecondRyzenPatch)
            config.kernel.kPatch?.append(twentiethirdRyzenPatch)
            config.kernel.kPatch?.append(twentieforthRyzenPatch)
            config.kernel.kPatch?.append(twentiefifthRyzenPatch)
            config.kernel.kPatch?.append(twentiesixthRyzenPatch)
            config.kernel.kPatch?.append(twentieseventhRyzenPatch)
            config.kernel.kPatch?.append(twentieeigthRyzenPatch)
            config.kernel.kPatch?.append(twentieninthRyzenPatch)
            config.kernel.kPatch?.append(thirtiethRyzenPatch)
            config.kernel.kPatch?.append(thirtiefirstRyzenPatch)
            config.kernel.kPatch?.append(thirtiesecondRyzenPatch)
            config.kernel.kPatch?.append(thirtiethirdRyzenPatch)
            config.kernel.kQuirks.dummyPowerManagement = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch liluChecked.state {
        case .on:
            let liluAdd = kAdd(bundlePath: "Lilu.kext", comment: "", enabled: true, executablePath: "Contents/MacOS/Lilu", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
            config.kernel.kAdd.removeAll()
            config.kernel.kAdd.append(liluAdd)
        default:
            break
        }
        
        let efidirName = "Desktop/EFI"
        let fm = FileManager.default
        let destDirURL = fm.homeDirectoryForCurrentUser
        let deskDirString: String = destDirURL.appendingPathComponent(efidirName).path
        if fm.fileExists(atPath: deskDirString) {
            do {
                try fm.trashItem(at: destDirURL.appendingPathComponent(efidirName), resultingItemURL: nil )
                try fm.createDirectory(at: destDirURL.appendingPathComponent(efidirName), withIntermediateDirectories: false, attributes: nil)
                let newdestDir = URL(fileURLWithPath: deskDirString)
                let ocBootDir = newdestDir.appendingPathComponent("BOOT")
                let ocDir = newdestDir.appendingPathComponent("OC")
                try fm.createDirectory(at: ocBootDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDir, withIntermediateDirectories: false, attributes: nil)
                let ocACPIDir = ocDir.appendingPathComponent("ACPI")
                let ocBootstrapDir = ocDir.appendingPathComponent("Bootstrap")
                let ocDriversDir = ocDir.appendingPathComponent("Drivers")
                let ocKextsDir = ocDir.appendingPathComponent("Kexts")
                let ocResourcesDir = ocDir.appendingPathComponent("Resources")
                let ocToolsDir = ocDir.appendingPathComponent("Tools")
                try fm.createDirectory(at: ocACPIDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocBootstrapDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDriversDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocKextsDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocResourcesDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocToolsDir, withIntermediateDirectories: false, attributes: nil)
                if liluChecked.state == .on {
                    kextCopy(kextname: "lilu", item: "Lilu", location: ocKextsDir)
                }
                if virtualSMCChecked.state == .on {
                    kextCopy(kextname: "virtualsmc", item: "VirtualSMC", location: ocKextsDir)
                }
                if smcProcessorChecked.state == .on {
                    kextCopy(kextname: "smcprocessor", item: "SMCProcessor", location: ocKextsDir)
                }
                if smcSuperIOChecked.state == .on {
                    kextCopy(kextname: "smcSuperIO", item: "SMCSuperIO", location: ocKextsDir)
                }
                if smcLightSensorChecked.state == .on {
                    kextCopy(kextname: "smcLightSensor", item: "SMCLightSensor", location: ocKextsDir)
                }
                if smcBatteryManagerChecked.state == .on {
                    kextCopy(kextname: "SMCBatteryManager", item: "SMCBatteryManager", location: ocKextsDir)
                }
                if whatevergreenChecked.state == .on {
                    kextCopy(kextname: "whatevergreen", item: "WhateverGreen", location: ocKextsDir)
                }
                if appleALCChecked.state == .on {
                    kextCopy(kextname: "appleALC", item: "AppleALC", location: ocKextsDir)
                }
                if smallTreeChecked.state == .on {
                    kextCopy(kextname: "smallTree", item: "SmallTreeIntel82576", location: ocKextsDir)
                }
                if atherosChecked.state == .on {
                    kextCopy(kextname: "atheros", item: "AtherosE2200Ethernet", location: ocKextsDir)
                }
                if realTekChecked.state == .on {
                    kextCopy(kextname: "realTek", item: "RealtekRTL8111", location: ocKextsDir)
                }
                if usbInjectAllChecked.state == .on {
                    kextCopy(kextname: "usbInjectAll", item: "USBInjectAll", location: ocKextsDir)
                }
                if airportBrcmChecked.state == .on {
                    kextCopy(kextname: "airportBrcm", item: "AirportBrcmFixup", location: ocKextsDir)
                }
                if fxXlncUSBChecked.state == .on {
                    kextCopy(kextname: "fxXlncUSB", item: "XLNCUSBFix", location: ocKextsDir)
                }
                if appleMCEReporterChecked.state == .on {
                    kextCopy(kextname: "appleMCEReporter", item: "AppleMCEReporterDisabler", location: ocKextsDir)
                }
                if openRuntimeChecked.state == .on {
                    driverCopy(drivername: "openRuntime", item: "OpenRuntime", location: ocDriversDir)
                }
                if openUSBChecked.state == .on {
                    driverCopy(drivername: "openUSB", item: "OpenUsbKbDxe", location: ocDriversDir)
                }
                if nvmExpressChecked.state == .on {
                    driverCopy(drivername: "nvmExpress", item: "NvmExpressDxe", location: ocDriversDir)
                }
                if xhciChecked.state == .on {
                    driverCopy(drivername: "xhci", item: "XhciDxe", location: ocDriversDir)
                }
                
            }
            catch {
            }
        } else {
            do {
                try fm.createDirectory(at: destDirURL.appendingPathComponent(efidirName), withIntermediateDirectories: false, attributes: nil)
                let newdestDir = URL(fileURLWithPath: deskDirString)
                let ocBootDir = newdestDir.appendingPathComponent("BOOT")
                let ocDir = newdestDir.appendingPathComponent("OC")
                try fm.createDirectory(at: ocBootDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDir, withIntermediateDirectories: false, attributes: nil)
                let ocACPIDir = ocDir.appendingPathComponent("ACPI")
                let ocBootstrapDir = ocDir.appendingPathComponent("Bootstrap")
                let ocDriversDir = ocDir.appendingPathComponent("Drivers")
                let ocKextsDir = ocDir.appendingPathComponent("Kexts")
                let ocResourcesDir = ocDir.appendingPathComponent("Resources")
                let ocToolsDir = ocDir.appendingPathComponent("Tools")
                try fm.createDirectory(at: ocACPIDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocBootstrapDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDriversDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocKextsDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocResourcesDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocToolsDir, withIntermediateDirectories: false, attributes: nil)
                if liluChecked.state == .on {
                    kextCopy(kextname: "lilu", item: "Lilu", location: ocKextsDir)
                }
                if virtualSMCChecked.state == .on {
                    kextCopy(kextname: "virtualsmc", item: "VirtualSMC", location: ocKextsDir)
                }
                if smcProcessorChecked.state == .on {
                    kextCopy(kextname: "smcprocessor", item: "SMCProcessor", location: ocKextsDir)
                }
                if smcSuperIOChecked.state == .on {
                    kextCopy(kextname: "smcSuperIO", item: "SMCSuperIO", location: ocKextsDir)
                }
                if smcLightSensorChecked.state == .on {
                    kextCopy(kextname: "smcLightSensor", item: "SMCLightSensor", location: ocKextsDir)
                }
                if smcBatteryManagerChecked.state == .on {
                    kextCopy(kextname: "SMCBatteryManager", item: "SMCBatteryManager", location: ocKextsDir)
                }
                if whatevergreenChecked.state == .on {
                    kextCopy(kextname: "whatevergreen", item: "WhateverGreen", location: ocKextsDir)
                }
                if appleALCChecked.state == .on {
                    kextCopy(kextname: "appleALC", item: "AppleALC", location: ocKextsDir)
                }
                if smallTreeChecked.state == .on {
                    kextCopy(kextname: "smallTree", item: "SmallTreeIntel82576", location: ocKextsDir)
                }
                if atherosChecked.state == .on {
                    kextCopy(kextname: "atheros", item: "AtherosE2200Ethernet", location: ocKextsDir)
                }
                if realTekChecked.state == .on {
                    kextCopy(kextname: "realTek", item: "RealtekRTL8111", location: ocKextsDir)
                }
                if usbInjectAllChecked.state == .on {
                    kextCopy(kextname: "usbInjectAll", item: "USBInjectAll", location: ocKextsDir)
                }
                if airportBrcmChecked.state == .on {
                    kextCopy(kextname: "airportBrcm", item: "AirportBrcmFixup", location: ocKextsDir)
                }
                if fxXlncUSBChecked.state == .on {
                    kextCopy(kextname: "fxXlncUSB", item: "XLNCUSBFix", location: ocKextsDir)
                }
                if appleMCEReporterChecked.state == .on {
                    kextCopy(kextname: "appleMCEReporter", item: "AppleMCEReporterDisabler", location: ocKextsDir)
                }
                if openRuntimeChecked.state == .on {
                    driverCopy(drivername: "openRuntime", item: "OpenRuntime", location: ocDriversDir)
                }
                if openUSBChecked.state == .on {
                    driverCopy(drivername: "openUSB", item: "OpenUsbKbDxe", location: ocDriversDir)
                }
                if nvmExpressChecked.state == .on {
                    driverCopy(drivername: "nvmExpress", item: "NvmExpressDxe", location: ocDriversDir)
                }
                if xhciChecked.state == .on {
                    driverCopy(drivername: "xhci", item: "XhciDxe", location: ocDriversDir)
                }
            }
            catch {
            }
        }
    }
}
