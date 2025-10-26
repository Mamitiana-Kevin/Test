package test;

import framework.annotation.AnnotationReader;
import test.controller.HomeController;

public class Main {
    public static void main(String[] args) {
        AnnotationReader.readGetMappingAnnotations(HomeController.class);
    }
}
