// taken from:
// http://www.algolist.com/code/java/Dijkstra's_algorithm
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

class Vertex implements Comparable<Vertex>
{
    public final int name;
    public Edge[] adjacencies;
    public ArrayList<Edge> edgeList = new ArrayList<Edge>();
    public double minDistance = Double.POSITIVE_INFINITY;
    public Vertex previous;
    public Vertex(int argName) { name = argName; }
    public String toString() { return String.valueOf(name); }
    public int compareTo(Vertex other)
    {
        return Double.compare(minDistance, other.minDistance);
    }
}

class Edge
{
    public final Vertex target;
    public final double weight;
    public Edge(Vertex argTarget, double argWeight)
    { target = argTarget; weight = argWeight; }
}

public class Dijkstra
{
	public static final long ITERATION_DELAY = 100;
    public static void computePaths(Vertex source)
    {
        source.minDistance = 0.;
        PriorityQueue<Vertex> vertexQueue = new PriorityQueue<Vertex>();
      	vertexQueue.add(source);

	while (!vertexQueue.isEmpty()) {
		try {
			Thread.sleep(ITERATION_DELAY);
		} catch (InterruptedException e1) {}
	    Vertex u = vertexQueue.poll();

            // Visit each edge exiting u
            for (Edge e : u.adjacencies)
            {
                Vertex v = e.target;
                double weight = e.weight;
                double distanceThroughU = u.minDistance + weight;
		if (distanceThroughU < v.minDistance) {
		    vertexQueue.remove(v);
		    v.minDistance = distanceThroughU ;
		    v.previous = u;
		    vertexQueue.add(v);
		}
            }
        }
    }

    public static List<Vertex> getShortestPathTo(Vertex target)
    {
        List<Vertex> path = new ArrayList<Vertex>();
        for (Vertex vertex = target; vertex != null; vertex = vertex.previous)
            path.add(vertex);
        Collections.reverse(path);
        return path;
    }

    public static void main(String[] args)
    {
		String fileName = args[0];
		int startNode = Integer.parseInt(args[1]);
		int finishNode = Integer.parseInt(args[2]);
		Map<Integer, Vertex> graph = new HashMap<Integer, Vertex>();
		Vertex start = null;
		Vertex end = null;
		try {
			Scanner scan = new Scanner(new File(fileName));
			int edgeCount = 0;
			while(scan.hasNextLine()) {
				String line = scan.nextLine();
				if(!line.trim().equals("")) {
					String[] split = line.split("\\s+");
					if(split[0].equalsIgnoreCase("E")) {
						if(split.length == 3) {
							int node1 = Integer.parseInt(split[1]);
							int node2 = Integer.parseInt(split[2]);
							if(!graph.containsKey(new Integer(node1))) {
								graph.put(new Integer(node1), new Vertex(node1));
								if(startNode == node1) {
									start = graph.get(new Integer(node1));
								}
								if(finishNode == node1) {
									end = graph.get(new Integer(node1));
								}
							}
							if(!graph.containsKey(new Integer(node2))) {
								graph.put(new Integer(node2), new Vertex(node2));
								if(startNode == node2) {
									start = graph.get(new Integer(node2));
								}
								if(finishNode == node2) {
									end = graph.get(new Integer(node2));
								}
							}
							Vertex tn1 = graph.get(new Integer(node1));
							Vertex tn2 = graph.get(new Integer(node2));
							tn1.edgeList.add(new Edge(tn2, 1));
							edgeCount++;
						} else {System.err.println("Screwup Two");}
					} else {System.err.println("Screwup One");}
				}
			}
			scan.close();
			for(Vertex v : graph.values()) {
				v.adjacencies = new Edge[v.edgeList.size()];
				v.adjacencies = v.edgeList.toArray(v.adjacencies);
			}
		System.out.println("Initialising search ("+ITERATION_DELAY+"ms iteration delay)...");
		long startTime = System.currentTimeMillis();
        computePaths(start);
        long finishTime = System.currentTimeMillis();
		System.out.println("Route Found, Shutting Down ("+(finishTime-startTime)+"ms)...");
	    System.out.println("Distance to " + end + ": " + end.minDistance);
	    List<Vertex> path = getShortestPathTo(end);
	    System.out.println("Path: " + path);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
    }
}