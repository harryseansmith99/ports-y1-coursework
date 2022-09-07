import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Server {

    private Scanner file;
    private ArrayList<Node> nodes;

    public Server() throws FileNotFoundException
    {
        java.io.File filePath = new java.io.File("src/data.csv");
        file = new Scanner(filePath);
        nodes = new ArrayList<Node>();

        while(hasAnotherLine())
        {
            String line = getLine();
            // Splitting line on comma line on commas
            String[] lineArray = line.split(",");
            // Converting data
            int NodeID = Integer.parseInt(lineArray[0]);
            int yesID = Integer.parseInt(lineArray[1]);
            int noID = Integer.parseInt(lineArray[2]);
            String description = lineArray[3];
            String question = lineArray[4];
            // Build node class
            Node n = new Node(NodeID,yesID,noID,description,question);
            // Add node to ArrayList
            nodes.add(n);
        }
    }

    public String getLine() { return file.nextLine(); }

    public void Close() { file.close(); }

    public boolean hasAnotherLine() { return file.hasNext(); }

    public String toString()
    {
        String string = "";
        for(Node node : nodes){ string += node.toString() + "\n"; }
        return string;
    }

    public Node getNode(int ID)
    {
        for(Node n: nodes)
        {
            if(n.getNodeID() == ID)
            {
                return n;
            }
        }
        return null;
    }
}
