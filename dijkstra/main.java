/**
 * fonction principale du programme java
 * @author MaTouin - DCrenn
 * @param args paramètre de la ligne de commande : 6 exigée => noeud source, noeud destination et information de connexion à la bdd
 *
 */

import java.util.*;

public class main{
	public static void main(String[] args) {
		//System.out.println("testDijkstraAlgo");
		Vertex source = null;
		Vertex dest = null;
		List<Vertex> nodes = null;
		List<Edge> edges = null;
		
		
	    LireEnBase g = new LireEnBase(args[2],args[3],args[4],args[5]);
		nodes = g.getVertexes();
		edges = g.getEdges();
		
		Graph graph = new Graph(nodes, edges);
		
		//System.out.println(g.getVertexes());
		//System.out.println(g.getEdges());
		
		DijkstraAlgorithm dijkstra = new DijkstraAlgorithm(graph);
		
		//System.out.println("test 6");
		
		for (int i=0; i<nodes.size();i++){
			if(Integer.parseInt(args[0]) == Integer.parseInt(nodes.get(i).getId())){
				source = nodes.get(i);
			}
		}
		for (int j=0; j<nodes.size();j++){
			if(Integer.parseInt(args[1]) == Integer.parseInt(nodes.get(j).getId())){
				dest = nodes.get(j);
			}
		}
		
		dijkstra.execute(source);
		LinkedList<Vertex> path = dijkstra.getPath(dest);
		
		for (Vertex vertex : path) {
			System.out.println(vertex);
		}
	}
}
