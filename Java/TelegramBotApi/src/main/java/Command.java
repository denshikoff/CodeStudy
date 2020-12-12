import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Command {
    List<String> listCommand = new ArrayList<>();
    Command()  {
        String filename = "src/main/java/command";
        try {
            BufferedReader readerFile = Files.newBufferedReader(Paths.get(filename));
            listCommand = Files.readAllLines(Path.of(filename));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
