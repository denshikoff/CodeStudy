import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
    public static void main(String[] args) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String house = reader.readLine();
        switch (house){
            case "gryffindor":System.out.println("bravery");
                break;

            case "hufflepuff":System.out.println("loyalty");
                break;

            case "slytherin":System.out.println("cunning");
                break;

            case "ravenclaw":System.out.println("intellect");
                break;

            default:System.out.println("not a valid house");
        }
    }
}