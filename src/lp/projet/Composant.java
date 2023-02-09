/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lp.projet;

import javafx.geometry.Insets;
import javafx.geometry.Pos;
import static javafx.geometry.Pos.CENTER;
import static javafx.geometry.Pos.CENTER_LEFT;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Priority;
import static javafx.scene.layout.Priority.NEVER;
import javafx.scene.paint.Paint;
import static jdk.nashorn.internal.objects.Global.Infinity;

/**
 *
 * @author argane
 */
public class Composant {
    
   String styleHbp = "alignment="+"CENTER_LEFT" +"layoutX="+"10.0" +"layoutY="+"48.0" 
         +"  maxHeight="+"-Infinity"+" minHeight="+"-Infinity"+" prefHeight="+"60.0" 
      +  "  prefWidth="+"637.0"+" style="+"-fx-background-color: #0000; "
         + "-fx-border-style: solid none none none; -fx-background-radius: 30;";
   
   String stylehbpt = "-fx-background-color: ffff; -fx-border-style: solid none none none;";
    
   String stylechil1 = "alignment="+"CENTER_LEFT"+" maxHeight="+"-Infinity"
          +" minHeight="+"-Infinity"+" prefHeight="+"59.0" +"prefWidth="+"425.0"
          +" style="+"-fx-background-color: FFFF;"+" HBox.hgrow="+"ALWAYS";

   String styleimg = "fitHeight="+"50.0"+" fitWidth="+"53.0"+" pickOnBounds="+"true" +"preserveRatio="+"true";
   
   String stylechil2 = "alignment="+"CENTER"+" prefHeight="+"60.0"+" prefWidth="+"202.0"
          +"  style="+"-fx-background-color: FFFF;"+" HBox.hgrow="+"NEVER";
   
   String stylebtn1 = "fx:id="+"btnok"+" mnemonicParsing="+"false"+" prefHeight="+"35.0" 
        + "  prefWidth="+"82.0"+" style="+"-fx-background-color: #7D7D7D;"
           + " -fx-background-radius: 15;" +"text="+"Modifier"+" textFill="+"WHITE";
   
    String stylebtn2 = "layoutX="+"168.0"+" layoutY="+"28.0"+" mnemonicParsing="+"false" 
          +"  prefHeight="+"35.0" +"prefWidth="+"94.0"+" style="+"-fx-background-color: C80202;"
                    + " -fx-background-radius: 15;"+" text="+"Supprimer"+" textFill="+"WHITE";
    
    String bfont = "name="+"System Bold"+" size="+"14.0";
    
    ImageView imgv = new ImageView();
    
    HBox hbp = new HBox();
    HBox hb1 = new HBox();
    HBox hb2 = new HBox();

    Button btn1 = new Button("modifier");
    Button btn2 = new Button("supprimer");

    Label lb1 = new Label();
    Label lb2 = new Label();
    
    public HBox addline(){
       
        imgv.setImage(new Image("file:/images/9648301_38767%201.png"));
        
        imgv.setFitWidth(53);
        imgv.setFitHeight(50);
        imgv.setPickOnBounds(true);
        imgv.setPreserveRatio(true);
        
        lb1.setText("ffshddd");
        lb2.setText("ff4554ddd");
        
       
        hbp.setAlignment(CENTER_LEFT);
        hbp.setLayoutX(10);
        hbp.setLayoutY(48);
        hbp.setMaxHeight(-Infinity);
        hbp.setMinHeight(-Infinity);
        hbp.setPrefHeight(60);
        hbp.setPrefWidth(637);
        hbp.setStyle(stylehbpt);

       // style hb1
       
       hb1.setStyle("-fx-background-color: #7D7D7D;");
        hb1.setAlignment(CENTER_LEFT);
        hb1.setMaxHeight(-Infinity);
        hb1.setMinHeight(-Infinity);
        hb1.setPrefHeight(59);
        hb1.setPrefWidth(425);

     /*  style hb2  alignment="CENTER" prefHeight="60.0" 
     prefWidth="202.0" style="-fx-background-color: FFFF;" HBox.hgrow="NEVER"  */
     
       hb2.setAlignment(Pos.CENTER);
       hb2.setPrefHeight(60);
       hb2.setPrefWidth(202);
    //   hbp.setHgrow(hb2, Priority.NEVER);
       hb2.setStyle("-fx-background-color: #FFFF;");
       
       // style btn1
       
       btn1.setId("btnok");
       btn1.setMnemonicParsing(false);
       btn1.setPrefHeight(35);
       btn1.setPrefWidth(82);
       btn1.setStyle("-fx-background-color: #7D7D7D; -fx-background-radius: 15;");
       btn1.setText("Modifier");
       btn1.setTextFill(Paint.valueOf("WHITE"));
       
       // style btn2
       
       btn2.setLayoutX(168);
       btn2.setLayoutY(28);
       btn2.setMnemonicParsing(false);
       btn2.setPrefHeight(35);
       btn2.setPrefWidth(94);
       btn2.setStyle("-fx-background-color: C80202; -fx-background-radius: 15;");
       btn2.setText("Supprimer");
       btn2.setTextFill(Paint.valueOf("WHITE"));
       
       
      
       
       

        // hbp------------
        hbp.setPadding(new Insets(0,5,0,5));
    //    hb1.setPadding(new Insets(0,0,0,0));
        
        hb2.getChildren().add(btn1);
        hb2.getChildren().add(btn2);
        hbp.getChildren().add(hb1);
        hbp.getChildren().add(hb2);
        hb1.getChildren().add(imgv);
         hb2.setSpacing(20);
        hbp.setHgrow(hb2, Priority.NEVER);
        hbp.setHgrow(hb1, Priority.ALWAYS);
        
     //   hbp.setMargin(hb1,new Insets(0,0,0,0));

        
        hbp.setOnMouseClicked(e->{
        System.out.println("hhdgckkkk");
        });
        return hbp;
        
        /*  "alignment="+"CENTER_LEFT" +"layoutX="+"10.0" +"layoutY="+"48.0" 
         +"  maxHeight="+"-Infinity"+" minHeight="+"-Infinity"+" prefHeight="+"60.0" 
      +  "  prefWidth="+"637.0"  */
        
    }
            
            
}
