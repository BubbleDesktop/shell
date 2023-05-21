
var desktopsArray = desktopsForActivity(currentActivity());
for (var j = 0; j < desktopsArray.length; j++) {
    var desk = desktopsArray[j];
    desk.wallpaperPlugin = "org.kde.slideshow";
    desk.addWidget("org.kde.plasma.digitalclock");
    desk.currentConfigGroup = new Array("Wallpaper","org.kde.slideshow","General");
    desk.writeConfig("SlideInterval", 2);
    desk.writeConfig("SlidePaths", "/usr/share/wallpapers/");
}

var panel = new Panel
panel.location = "bottom";
panel.height = 2.5 * gridUnit;

panel.addWidget("org.kde.plasma.kickoff");
var battery = panel.addWidget("org.kde.plasma.battery");
battery.currentConfigGroup = ["Configuration", "General"]
battery.writeConfig("showPercentage", true)
battery.reloadConfig()

panel.addWidget("org.kde.plasma.networkmanagement");
//panel.hiding = "windowsbelow";
