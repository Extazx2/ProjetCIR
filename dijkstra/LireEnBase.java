import java.util.*;
import java.sql.*;


public class LireEnBase{
	List<Vertex> nodes;
	List<Edge> edges;

	public LireEnBase(String dbname, String dbuser, String dbpass, String dbhost) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		nodes = new ArrayList<Vertex>();
		edges = new ArrayList<Edge>();
		//System.out.println("test");
		try {
			//System.out.println("test 2");
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://"+dbhost+"/"+dbname, dbuser, dbpass);
			st = con.createStatement();
			//System.out.println("test 3");
			//REQUETES
			String sqlVertex = "SELECT idQr FROM qr";
			String sqlEdge = "SELECT qra, qrb, distance FROM chemin";


			rs = st.executeQuery(sqlVertex);
			//System.out.println(rs);
			//VERTEX		
			while(rs.next()){
				String idpoint = rs.getString(1);
				Vertex v = new Vertex(idpoint,idpoint);
				//System.out.println("test 4");
				nodes.add(v);
			}

			rs = st.executeQuery(sqlEdge);
			//System.out.println("test 5");
			//EDGES
			int i =0;
			while(rs.next()){
				int qra = rs.getInt(1);
				int qrb = rs.getInt(2);
				int distance = rs.getInt(3);
				addLane("Chemins_" + i,qra,qrb,distance);
				i++;
			}

		}catch (Exception e) {
			System.out.println("Exception3: " + e.getMessage());
		}
		finally {
			try {
				if(rs != null) rs.close();
				if(st != null) st.close();
				if(con != null) con.close();
			}
			catch (SQLException e) {
			}
		}
	}
	private void addLane(String id, int sourceLocNo, int destLocNo, int duration) {
		Edge lane = new Edge(id,nodes.get(getIndices(Integer.toString(sourceLocNo))), nodes.get(getIndices(Integer.toString(destLocNo))), duration);
		edges.add(lane);
	}

	List<Vertex> getVertexes(){
		return nodes;
	}

	List<Edge> getEdges(){
		return edges;
	}
	private int getIndices(String id){
		for(int i=0;i< nodes.size();i++){
			if(nodes.get(i).getId().equals(id)){
				return i;
			}
		}
		return 1;
	}	 
}