package maxpi.devicecontroller;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.google.gson.JsonObject;
import com.pubnub.api.PNConfiguration;
import com.pubnub.api.PubNub;
import com.pubnub.api.callbacks.PNCallback;
import com.pubnub.api.callbacks.SubscribeCallback;
import com.pubnub.api.enums.PNStatusCategory;
import com.pubnub.api.models.consumer.PNPublishResult;
import com.pubnub.api.models.consumer.PNStatus;
import com.pubnub.api.models.consumer.pubsub.PNMessageResult;
import com.pubnub.api.models.consumer.pubsub.PNPresenceEventResult;

import java.util.Arrays;

public class SensorController extends AppCompatActivity implements View.OnClickListener {

    private Button getDistance;
    private EditText Distance;
    public static final String PUBLISH_KEY = "pub-c-9710b97d-1b82-4e19-8508-ef27b1bf9fde";
    public static final String SUBSCRIBE_KEY = "sub-c-18528260-3ca5-11e8-a433-9e6b275e7b64";
    public static final String CHANNEL = "Rangefinder";
    public PNConfiguration pnConfiguration = new PNConfiguration();
    public PubNub pubnub = new PubNub(pnConfiguration);


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sensor_controller);
        getDistance=(Button)findViewById(R.id.get_distance);
        Distance=(EditText)findViewById(R.id.distance);
        getDistance.setOnClickListener(this);
        pnConfiguration.setSubscribeKey(SUBSCRIBE_KEY);
        pnConfiguration.setPublishKey(PUBLISH_KEY);
        pubnub.subscribe().channels(Arrays.asList(CHANNEL)).execute();

    }

    @Override
    public void onClick(View view) {
        if(view.getId() == R.id.get_distance){
            pubnub.publish().message("getDistance: on").channel(CHANNEL) .async(new PNCallback<PNPublishResult>() {
                @Override
                public void onResponse(PNPublishResult result, PNStatus status) {
                    // handle publish result, status always present, result if successful
                    // status.isError() to see if error happened
                    if(!status.isError()) {
                        System.out.println("pub timetoken: " + result.getTimetoken());
                    }
                    System.out.println("pub status code: " + status.getStatusCode());
                }
            });



        }


    }
}
