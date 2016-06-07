/**
 * Classe pour le graphe
 * @author http://www.vogella.com/tutorials/JavaAlgorithmsDijkstra/article.html
 * @see main.java Edge.java Vertex.java
 */

import java.util.List;

public class Graph {
  private final List<Vertex> vertexes;
  private final List<Edge> edges;

  public Graph(List<Vertex> vertexes, List<Edge> edges) {
    this.vertexes = vertexes;
    this.edges = edges;
  }

  public List<Vertex> getVertexes() {
    return vertexes;
  }

  public List<Edge> getEdges() {
    return edges;
  }
  
  
  
}


