function Component()
{
}


Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addOperation( "CreateDesktopEntry",
                            "pitivi.desktop",
                            "Type=Application\n" +
                            "Exec=@TargetDir@/AppRun\n" +
                            "Path=@TargetDir@\n" +
                            "Name=Pitivi video editor\n" +
                            "Icon=pitivi\n" +
                            "Terminal=false\n" +
                            "Categories=GNOME;GTK;AudioVideo;Video;AudioVideoEditing;\n" +
                            "MimeType=text/x-xges;text/x-xptv;"
                              );
}

