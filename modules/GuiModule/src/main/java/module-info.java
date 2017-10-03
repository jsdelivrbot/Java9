module GuiModule {
    requires javafx.graphics;
    requires javafx.controls;
    requires javafx.fxml;

    exports gui.main to javafx.graphics;
    exports main.controllers to javafx.fxml;
}