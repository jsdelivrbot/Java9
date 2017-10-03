package gui.main;


import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;


import java.net.URL;

public class MainGui extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        URL resource = getClass().getResource("/guiview.fxml");
        Parent p = FXMLLoader.load(resource);
        Scene scene = new Scene(p,400,600);
        primaryStage.setScene(scene);
        primaryStage.show();
    }
}
