package maxpi.devicecontroller;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


import java.util.Arrays;




public class MainActivity extends AppCompatActivity {
    Button ledControl,sensorControl;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ledControl=(Button)findViewById(R.id.ledControl);
        sensorControl=(Button)findViewById(R.id.sensorControl);
        ledControl.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i=new Intent(MainActivity.this,LedController.class);
                startActivity(i);
            }
        });

        sensorControl.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i=new Intent(MainActivity.this,SensorController.class);
                startActivity(i);
                }

        });
    }




}