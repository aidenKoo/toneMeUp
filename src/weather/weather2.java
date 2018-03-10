package weather;

import javax.lang.model.element.Element;
import javax.swing.text.Document;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.soap.Node;

public class weather2 {
	 
	 String[] temp = new String[3];
	 String[] wfEn = new String[3];
	 String[] hour1 = new String[3];
	 
	 public weather2() {
	 
	  try {
	   DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
	   DocumentBuilder parser = f.newDocumentBuilder();
	 
	   Document xmlDoc = null;
	   String url = "http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1121571000";
	   xmlDoc = parser.parse(url);
	 
	   Element root = xmlDoc.getDocumentElement();
	   // System.out.println(root.getTagName());
	    
	   for (int i = 0; i < temp.length; i++) {
	    Node xmlNode1 = root.getElementsByTagName("data").item(i);
	 
	    Node xmlNode21 = ((Element) xmlNode1).getElementsByTagName(
	      "temp").item(0);
	    Node xmlNode22 = ((Element) xmlNode1).getElementsByTagName(
	      "wfEn").item(0);
	    Node xmlNode23 = ((Element) xmlNode1).getElementsByTagName(
	      "hour").item(0);
	     
	    temp[i] = xmlNode21.getTextContent();
	    wfEn[i] = xmlNode22.getTextContent();
	    hour1[i] = "기준시각 : " + xmlNode23.getTextContent() + "시";
	   }
	 
	  } catch (Exception e) {
	   System.out.println(e.getMessage());
	   System.out.println(e.toString());
	  }
	 }
	 
	 public String[] getTemp() {
	  return temp;
	 }
	 
	 public String[] getEn() {
	  return wfEn;
	 }
	 
	 public String[] getHour() {
	  return hour1;
	 }
	}
