.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 4
    .parameter
    .parameter "toneId"

    .prologue
    .line 2125
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2127
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2129
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 2133
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2135
    const/4 v8, 0x0

    .line 2140
    .local v8, toneType:I
    const/4 v3, 0x2

    .line 2142
    .local v3, phoneType:I
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_5d

    .line 2143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2149
    :goto_3d
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_220

    .line 2240
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2145
    :cond_5d
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    goto :goto_3d

    .line 2151
    :pswitch_6c
    const/16 v8, 0x16

    .line 2152
    const/16 v9, 0x50

    .line 2154
    .local v9, toneVolume:I
    const v7, 0x7fffffeb

    .line 2248
    .local v7, toneLengthMillis:I
    :goto_73
    :try_start_73
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_176

    .line 2249
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_88

    const/4 v5, 0x6

    .line 2254
    .local v5, stream:I
    :cond_88
    :goto_88
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_8d} :catch_179

    .line 2276
    .end local v5           #stream:I
    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    :goto_8d
    const/4 v1, 0x1

    .line 2277
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2279
    .local v2, okToPlayTone:Z
    if-eqz v6, :cond_c6

    .line 2280
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 2281
    .local v4, ringerMode:I
    if-ne v3, v14, :cond_1fe

    .line 2282
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_195

    .line 2283
    if-eqz v4, :cond_a7

    if-eq v4, v13, :cond_a7

    .line 2286
    const/4 v2, 0x1

    .line 2287
    const/4 v1, 0x0

    .line 2314
    :cond_a7
    :goto_a7
    monitor-enter p0

    .line 2315
    if-eqz v2, :cond_bf

    :try_start_aa
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_bf

    .line 2316
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2317
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_21c

    .line 2319
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_b7
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_21c
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_201

    .line 2324
    :goto_ba
    if-eqz v1, :cond_bf

    .line 2325
    :try_start_bc
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2329
    :cond_bf
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 2330
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2331
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_21c

    .line 2347
    .end local v4           #ringerMode:I
    :cond_c6
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_d9

    .line 2348
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)V

    .line 2350
    :cond_d9
    return-void

    .line 2157
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_da
    if-eq v3, v14, :cond_df

    const/4 v10, 0x4

    if-ne v3, v10, :cond_e6

    .line 2159
    :cond_df
    const/16 v8, 0x60

    .line 2160
    const/16 v9, 0x32

    .line 2161
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto :goto_73

    .line 2162
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_e6
    if-eq v3, v13, :cond_eb

    const/4 v10, 0x3

    if-ne v3, v10, :cond_f2

    .line 2164
    :cond_eb
    const/16 v8, 0x11

    .line 2165
    const/16 v9, 0x50

    .line 2166
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .restart local v7       #toneLengthMillis:I
    goto :goto_73

    .line 2168
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_f2
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2172
    :pswitch_10b
    const/16 v8, 0x12

    .line 2173
    const/16 v9, 0x50

    .line 2174
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2175
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2181
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_113
    const/16 v8, 0x19

    .line 2182
    const/16 v9, 0x50

    .line 2183
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 2184
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2186
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_11b
    const/16 v8, 0x1b

    .line 2187
    const/16 v9, 0x50

    .line 2188
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2189
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2191
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_123
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_135

    .line 2193
    const/16 v8, 0x5d

    .line 2194
    const/16 v9, 0x50

    .line 2195
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2197
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_135
    const/16 v8, 0x1b

    .line 2198
    const/16 v9, 0x50

    .line 2199
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2201
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2203
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_13d
    const/16 v8, 0x56

    .line 2204
    const/16 v9, 0x50

    .line 2205
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2206
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2208
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_145
    const/16 v8, 0x26

    .line 2209
    const/16 v9, 0x50

    .line 2210
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2211
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2213
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_14d
    const/16 v8, 0x25

    .line 2214
    const/16 v9, 0x32

    .line 2215
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 2216
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2219
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_155
    const/16 v8, 0x5f

    .line 2220
    const/16 v9, 0x32

    .line 2221
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 2222
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2224
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_15d
    const/16 v8, 0x57

    .line 2225
    const/16 v9, 0x32

    .line 2226
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2227
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2229
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_165
    const/16 v8, 0x17

    .line 2230
    const/16 v9, 0x50

    .line 2232
    .restart local v9       #toneVolume:I
    const v7, 0x7fffffeb

    .line 2233
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2235
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_16e
    const/16 v8, 0x15

    .line 2236
    const/16 v9, 0x50

    .line 2237
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2238
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2252
    :cond_176
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_88

    .line 2256
    .end local v5           #stream:I
    :catch_179
    move-exception v0

    .line 2257
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/4 v6, 0x0

    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_8d

    .line 2289
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_195
    const/16 v10, 0x60

    if-eq v8, v10, :cond_1a9

    const/16 v10, 0x26

    if-eq v8, v10, :cond_1a9

    const/16 v10, 0x27

    if-eq v8, v10, :cond_1a9

    const/16 v10, 0x25

    if-eq v8, v10, :cond_1a9

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_1cd

    .line 2294
    :cond_1a9
    if-eqz v4, :cond_a7

    .line 2295
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$600()Z

    move-result v10

    if-eqz v10, :cond_1c9

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2296
    :cond_1c9
    const/4 v2, 0x1

    .line 2297
    const/4 v1, 0x0

    goto/16 :goto_a7

    .line 2299
    :cond_1cd
    const/16 v10, 0x57

    if-eq v8, v10, :cond_1d5

    const/16 v10, 0x56

    if-ne v8, v10, :cond_1fb

    .line 2301
    :cond_1d5
    if-eqz v4, :cond_a7

    if-eq v4, v13, :cond_a7

    .line 2303
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$600()Z

    move-result v10

    if-eqz v10, :cond_1f7

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2304
    :cond_1f7
    const/4 v2, 0x1

    .line 2305
    const/4 v1, 0x0

    goto/16 :goto_a7

    .line 2308
    :cond_1fb
    const/4 v2, 0x1

    goto/16 :goto_a7

    .line 2311
    :cond_1fe
    const/4 v2, 0x1

    goto/16 :goto_a7

    .line 2320
    :catch_201
    move-exception v0

    .line 2321
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_202
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 2331
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_21c
    move-exception v10

    monitor-exit p0
    :try_end_21e
    .catchall {:try_start_202 .. :try_end_21e} :catchall_21c

    throw v10

    .line 2149
    nop

    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_da
        :pswitch_10b
        :pswitch_113
        :pswitch_11b
        :pswitch_13d
        :pswitch_145
        :pswitch_14d
        :pswitch_155
        :pswitch_155
        :pswitch_15d
        :pswitch_123
        :pswitch_165
        :pswitch_16e
    .end packed-switch
.end method

.method public stopTone()V
    .registers 3

    .prologue
    .line 2353
    monitor-enter p0

    .line 2354
    :try_start_1
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2355
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2357
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2358
    monitor-exit p0

    .line 2359
    return-void

    .line 2358
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
