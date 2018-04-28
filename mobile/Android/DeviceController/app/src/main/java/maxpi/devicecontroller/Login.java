package maxpi.devicecontroller;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.SignInButton;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResolvingResultCallbacks;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.Status;

import java.util.concurrent.TimeUnit;

public class Login extends AppCompatActivity implements View.OnClickListener, GoogleApiClient.OnConnectionFailedListener {
    private LinearLayout app_section;
    private TextView Name;
    private Button signOut;
    private SignInButton signIn;
    private Button lauchApp;
    public GoogleApiClient googleApiClient;
    private static final int REQ_CODE = 9001;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        app_section=(LinearLayout)findViewById(R.id.app_section);
        Name=(TextView)findViewById(R.id.name);
        signOut=(Button)findViewById(R.id.sign_out_button);
        lauchApp=(Button)findViewById(R.id.launchapp);
        signIn=(SignInButton)findViewById(R.id.sign_in_button);
        signIn.setOnClickListener(this);
        lauchApp.setOnClickListener(this);
        signOut.setOnClickListener(this);
        GoogleSignInOptions signInOptions = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestEmail().build();
        googleApiClient = new GoogleApiClient.Builder(this).enableAutoManage(this,this).addApi(Auth.GOOGLE_SIGN_IN_API,signInOptions).build();
        app_section.setVisibility(View.GONE);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.sign_in_button:
                signIn();
                break;
            case R.id.sign_out_button:
                signOut();
                break;
            case R.id.launchapp:
                Intent i=new Intent(Login.this,MainActivity.class);
                startActivity(i);

        }

    }

    @Override
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {

    }
    private void signIn()
    {
        Intent intent = Auth.GoogleSignInApi.getSignInIntent(googleApiClient);
        startActivityForResult(intent,REQ_CODE);
    }
    private void signOut(){
        Auth.GoogleSignInApi.signOut(googleApiClient).setResultCallback(new ResultCallback<Status>() {
            @Override
            public void onResult(@NonNull Status status) {
                updateUI(false);
            }
        });
    }
    private void handleResult(GoogleSignInResult result){
        if(result.isSuccess())
        {
            GoogleSignInAccount account = result.getSignInAccount();
            String name=account.getDisplayName();
            String email=account.getDisplayName();
            Name.setText(name);
            updateUI(true);
        }
        else
        {
            updateUI(false);
        }
        }
    private void updateUI(boolean isLogin)
    {
        if(isLogin){
            app_section.setVisibility(View.VISIBLE);
            signIn.setVisibility(View.GONE);
        }
        else
        {
            app_section.setVisibility(View.GONE);
            signIn.setVisibility(View.VISIBLE);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode==REQ_CODE){
            GoogleSignInResult result = Auth.GoogleSignInApi.getSignInResultFromIntent(data);
            handleResult(result);
        }
    }
}
