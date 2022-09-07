import java.io.FileNotFoundException;
import java.util.Scanner;

public class UserInteraction {

    public static void main(String[] args) throws FileNotFoundException
    {
        Server server = new Server();
        Node n = server.getNode(0);
        Scanner io = new Scanner(System.in);
        System.out.println("Welcome to the 'Art of Going Out For A Ride In Your Friend's New Car (gone wrong)'");
        System.out.println("In this story you will answer questions to direct the plot");
        System.out.println("If your answer for a question is YES, enter a 1. If NO, enter a 2");
        System.out.println("If the console says 'PLOT POINT', press 1 or 2 to continue");
        System.out.println("Now that we're ready let's begin!");
        System.out.println("--------------------");

        while(true)
        {
            System.out.println(n.toString());
            int NextNodeID = io.nextInt();
            if (NextNodeID == 1)
            {
                n = server.getNode(n.getYesID());
            }
            else if (NextNodeID == 2)
            {
                n = server.getNode(n.getNoID());
            }
        }
    }
}
