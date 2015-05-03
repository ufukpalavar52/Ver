package com.urun;

import javax.xml.ws.Endpoint;



public class PublishUrun {

	public static void main(String[] args) {
		Endpoint endpoint = Endpoint.publish("http://localhost:8080/urun", new CalUrunServiceImp());
        System.out.println(endpoint.isPublished());
		

	}

}
