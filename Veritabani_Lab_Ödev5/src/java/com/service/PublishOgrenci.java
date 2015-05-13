
package com.service;

import javax.xml.ws.Endpoint;
public class PublishOgrenci {
    public static void main(String[] args) {
        Endpoint endpoint = Endpoint.publish("http://localhost:8080/ogrenci", new CalOgrenciServiceImp());
        System.out.println(endpoint.isPublished());
    }
}
