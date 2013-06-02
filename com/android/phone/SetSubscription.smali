.class public Lcom/android/phone/SetSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field private final EVENT_SET_SUBSCRIPTION_DONE:I

.field private final EVENT_SIM_STATE_CHANGED:I

.field private final MAX_SUBSCRIPTIONS:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/TextView;

.field private mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

.field subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

.field private subErr:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 87
    iput v1, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/SetSubscription;->EVENT_SET_SUBSCRIPTION_DONE:I

    .line 91
    iput v1, p0, Lcom/android/phone/SetSubscription;->EVENT_SIM_STATE_CHANGED:I

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/SetSubscription;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 277
    new-instance v0, Lcom/android/phone/SetSubscription$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$3;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 458
    new-instance v0, Lcom/android/phone/SetSubscription$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$6;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SetSubscription;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SetSubscription;)Lcom/android/internal/telephony/msim/SubscriptionManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SetSubscription;)[Lcom/android/internal/telephony/msim/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SetSubscription;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    return-void
.end method

.method private errorMutipleDeactivate()V
    .registers 4

    .prologue
    .line 441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e041b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e041c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$5;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$4;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 456
    return-void
.end method

.method private isFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 520
    if-eqz p1, :cond_24

    if-eqz p1, :cond_26

    const-string v0, "DEACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "ACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 526
    :cond_24
    const/4 v0, 0x1

    .line 528
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private mapSub(I)Lcom/android/phone/SubscriptionID;
    .registers 4
    .parameter "sub"

    .prologue
    .line 233
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .line 234
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    if-nez p1, :cond_6

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 235
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .line 236
    :cond_b
    return-object v0
.end method

.method private populateList()V
    .registers 22

    .prologue
    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "subscr_parent"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 243
    .local v13, prefParent:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 244
    .local v5, display:Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 245
    .local v17, width:I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_cc

    .line 247
    .local v16, subGroupTitle:[I
    const/4 v9, 0x0

    .line 249
    .local v9, k:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .local v2, arr$:[Lcom/android/internal/telephony/msim/SubscriptionData;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Lcom/android/internal/telephony/msim/SubscriptionData;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .local v8, i$:I
    :goto_2b
    if-ge v8, v10, :cond_ca

    aget-object v4, v2, v8

    .line 250
    .local v4, cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v4, :cond_c3

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v18

    if-lez v18, :cond_c3

    .line 251
    const/4 v6, 0x0

    .line 254
    .local v6, i:I
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 255
    .local v15, subGroup:Landroid/preference/PreferenceCategory;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sub_group_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 256
    aget v18, v16, v9

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 257
    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v3, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .local v3, arr$:[Lcom/android/internal/telephony/msim/Subscription;
    array-length v11, v3

    .local v11, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_67
    if-ge v7, v11, :cond_c3

    aget-object v14, v3, v7

    .line 261
    .local v14, sub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v14, :cond_be

    iget-object v0, v14, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_be

    .line 262
    new-instance v12, Lcom/android/phone/SubscriptionCheckBoxPreference;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;-><init>(Landroid/content/Context;I)V

    .line 264
    .local v12, newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    iget-object v0, v14, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setTitleText(Ljava/lang/String;)V

    .line 266
    new-instance v18, Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "slot"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 268
    invoke-virtual {v15, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    .end local v12           #newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    :cond_be
    add-int/lit8 v6, v6, 0x1

    .line 260
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 273
    .end local v3           #arr$:[Lcom/android/internal/telephony/msim/Subscription;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v11           #len$:I
    .end local v14           #sub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v15           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_c3
    add-int/lit8 v9, v9, 0x1

    .line 249
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_2b

    .line 275
    .end local v4           #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_ca
    return-void

    .line 245
    nop

    :array_cc
    .array-data 0x4
        0x4t 0x4t 0xet 0x7ft
        0x5t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method private setSubscription()V
    .registers 18

    .prologue
    .line 332
    const/4 v4, 0x0

    .line 333
    .local v4, numSubSelected:I
    const/4 v1, 0x0

    .line 334
    .local v1, deactRequiredCount:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 336
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    array-length v13, v13

    if-ge v2, v13, :cond_1c

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    if-eqz v13, :cond_19

    .line 338
    add-int/lit8 v4, v4, 0x1

    .line 336
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 342
    :cond_1c
    if-nez v4, :cond_2e

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0e040b

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 347
    .local v12, toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 434
    .end local v12           #toast:Landroid/widget/Toast;
    :cond_2d
    :goto_2d
    return-void

    .line 349
    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    const/4 v13, 0x2

    if-ge v2, v13, :cond_1b1

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    if-nez v13, :cond_8a

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_87

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 360
    add-int/lit8 v1, v1, 0x1

    .line 349
    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 365
    :cond_8a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, key:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, splitKey:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v9, v13

    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "slot"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, sSlotId:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 369
    .local v8, slotId:I
    const/4 v13, 0x1

    aget-object v13, v9, v13

    const/4 v14, 0x1

    aget-object v14, v9, v14

    const-string v15, "index"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, sIndexId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 372
    .local v10, subIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v13, v13, v8

    if-nez v13, :cond_124

    .line 373
    const-string v13, "SetSubscription"

    const-string v14, "setSubscription: mCardSubscrInfo is not in sync with SubscriptionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_87

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_87

    .line 392
    :cond_124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v13, :cond_1a3

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v11, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 400
    .local v11, subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput-object v11, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 401
    sget-object v13, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v11, v13, :cond_177

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v14, v14, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/msim/Subscription;->equals(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v13

    if-nez v13, :cond_183

    .line 404
    :cond_177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 408
    :cond_183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_87

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_87

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_87

    .line 415
    .end local v11           #subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto/16 :goto_87

    .line 421
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #sIndexId:Ljava/lang/String;
    .end local v7           #sSlotId:Ljava/lang/String;
    .end local v8           #slotId:I
    .end local v9           #splitKey:[Ljava/lang/String;
    .end local v10           #subIndex:I
    :cond_1b1
    const/4 v13, 0x2

    if-lt v1, v13, :cond_1b9

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->errorMutipleDeactivate()V

    goto/16 :goto_2d

    .line 424
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    move-result v5

    .line 425
    .local v5, ret:Z
    if-eqz v5, :cond_2d

    .line 426
    const/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2d
.end method

.method private updateCheckBoxes()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "subscr_parent"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 189
    .local v5, prefParent:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    array-length v8, v8

    if-ge v2, v8, :cond_44

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 192
    .local v7, subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_41

    .line 193
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 194
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_33
    if-ge v3, v1, :cond_41

    .line 195
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 197
    .local v0, checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 189
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v1           #count:I
    .end local v3           #j:I
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 203
    .end local v7           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_44
    new-instance v8, Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-direct {v8, v10}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 204
    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v10, :cond_60

    .line 205
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v6

    .line 206
    .local v6, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 210
    .end local v6           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_60
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v8, :cond_e5

    .line 211
    const/4 v2, 0x0

    :goto_65
    if-ge v2, v10, :cond_de

    .line 212
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    const/4 v9, 0x0

    aput-object v9, v8, v2

    .line 213
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_db

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, key:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 220
    .restart local v7       #subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_db

    .line 221
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 223
    .restart local v0       #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-direct {p0, v2}, Lcom/android/phone/SetSubscription;->mapSub(I)Lcom/android/phone/SubscriptionID;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markChecked(Lcom/android/phone/SubscriptionID;)V

    .line 224
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v0, v8, v2

    .line 211
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 228
    :cond_de
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;->copyFrom(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 230
    :cond_e5
    return-void
.end method


# virtual methods
.method displayAlertDialog([Ljava/lang/String;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 552
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_8a

    .line 553
    .local v2, resSubId:[I
    const-string v0, ""

    .line 554
    .local v0, dispMsg:Ljava/lang/String;
    const v3, 0x7f0e0410

    .line 556
    .local v3, title:I
    aget-object v4, p1, v6

    if-eqz v4, :cond_1b

    aget-object v4, p1, v6

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 557
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 559
    :cond_1b
    aget-object v4, p1, v5

    if-eqz v4, :cond_29

    aget-object v4, p1, v5

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 560
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 563
    :cond_29
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    array-length v4, p1

    if-ge v1, v4, :cond_5f

    .line 564
    aget-object v4, p1, v1

    if-eqz v4, :cond_5c

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/phone/SetSubscription;->setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 570
    :cond_5f
    iget-boolean v4, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v4, :cond_66

    .line 571
    const v3, 0x7f0e040f

    .line 574
    :cond_66
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 580
    return-void

    .line 552
    nop

    :array_8a
    .array-data 0x4
        0x11t 0x4t 0xet 0x7ft
        0x12t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_7

    .line 597
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 599
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 600
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    .line 325
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->setSubscription()V

    .line 329
    :cond_7
    :goto_7
    return-void

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/16 v12, 0x4b

    const/4 v11, -0x2

    const/4 v10, 0x2

    .line 97
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-nez v7, :cond_b

    .line 162
    :cond_a
    :goto_a
    return-void

    .line 101
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 102
    .local v2, newCardNotify:Z
    if-nez v2, :cond_1e

    .line 103
    const v7, 0x1030005

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->setTheme(I)V

    .line 105
    :cond_1e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 110
    if-eqz v2, :cond_33

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_a

    .line 117
    :cond_33
    new-array v7, v10, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-ge v1, v10, :cond_47

    .line 119
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v8

    aput-object v8, v7, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 122
    :cond_47
    const v7, 0x7f060022

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->addPreferencesFromResource(I)V

    .line 123
    const v7, 0x7f04002e

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->setContentView(I)V

    .line 125
    const v7, 0x7f090088

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    .line 126
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v7, 0x7f09004b

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    .line 128
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v7, 0x7f0900f1

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, t1:Landroid/widget/TextView;
    const v7, 0x7f0900f2

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, t2:Landroid/widget/TextView;
    const v7, 0x7f0900f0

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, t3:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 137
    .local v6, width:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit16 v8, v6, -0x96

    invoke-direct {v7, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-array v7, v10, [Lcom/android/phone/SubscriptionCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 145
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v7, :cond_e1

    .line 146
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    .line 148
    new-instance v7, Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-direct {v7, v10}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 150
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 156
    :goto_c9
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSetSubscriptionInProgress()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 157
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 158
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 152
    :cond_e1
    const-string v7, "SetSubscription"

    const-string v8, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 499
    const/16 v1, 0x64

    if-ne p1, v1, :cond_20

    .line 500
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 502
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 503
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 504
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 508
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_7

    .line 587
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 589
    :cond_7
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 513
    const/16 v0, 0x64

    if-ne p1, v0, :cond_c

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 518
    :cond_c
    return-void
.end method

.method setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "status"

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, retStr:Ljava/lang/String;
    const-string v1, "ACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 534
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_14
    :goto_14
    return-object v0

    .line 535
    :cond_15
    const-string v1, "DEACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 536
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 537
    :cond_29
    const-string v1, "DEACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0416

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 539
    :cond_3d
    const-string v1, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 541
    :cond_51
    const-string v1, "ACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 542
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0415

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 543
    :cond_65
    const-string v1, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 544
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0417

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 545
    :cond_79
    const-string v1, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 546
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
