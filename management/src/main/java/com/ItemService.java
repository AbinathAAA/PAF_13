/**
 * 
 */
package com;

//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

import model.project;

/**
 * @author HP
 *
 */
@Path("/Project")
public class ItemService{
  
	project itemObj = new project();

	@GET
    @Path("/")
    @Produces(MediaType.TEXT_HTML)
	public String readItems(){
 
		return itemObj.readProject();
 
	}
	
	@POST
	@Path("/") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertItems(@FormParam("Name") String Name,@FormParam("Description") String Description,@FormParam("Language") String Language,@FormParam("Developername") String Developername,@FormParam("Price") String Price) {
		
		String output = itemObj.insertProject(Name, Description, Language, Developername, Price);
		return output;
	}
	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateItem(String ProjectData)
	{
	//Convert the input string to a JSON object
	 JsonObject itemObject = new JsonParser().parse(ProjectData).getAsJsonObject();
	//Read the values from the JSON object
	 String ID = itemObject.get("Id").getAsString();
	 String Name = itemObject.get("Name").getAsString();
	 String Description = itemObject.get("Description").getAsString();
	 String Language = itemObject.get("Language").getAsString();
	 String Developername = itemObject.get("Developername").getAsString();
	 String Price = itemObject.get("Price").getAsString();
	 String output = itemObj.updateProject(ID, Name, Description, Language, Developername, Price);
	
	 return output;
	}
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteItem(String ProjectData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(ProjectData, "", Parser.xmlParser());

	//Read the value from the element <itemID>
	 String ID = doc.select("Id").text();
	 String output = itemObj.deleteProject(ID);
	return output;
	}


}

