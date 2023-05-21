
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
panel.location = "top";
panel.height = 2 * gridUnit;

var battery = panel.addWidget("org.kde.plasma.battery");
battery.currentConfigGroup = ["Configuration", "General"]
battery.writeConfig("showPercentage", true)
battery.reloadConfig()

panel.addWidget("org.kde.plasma.networkmanagement");
panel.addWidget("org.kde.plasma.kickoff");
//panel.hiding = "windowsbelow";
