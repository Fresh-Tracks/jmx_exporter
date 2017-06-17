package io.prometheus.jmx;

import java.io.File;
import java.io.FileReader;
import java.util.Map;

import org.yaml.snakeyaml.Yaml;

import static java.lang.String.format;

public class YamlFoo {
  public static void main(String[] args) throws Exception {
    File f = new File("/Users/bogco01/temp/foo.yaml");
    FileReader fr = new FileReader(f);
    //Map<String, Object> yamlConfig = null;
    Yaml yamlConfig = new Yaml();

    try {
      for (Object data : yamlConfig.loadAll(fr)) {
        System.out.println(data);
      }
    } catch (Exception e) {
      System.out.println("ERROR:Configuration file load failed: " + e.toString());
    } finally {
      fr.close();
    }

    System.out.println("Loaded foo.yaml");
  }
}
