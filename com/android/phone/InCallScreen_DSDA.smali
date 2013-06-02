.class public Lcom/android/phone/InCallScreen_DSDA;
.super Landroid/app/Activity;
.source "InCallScreen_DSDA.java"

# interfaces
.implements Lcom/android/phone/InCallFragment$InCallFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen_DSDA$4;,
        Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;,
        Lcom/android/phone/InCallScreen_DSDA$TabListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field protected mApp:Lcom/android/phone/PhoneApp;

.field private mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mFragment0:Lcom/android/phone/InCallFragment;

.field private mFragment1:Lcom/android/phone/InCallFragment;

.field private mHandler:Landroid/os/Handler;

.field private mHideImmediately:Z

.field protected mIsDestroyed:Z

.field protected mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 216
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    .line 247
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 250
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHideImmediately:Z

    .line 352
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$1;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    .line 2101
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$3;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 2243
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen_DSDA;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->updateScreen()V

    return-void
.end method

.method private addSecondTab(I)V
    .registers 7
    .parameter "subscription"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 533
    .local v0, tab:Landroid/app/ActionBar$Tab;
    if-nez v0, :cond_12

    .line 534
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "should be called when atleast and only one tab is already on display"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    :cond_12
    const-string v3, "fragment0"

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 539
    const-string v2, "fragment1"

    .line 546
    .local v2, tagForNewTab:Ljava/lang/String;
    :goto_20
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 547
    .local v1, tab2:Landroid/app/ActionBar$Tab;
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 548
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 549
    new-instance v3, Lcom/android/phone/InCallScreen_DSDA$TabListener;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/phone/InCallScreen_DSDA$TabListener;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 553
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 560
    return-void

    .line 540
    .end local v1           #tab2:Landroid/app/ActionBar$Tab;
    .end local v2           #tagForNewTab:Ljava/lang/String;
    :cond_45
    const-string v3, "fragment1"

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 541
    const-string v2, "fragment0"

    .restart local v2       #tagForNewTab:Ljava/lang/String;
    goto :goto_20

    .line 543
    .end local v2           #tagForNewTab:Ljava/lang/String;
    :cond_54
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "tag created without a tag. We mandate each tab to have the tag"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private createfirstTab(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 511
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const-string v1, "fragment0"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 512
    const-string v1, "fragment0"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 513
    new-instance v1, Lcom/android/phone/InCallScreen_DSDA$TabListener;

    const-string v2, "fragment0"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/phone/InCallScreen_DSDA$TabListener;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 517
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 519
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 521
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 522
    return-void
.end method

.method private endInCallScreenSession(Z)V
    .registers 5
    .parameter "forceFinish"

    .prologue
    const/4 v1, 0x1

    .line 1000
    if-eqz p1, :cond_13

    .line 1001
    const-string v1, "InCallScreen_DSDA"

    const-string v2, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1015
    :cond_d
    :goto_d
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1016
    return-void

    .line 1005
    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 1008
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1009
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_d

    .line 1010
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    goto :goto_d
.end method

.method private getActiveFragment()Lcom/android/phone/InCallFragment;
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_17

    .line 588
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 590
    :goto_16
    return-object v0

    .line 589
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 590
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_16

    .line 594
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Fragment is currently active. Can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAltFragment(Landroid/app/Fragment;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "f"

    .prologue
    .line 2183
    if-nez p1, :cond_4

    .line 2184
    const/4 v0, 0x0

    .line 2188
    :goto_3
    return-object v0

    .line 2185
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2186
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_3

    .line 2188
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    goto :goto_3
.end method

.method private getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "phone"

    .prologue
    .line 2159
    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "tag"

    .prologue
    .line 2529
    const-string v0, "fragment0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2530
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2532
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_a
.end method

.method private getVisibleFragment()Lcom/android/phone/InCallFragment;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 568
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 573
    :goto_e
    return-object v0

    .line 569
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 570
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_e

    .line 573
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private handleCallKey()Z
    .registers 3

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1285
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_b

    .line 1286
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->handleCallKey()Z

    move-result v1

    .line 1288
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->okToDialDTMFTones()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1201
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1202
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1212
    .end local v0           #f:Lcom/android/phone/InCallFragment;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2094
    const-string v0, "InCallScreen_DSDA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    return-void
.end method

.method private okToDialDTMFTones()Z
    .registers 7

    .prologue
    .line 1850
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 1853
    .local v3, hasRingingCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1856
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1868
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_28

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_36

    :cond_28
    if-nez v3, :cond_36

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v5, :cond_36

    const/4 v0, 0x1

    .line 1878
    .local v0, canDial:Z
    :goto_35
    return v0

    .line 1868
    .end local v0           #canDial:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private updateScreen()V
    .registers 2

    .prologue
    .line 2123
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-nez v0, :cond_d

    .line 2124
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "No refresh if the activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2127
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2128
    :cond_16
    return-void
.end method


# virtual methods
.method protected dismissAllDialogs()V
    .registers 3

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_21

    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_21

    .line 1455
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1457
    :cond_21
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2035
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2037
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2039
    const/4 v0, 0x1

    return v0
.end method

.method public endInCallScreenSession()V
    .registers 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_f

    .line 986
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(Z)V

    .line 990
    :goto_e
    return-void

    .line 988
    :cond_f
    const-string v0, "InCallScreen_DSDA"

    const-string v1, "endInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public endInCallScreenSession(IZ)V
    .registers 10
    .parameter "subscription"
    .parameter "forceFinish"

    .prologue
    .line 933
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 934
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 936
    .local v0, f:Landroid/app/Fragment;
    if-nez v0, :cond_16

    .line 937
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_15

    const-string v5, "Can\'t find a fragment attached with this phone object. Bailing out"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 974
    :cond_15
    :goto_15
    return-void

    .line 943
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getTabCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_57

    .line 944
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getAltFragment(Landroid/app/Fragment;)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 945
    .local v1, frag:Lcom/android/phone/InCallFragment;
    if-eqz v1, :cond_2a

    .line 946
    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->updateAfterTabChange()V

    .line 956
    .end local v1           #frag:Lcom/android/phone/InCallFragment;
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 959
    .local v4, tab:Landroid/app/ActionBar$Tab;
    if-eqz v4, :cond_3b

    .line 960
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 963
    :cond_3b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 964
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 965
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 968
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_5f

    .line 969
    invoke-direct {p0, p2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(Z)V

    goto :goto_15

    .line 950
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    .end local v4           #tab:Landroid/app/ActionBar$Tab;
    :cond_57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->resetmActiveSubscription()V

    goto :goto_2a

    .line 971
    .restart local v2       #ft:Landroid/app/FragmentTransaction;
    .restart local v4       #tab:Landroid/app/ActionBar$Tab;
    :cond_5f
    const-string v5, "InCallScreen_DSDA"

    const-string v6, "endInCallScreenSession(): Call in progress"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 921
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 922
    return-void
.end method

.method public getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-ne p1, v0, :cond_1f

    .line 2167
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2173
    :goto_1e
    return-object v0

    .line 2168
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-ne p1, v0, :cond_3e

    .line 2170
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_1e

    .line 2173
    :cond_3e
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2133
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 2134
    invoke-virtual {v3}, Landroid/app/ActionBar;->getTabCount()I

    move-result v4

    .line 2137
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_c
    if-ge v2, v4, :cond_1c

    .line 2138
    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 2139
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2144
    :cond_1c
    if-nez v1, :cond_2b

    .line 2145
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "something wrong. Could not find a tab with a certain tag"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2149
    :cond_27
    :goto_27
    return-object v0

    .line 2137
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    move-object v0, v1

    .line 2149
    goto :goto_27
.end method

.method getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
    .registers 2

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    return-object v0
.end method

.method public handleOtaCallEnd()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2004
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2005
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_35

    :cond_1f
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_35

    .line 2012
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 2013
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->updateScreen()V

    .line 2016
    :cond_35
    return-void
.end method

.method internalHangup()V
    .registers 3

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1528
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1543
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_f

    .line 1567
    :cond_f
    return-void
.end method

.method protected internalResolveIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 1079
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1186
    :cond_8
    :goto_8
    return-void

    .line 1082
    :cond_9
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v5

    .line 1083
    .local v5, subscription:I
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1084
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1107
    .local v4, sub:I
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1118
    const-string v6, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1123
    const-string v6, "com.android.phone.ShowDialpad"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1128
    .local v3, showDialpad:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 1129
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v6, v1, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    aput-boolean v3, v6, v4

    goto :goto_8

    .line 1139
    .end local v1           #mUIState:Lcom/android/phone/MSimInCallUiState;
    .end local v3           #showDialpad:Z
    :cond_4b
    const-string v6, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1145
    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 1146
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1151
    :cond_72
    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v6, v4}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 1153
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v6, :cond_8

    .line 1155
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1156
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v7, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto/16 :goto_8

    .line 1163
    :cond_96
    const-string v6, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 1167
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1170
    :cond_b7
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 1175
    :cond_c7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1177
    :cond_e0
    const-string v6, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 1180
    const-string v6, "InCallScreen_DSDA"

    const-string v7, "internalResolveIntent: got launched with ACTION_UNDEFINED"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1183
    :cond_f1
    const-string v6, "InCallScreen_DSDA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method internalSilenceRinger()V
    .registers 3

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1510
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1512
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 1514
    :cond_d
    return-void
.end method

.method isDialerOpened()Z
    .registers 3

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v1

    .line 2506
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .registers 2

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1985
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1986
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_20

    .line 1990
    :cond_1f
    const/4 v1, 0x1

    .line 1992
    :cond_20
    return v1
.end method

.method public isOtaCallInEndState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2020
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2021
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method okToShowDialpad()Z
    .registers 2

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 267
    instance-of v0, p1, Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_14

    .line 268
    const-string v0, "fragment0"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 269
    check-cast p1, Lcom/android/phone/InCallFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 275
    :cond_14
    :goto_14
    return-void

    .line 270
    .restart local p1
    :cond_15
    const-string v0, "fragment1"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 271
    check-cast p1, Lcom/android/phone/InCallFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    .line 1223
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1228
    sget-boolean v3, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "BACK key while ringing: ignored"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1271
    :cond_11
    :goto_11
    return-void

    .line 1238
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1240
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-nez v0, :cond_1c

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_11

    .line 1246
    :cond_1c
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v2

    .line 1247
    .local v2, sub:I
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 1249
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1250
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_11

    .line 1255
    :cond_35
    iget-object v3, v0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isManageConferenceMode()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1256
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallFragment;->hideMoreInternal(Z)V

    goto :goto_11

    .line 1261
    :cond_48
    iget-object v3, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v4, :cond_59

    .line 1263
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 1264
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->requestUpdateScreen()V

    goto :goto_11

    .line 1270
    :cond_59
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_11
.end method

.method public onCloseFragment(IZ)V
    .registers 3
    .parameter "subscription"
    .parameter "forcefinish"

    .prologue
    .line 2226
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(IZ)V

    .line 2227
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2062
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2072
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v2, :cond_11

    move v0, v2

    .line 2073
    .local v0, isKeyboardOpen:Z
    :goto_a
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    move v1, v2

    .line 2075
    .local v1, isLandscape:Z
    :goto_10
    return-void

    .end local v0           #isKeyboardOpen:Z
    .end local v1           #isLandscape:Z
    :cond_11
    move v0, v3

    .line 2072
    goto :goto_a

    .restart local v0       #isKeyboardOpen:Z
    :cond_13
    move v1, v3

    .line 2073
    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 420
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v5, :cond_5

    .line 503
    :goto_4
    return-void

    .line 424
    :cond_5
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 428
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 429
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->setRequestedOrientation(I)V

    .line 434
    :cond_15
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_24

    .line 440
    const-string v5, "InCallScreen_DSDA"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->finish()V

    goto :goto_4

    .line 445
    :cond_24
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    .line 446
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget-object v7, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 450
    .local v4, subscription:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 453
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/high16 v0, 0x8

    .line 454
    .local v0, flags:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 455
    .local v3, ps:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_54

    .line 461
    const/high16 v5, 0x40

    or-int/2addr v0, v5

    .line 463
    :cond_54
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->addFlags(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 472
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 474
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen_DSDA;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 476
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 483
    invoke-static {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->getInstance(Lcom/android/phone/InCallScreen_DSDA;)Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    .line 485
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mPowerManager:Landroid/os/PowerManager;

    .line 496
    if-nez p1, :cond_95

    .line 497
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_8e

    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 498
    :cond_8e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->internalResolveIntent(Landroid/content/Intent;)V

    .line 502
    :cond_95
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 856
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 860
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    .line 866
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->dismissAllDialogs()V

    .line 878
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_21

    .line 879
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    .line 881
    :cond_21
    return-void
.end method

.method public onFragmentDetached(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 2194
    const-string v0, "fragment0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2195
    iput-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2200
    :cond_b
    :goto_b
    return-void

    .line 2196
    :cond_c
    const-string v0, "fragment1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2197
    iput-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1343
    sparse-switch p1, :sswitch_data_3c

    .line 1420
    :cond_4
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_37

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1424
    :cond_10
    :goto_10
    :sswitch_10
    return v2

    .line 1345
    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->handleCallKey()Z

    move-result v1

    .line 1346
    .local v1, handled:Z
    if-nez v1, :cond_10

    .line 1347
    const-string v3, "InCallScreen_DSDA"

    const-string v4, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1367
    .end local v1           #handled:Z
    :sswitch_1f
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_4

    .line 1380
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->internalSilenceRinger()V

    goto :goto_10

    .line 1391
    :sswitch_2d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->onMuteClick()V

    goto :goto_10

    .line 1424
    .end local v0           #f:Lcom/android/phone/InCallFragment;
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_10

    .line 1343
    :sswitch_data_3c
    .sparse-switch
        0x5 -> :sswitch_11
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1b -> :sswitch_10
        0x46 -> :sswitch_4
        0x4c -> :sswitch_4
        0x5b -> :sswitch_2d
        0xa4 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1327
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1328
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1337
    :cond_1f
    :goto_1f
    return v1

    .line 1333
    :cond_20
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    .line 1337
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1f
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1076
    return-void
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 771
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 772
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 773
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 780
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 783
    const v0, 0x1129e

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->dismissAllDialogs()V

    .line 790
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 797
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/InCallScreen_DSDA$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen_DSDA$2;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 812
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 819
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->updateKeyguardPolicy(Z)V

    .line 822
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 899
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/16 v8, 0x70

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 617
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 620
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 623
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 627
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-ne v0, v7, :cond_dc

    .line 628
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_2f

    const-string v0, "Already two fragments panned out"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 630
    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 631
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move v1, v2

    .line 632
    :goto_40
    if-ge v1, v7, :cond_5d

    .line 633
    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 634
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-eq v0, v3, :cond_5a

    .line 632
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    .line 638
    :cond_5a
    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 670
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 673
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 679
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 689
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen_DSDA;->takeKeyEvents(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v0

    .line 701
    if-eqz v0, :cond_125

    .line 702
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setVolumeControlStream(I)V

    .line 709
    :goto_99
    const v0, 0x1129d

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 716
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_12a

    .line 732
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 747
    :goto_b3
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 751
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 754
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreMuteState(I)Ljava/lang/Boolean;

    .line 756
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 759
    :cond_ce
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 760
    return-void

    .line 644
    :cond_dc
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-ne v0, v6, :cond_10f

    .line 647
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActiveFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-ne v0, v3, :cond_10a

    .line 648
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_f9

    const-string v0, "resume event is for already visible fragment"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 650
    :cond_f9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_5d

    .line 653
    :cond_10a
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->addSecondTab(I)V

    goto/16 :goto_5d

    .line 657
    :cond_10f
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->createfirstTab(I)V

    .line 663
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 664
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->addSecondTab(I)V

    goto/16 :goto_5d

    .line 704
    :cond_125
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen_DSDA;->setVolumeControlStream(I)V

    goto/16 :goto_99

    .line 745
    :cond_12a
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_b3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 889
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 826
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 832
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 834
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_46

    .line 838
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_46

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_46

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_46

    .line 846
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 847
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_46

    .line 848
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 852
    :cond_46
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1314
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-nez p1, :cond_16

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1315
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1318
    :cond_16
    return-void
.end method

.method public refreshRejectCallHint(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 2542
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2543
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 2545
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_11

    .line 2546
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->setRejectCallHint()V

    .line 2548
    :cond_11
    return-void
.end method

.method public refreshTabs()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 2511
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2512
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v5

    .line 2513
    .local v5, tabCount:I
    if-le v5, v9, :cond_36

    .line 2514
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v5, :cond_36

    .line 2515
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 2516
    .local v4, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 2517
    .local v1, fragment:Lcom/android/phone/InCallFragment;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2518
    .local v3, isSelected:Z
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v8

    invoke-virtual {v1, v7, v3, v9, v8}, Lcom/android/phone/InCallFragment;->getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;

    move-result-object v6

    .line 2520
    .local v6, tabView:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2514
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2526
    .end local v1           #fragment:Lcom/android/phone/InCallFragment;
    .end local v2           #i:I
    .end local v3           #isSelected:Z
    .end local v4           #tab:Landroid/app/ActionBar$Tab;
    .end local v6           #tabView:Landroid/view/View;
    :cond_36
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1972
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1981
    return-void
.end method

.method requestUpdateScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x7a

    .line 1948
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1949
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1953
    return-void
.end method

.method public resetInCallScreenMode()V
    .registers 2

    .prologue
    .line 2030
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2031
    return-void
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 1584
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1586
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$4;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_142

    .line 1711
    :cond_15
    :goto_15
    return-void

    .line 1588
    :pswitch_16
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1590
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_15

    .line 1593
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 1596
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_3c

    .line 1598
    :cond_36
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_15

    .line 1608
    :cond_3c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 1610
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1614
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1623
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1625
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 1628
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_15

    .line 1639
    :pswitch_88
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1640
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1643
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_15

    .line 1648
    :pswitch_ab
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1649
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1653
    :goto_bc
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1654
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_15

    .line 1651
    :cond_d4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_bc

    .line 1658
    :pswitch_e0
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1660
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_15

    .line 1664
    :pswitch_f6
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1666
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_15

    .line 1694
    :pswitch_10c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1698
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_13c

    .line 1699
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_12d

    .line 1700
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1707
    :cond_12d
    :goto_12d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_15

    .line 1703
    :cond_13c
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    goto :goto_12d

    .line 1586
    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_16
        :pswitch_88
        :pswitch_ab
        :pswitch_e0
        :pswitch_f6
        :pswitch_10c
    .end packed-switch
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1715
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1716
    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object p1, v0, p2

    .line 1717
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    .line 1720
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$4;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_138

    .line 1838
    :goto_1e
    return-void

    .line 1722
    :pswitch_1f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1724
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    goto :goto_1e

    .line 1727
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v0

    .line 1730
    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_45

    .line 1732
    :cond_3f
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    goto :goto_1e

    .line 1741
    :cond_45
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 1743
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1747
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1756
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1758
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 1761
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1e

    .line 1772
    :pswitch_91
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1773
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1776
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1e

    .line 1781
    :pswitch_b4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1782
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1783
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_1e

    .line 1787
    :pswitch_d7
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1789
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1e

    .line 1793
    :pswitch_ed
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1795
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1e

    .line 1823
    :pswitch_103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1827
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_131

    .line 1828
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_124

    .line 1829
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1835
    :cond_124
    :goto_124
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1e

    .line 1832
    :cond_131
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    goto :goto_124

    .line 1720
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_91
        :pswitch_b4
        :pswitch_d7
        :pswitch_ed
        :pswitch_103
    .end packed-switch
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 611
    return-void
.end method

.method public setupPathFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2209
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 2210
    if-nez v0, :cond_3c

    .line 2211
    const-string v0, "InCallScreen_DSDA"

    const-string v1, "could not find a fragment for an active subscription. Would give default file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_hh_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2216
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2220
    :goto_3b
    return-object v0

    :cond_3c
    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1036
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    .line 1039
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1040
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    .line 1043
    :cond_32
    return-void
.end method

.method updateAllScreenAll()V
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1049
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1052
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1053
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1055
    :cond_32
    return-void
.end method

.method public updateFragmentScreen(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2555
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 2556
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_f

    .line 2557
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 2560
    .end local v0           #fragment:Lcom/android/phone/InCallFragment;
    :cond_f
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .registers 4
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1023
    if-eqz p1, :cond_c

    .line 1024
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1028
    :goto_b
    return-void

    .line 1026
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_b
.end method
