package com.example.schools;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Signature;
import java.util.HashMap;
import java.util.Map;

import android.util.Base64;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "schools/vulcansigner";
    private static final String ALGORITHM_NAME = "SHA1withRSA";
    private static final String CERT_TYPE = "pkcs12";
    private static final String CONTAINER_NAME = "LoginCert";
    private static final String PASSWORD = "CE75EA598C7743AD9B0B7328DED85B06";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall call, Result result) {
                        if (call.method.equals("signContent")) {
                            try {
                                HashMap arguments = (java.util.HashMap<String, String>) call.arguments;
                                String sign = signContent((String) call.argument("content"), (String) call.argument("certificate"));
                                result.success(sign);
                            } catch (Exception e) {
                                result.error("ERROR", "Cannot sign Vulcan Request", null);
                            }
                        }
                    }
                }
        );
    }

    // Based on https://github.com/VLO-GDA/uonet-sdk/blob/master/src/main/java/net/maciekmm/uonet/EncryptionUtils.java
    public static String signContent(String contents, String certificate) throws IOException, GeneralSecurityException, NullPointerException {
        InputStream cert = new ByteArrayInputStream(Base64.decode(certificate, Base64.DEFAULT));
        final KeyStore instance = KeyStore.getInstance(CERT_TYPE);
        instance.load(cert, PASSWORD.toCharArray());
        final PrivateKey privateKey = (PrivateKey) instance.getKey(CONTAINER_NAME, PASSWORD.toCharArray());
        final Signature instance2 = Signature.getInstance(ALGORITHM_NAME);
        instance2.initSign(privateKey);
        instance2.update(contents.getBytes("UTF-8"));
        return Base64.encodeToString(instance2.sign(), Base64.NO_WRAP);
    }
}
