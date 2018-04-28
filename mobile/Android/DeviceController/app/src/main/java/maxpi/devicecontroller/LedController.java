package maxpi.devicecontroller;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

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

public class LedController extends AppCompatActivity implements View.OnClickListener {


    private Button ledOn;
    private Button ledOff;
    public static final String PUBLISH_KEY = "pub-c-7d635ffa-d57a-47f2-b400-817dd3816e6d";
    public static final String SUBSCRIBE_KEY = "sub-c-bcc1aed0-36eb-11e8-a218-f214888d2de6";
    public static final String CHANNEL = "LedControl";
    public PNConfiguration pnConfiguration = new PNConfiguration();
    public PubNub pubnub = new PubNub(pnConfiguration);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_led_controller);
        ledOn=(Button)findViewById(R.id.ledOn);
        ledOff=(Button)findViewById(R.id.ledOff);
        ledOn.setOnClickListener(this);
        ledOff.setOnClickListener(this);
        pnConfiguration.setSubscribeKey(SUBSCRIBE_KEY);
        pnConfiguration.setPublishKey(PUBLISH_KEY);
        pubnub.subscribe().channels(Arrays.asList(CHANNEL)).execute();

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ledOn:
                Publish("On");
                break;
            case R.id.ledOff:
                Publish("Off");
                break;

        }
    }


     public void Publish(String status)
     {
         JsonObject ledstatus = new JsonObject();
         ledstatus.addProperty("Light",status);
         pubnub.publish().message(ledstatus).channel(CHANNEL) .async(new PNCallback<PNPublishResult>() {
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
