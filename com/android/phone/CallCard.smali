.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;,
        Lcom/android/phone/CallCard$Fade;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static bgConn:Lcom/android/internal/telephony/Connection;

.field private static fgConn:Lcom/android/internal/telephony/Connection;


# instance fields
.field private final EMEGENCYNUM_190:Ljava/lang/String;

.field private fg:Z

.field private isBrazilCustom:I

.field private final isChinaTelecom:Z

.field private lastConCreatTime:J

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private final mClassPath:Ljava/lang/String;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mIsRinging:Z

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mParticipants:Landroid/widget/TextView;

.field private final mPatternNumber:Ljava/lang/String;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberAlwaysShow:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field protected mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mProviderAddress:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/ViewGroup;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mSaveEmergencyNumber:Ljava/lang/String;

.field protected mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryInfoContainer:Landroid/view/ViewGroup;

.field private mShowThirdCallTip:Landroid/widget/TextView;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTextColorCallTypeSip:I

.field private mVideoCallPanel:Lcom/android/phone/VideoCallPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    const-string v2, "190"

    iput-object v2, p0, Lcom/android/phone/CallCard;->EMEGENCYNUM_190:Ljava/lang/String;

    .line 214
    iput v1, p0, Lcom/android/phone/CallCard;->isBrazilCustom:I

    .line 216
    iput-object v4, p0, Lcom/android/phone/CallCard;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 217
    const-string v2, "com.android.internal.telephony.CallerInfo"

    iput-object v2, p0, Lcom/android/phone/CallCard;->mClassPath:Ljava/lang/String;

    .line 219
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 222
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 225
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    .line 230
    const-string v2, "ro.config.hw_mdnpatternnumber"

    const-string v3, "13,15,18"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPatternNumber:Ljava/lang/String;

    .line 232
    const-string v2, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "92"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    :goto_44
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->isChinaTelecom:Z

    .line 245
    iput-object v4, p0, Lcom/android/phone/CallCard;->mSaveEmergencyNumber:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 266
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hw_brazil_eccNums"

    invoke-static {v0, v2, v1}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->isBrazilCustom:I

    .line 269
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 271
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 274
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 277
    return-void

    :cond_86
    move v0, v1

    .line 232
    goto :goto_44
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 3072
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 3073
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3074
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3076
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 3077
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3079
    :cond_15
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 780
    if-nez p2, :cond_e

    .line 782
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1045
    :cond_d
    :goto_d
    return-void

    .line 785
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 787
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 788
    sget-object v1, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28e

    .line 859
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_3a
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 865
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    .line 866
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    .line 871
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_85

    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 877
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->fg:Z

    if-ne v0, v6, :cond_124

    .line 879
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 880
    iget-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10e

    .line 881
    iput-boolean v7, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 882
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 883
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 900
    :cond_85
    :goto_85
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13f

    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13c

    move v0, v6

    .line 905
    :goto_a2
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_142

    if-eqz v0, :cond_142

    .line 908
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 1027
    :goto_ad
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1032
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v0, :cond_d

    .line 1034
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    .line 794
    :pswitch_d1
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->updateCallCard(Lcom/android/internal/telephony/Call;)V

    .line 796
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 797
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 798
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_3a

    .line 806
    :pswitch_e5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3a

    .line 812
    :pswitch_ec
    iput-boolean v6, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 815
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3a

    .line 821
    :pswitch_f5
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->updateCallCard(Lcom/android/internal/telephony/Call;)V

    .line 826
    :pswitch_f8
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3a

    .line 833
    :pswitch_fd
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->updateCallCard(Lcom/android/internal/telephony/Call;)V

    .line 838
    :pswitch_100
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3a

    .line 848
    :pswitch_105
    const-string v0, "CallCard"

    const-string v1, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 885
    :cond_10e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 886
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 887
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_85

    .line 890
    :cond_124
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 891
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 892
    iput-boolean v6, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 893
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_85

    :cond_13c
    move v0, v7

    .line 900
    goto/16 :goto_a2

    :cond_13f
    move v0, v6

    goto/16 :goto_a2

    .line 913
    :cond_142
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 914
    if-ne v8, v9, :cond_17e

    .line 918
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 922
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 926
    :goto_162
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 934
    :goto_166
    if-nez v5, :cond_1a1

    .line 939
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 940
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move v3, v7

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 924
    :cond_17a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    goto :goto_162

    .line 927
    :cond_17e
    if-eq v8, v6, :cond_183

    const/4 v0, 0x3

    if-ne v8, v0, :cond_188

    .line 929
    :cond_183
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_166

    .line 931
    :cond_188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_1a1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 947
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 948
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_200

    .line 949
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v3, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    .line 957
    :goto_1b8
    if-ne v8, v9, :cond_28b

    .line 958
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 959
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 960
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    .line 962
    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_207

    move-object v0, v1

    .line 963
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    .line 968
    :cond_1d0
    :goto_1d0
    if-eqz v4, :cond_28b

    .line 969
    if-eqz v8, :cond_288

    iget-object v0, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    move v0, v6

    .line 972
    :goto_1dd
    if-eqz v9, :cond_1e8

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e8

    move v0, v6

    .line 978
    :cond_1e8
    :goto_1e8
    if-eqz v0, :cond_212

    .line 979
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, p0, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 981
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v0, :cond_210

    move v3, v6

    :goto_1f9
    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 952
    :cond_200
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    goto :goto_1b8

    .line 964
    :cond_207
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1d0

    move-object v0, v1

    .line 965
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    goto :goto_1d0

    :cond_210
    move v3, v7

    .line 981
    goto :goto_1f9

    .line 987
    :cond_212
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_25e

    .line 988
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 993
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 994
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 995
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_244

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_244

    if-eqz v0, :cond_244

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_244

    .line 997
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_244

    .line 1000
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    move-object v1, v0

    .line 1004
    :cond_244
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1005
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1006
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    move-object v0, p0

    move v3, v7

    move-object v4, p2

    .line 1008
    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1009
    :cond_25e
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_26e

    .line 1010
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    move v3, v6

    move-object v4, p2

    .line 1011
    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1013
    :cond_26e
    const-string v0, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    :cond_288
    move v0, v3

    goto/16 :goto_1dd

    :cond_28b
    move v0, v3

    goto/16 :goto_1e8

    .line 788
    :pswitch_data_28e
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_e5
        :pswitch_e5
        :pswitch_ec
        :pswitch_f5
        :pswitch_f8
        :pswitch_fd
        :pswitch_100
        :pswitch_105
    .end packed-switch
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1053
    if-nez p2, :cond_e

    .line 1055
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1288
    :cond_d
    :goto_d
    return-void

    .line 1058
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1060
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1061
    sget-object v1, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_286

    .line 1116
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :goto_3a
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 1122
    invoke-static {p1, p3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    .line 1123
    invoke-static {p1, p3}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    .line 1126
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_85

    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1130
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->fg:Z

    if-ne v0, v6, :cond_11b

    .line 1132
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 1133
    iget-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_105

    .line 1134
    iput-boolean v7, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 1135
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 1136
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1151
    :cond_85
    :goto_85
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_136

    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_133

    move v0, v6

    .line 1154
    :goto_a2
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_139

    if-eqz v0, :cond_139

    .line 1157
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 1270
    :goto_ad
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1275
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v0, :cond_d

    .line 1277
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1278
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    .line 1065
    :pswitch_d1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_3a

    .line 1073
    :pswitch_e2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3a

    .line 1079
    :pswitch_e9
    iput-boolean v6, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 1082
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3a

    .line 1089
    :pswitch_f2
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3a

    .line 1096
    :pswitch_f7
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3a

    .line 1105
    :pswitch_fc
    const-string v0, "CallCard"

    const-string v1, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 1138
    :cond_105
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 1139
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1140
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_85

    .line 1143
    :cond_11b
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 1144
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1145
    iput-boolean v6, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 1146
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_85

    :cond_133
    move v0, v7

    .line 1151
    goto/16 :goto_a2

    :cond_136
    move v0, v6

    goto/16 :goto_a2

    .line 1162
    :cond_139
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 1163
    if-ne v8, v9, :cond_175

    .line 1165
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1167
    sget-object v0, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 1171
    :goto_159
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1179
    :goto_15d
    if-nez v5, :cond_198

    .line 1184
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1185
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move v3, v7

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1169
    :cond_171
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    goto :goto_159

    .line 1172
    :cond_175
    if-eq v8, v6, :cond_17a

    const/4 v0, 0x3

    if-ne v8, v0, :cond_17f

    .line 1174
    :cond_17a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_15d

    .line 1176
    :cond_17f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_198
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1192
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 1193
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_1f7

    .line 1194
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v3, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    .line 1202
    :goto_1af
    if-ne v8, v9, :cond_282

    .line 1203
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1204
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1205
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    .line 1207
    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_1fe

    move-object v0, v1

    .line 1208
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    .line 1213
    :cond_1c7
    :goto_1c7
    if-eqz v4, :cond_282

    .line 1214
    if-eqz v8, :cond_27f

    iget-object v0, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27f

    move v0, v6

    .line 1217
    :goto_1d4
    if-eqz v9, :cond_1df

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1df

    move v0, v6

    .line 1223
    :cond_1df
    :goto_1df
    if-eqz v0, :cond_209

    .line 1224
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, p0, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1226
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v0, :cond_207

    move v3, v6

    :goto_1f0
    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1197
    :cond_1f7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    goto :goto_1af

    .line 1209
    :cond_1fe
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1c7

    move-object v0, v1

    .line 1210
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    goto :goto_1c7

    :cond_207
    move v3, v7

    .line 1226
    goto :goto_1f0

    .line 1232
    :cond_209
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_255

    .line 1233
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 1237
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1238
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_23b

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_23b

    if-eqz v0, :cond_23b

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23b

    .line 1241
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_23b

    .line 1244
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    move-object v1, v0

    .line 1248
    :cond_23b
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1249
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1250
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    move-object v0, p0

    move v3, v7

    move-object v4, p2

    .line 1251
    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1252
    :cond_255
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_265

    .line 1253
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    move v3, v6

    move-object v4, p2

    .line 1254
    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_ad

    .line 1256
    :cond_265
    const-string v0, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    :cond_27f
    move v0, v3

    goto/16 :goto_1d4

    :cond_282
    move v0, v3

    goto/16 :goto_1df

    .line 1061
    nop

    :pswitch_data_286
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_d1
        :pswitch_e2
        :pswitch_e9
        :pswitch_f2
        :pswitch_f2
        :pswitch_f7
        :pswitch_f7
        :pswitch_fc
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const v9, 0x7f02009f

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1936
    if-eqz p2, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1937
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1942
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1946
    invoke-direct {p0, v7}, Lcom/android/phone/CallCard;->resetPhotoLayout(Z)V

    .line 2146
    :cond_26
    :goto_26
    return-void

    .line 1952
    :cond_27
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1954
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1955
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_18a

    .line 2128
    :pswitch_3a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2136
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2137
    invoke-direct {p0, v7}, Lcom/android/phone/CallCard;->resetPhotoLayout(Z)V

    .line 2144
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_26

    .line 1963
    :pswitch_52
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1965
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1966
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1969
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1970
    if-ne v0, v6, :cond_75

    .line 1984
    :cond_75
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_3f

    .line 2004
    :cond_7e
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2010
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2012
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    :goto_b5
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_dc

    .line 2030
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_3f

    .line 2016
    :cond_c2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, p2, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2018
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 2033
    :cond_dc
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3f

    .line 2047
    :pswitch_e3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17f

    .line 2049
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 2051
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 2052
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_123

    .line 2057
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2064
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2066
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3f

    .line 2072
    :cond_123
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 2074
    sget-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 2083
    :goto_139
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v1, v0, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 2089
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2091
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2093
    if-eqz v3, :cond_186

    iget v1, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v4, :cond_186

    .line 2095
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 2099
    :goto_161
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2107
    if-nez v0, :cond_178

    iget-boolean v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_178

    .line 2108
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_3f

    .line 2080
    :cond_173
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_139

    .line 2111
    :cond_178
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3f

    .line 2117
    :cond_17f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_3f

    :cond_186
    move-object v1, v0

    move v0, v7

    goto :goto_161

    .line 1955
    nop

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_3a
        :pswitch_52
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x7f02009f

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1741
    if-eqz p2, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1742
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1910
    :cond_19
    :goto_19
    return-void

    .line 1746
    :cond_1a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    .line 1748
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1749
    sget-object v1, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_180

    .line 1907
    :pswitch_2c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_19

    .line 1757
    :pswitch_32
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1759
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1760
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1763
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1764
    if-ne v0, v6, :cond_55

    .line 1777
    :cond_55
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_19

    .line 1789
    :cond_5e
    const-string v0, "ro.config.hw_show_number"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1793
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1795
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    :goto_9b
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_c2

    .line 1813
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_19

    .line 1799
    :cond_a8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, p2, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1801
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9b

    .line 1816
    :cond_c2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_19

    .line 1829
    :pswitch_c9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_175

    .line 1830
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1832
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1833
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_113

    .line 1836
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1843
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1846
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_19

    .line 1853
    :cond_113
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 1855
    sget-object v0, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1862
    :goto_12f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v1, v0, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1868
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1870
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    if-eqz v3, :cond_17c

    iget v1, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v4, :cond_17c

    .line 1874
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 1878
    :goto_157
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1886
    if-nez v0, :cond_16e

    iget-boolean v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_16e

    .line 1887
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_19

    .line 1859
    :cond_169
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_12f

    .line 1890
    :cond_16e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_19

    .line 1896
    :cond_175
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_19

    :cond_17c
    move-object v1, v0

    move v0, v7

    goto :goto_157

    .line 1749
    nop

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const v0, 0x7f0e0173

    .line 2229
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2232
    if-nez v1, :cond_12

    .line 2308
    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2238
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 2244
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_5a

    goto :goto_9

    .line 2246
    :pswitch_22
    const v0, 0x7f0e0009

    .line 2247
    goto :goto_9

    .line 2250
    :pswitch_26
    const v0, 0x7f0e000a

    .line 2251
    goto :goto_9

    .line 2254
    :pswitch_2a
    const v0, 0x7f0e000b

    .line 2255
    goto :goto_9

    .line 2258
    :pswitch_2e
    const v0, 0x7f0e000c

    .line 2259
    goto :goto_9

    .line 2262
    :pswitch_32
    const v0, 0x7f0e000d

    .line 2263
    goto :goto_9

    .line 2266
    :pswitch_36
    const v0, 0x7f0e000e

    .line 2267
    goto :goto_9

    .line 2270
    :pswitch_3a
    const v0, 0x7f0e0010

    .line 2271
    goto :goto_9

    .line 2274
    :pswitch_3e
    const v0, 0x7f0e000f

    .line 2275
    goto :goto_9

    .line 2279
    :pswitch_42
    const v0, 0x7f0e0011

    .line 2280
    goto :goto_9

    .line 2283
    :pswitch_46
    const v0, 0x7f0e0012

    .line 2284
    goto :goto_9

    .line 2287
    :pswitch_4a
    const v0, 0x7f0e0013

    .line 2288
    goto :goto_9

    .line 2291
    :pswitch_4e
    const v0, 0x7f0e0014

    .line 2292
    goto :goto_9

    .line 2295
    :pswitch_52
    const v0, 0x7f0e0015

    .line 2296
    goto :goto_9

    .line 2300
    :pswitch_56
    const v0, 0x7f0e0024

    .line 2301
    goto :goto_9

    .line 2244
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2913
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2917
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2918
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2923
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->isChinaTelecom:Z

    if-eqz v0, :cond_54

    .line 2924
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPatternNumber:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2925
    array-length v5, v4

    move v0, v2

    :goto_1e
    if-ge v0, v5, :cond_54

    aget-object v6, v4, v0

    .line 2926
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    move v0, v1

    .line 2936
    :goto_29
    iget-boolean v4, p0, Lcom/android/phone/CallCard;->isChinaTelecom:Z

    if-eqz v4, :cond_44

    if-nez v0, :cond_44

    .line 2937
    const v0, 0x7f0e0173

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2942
    :goto_36
    return-object v0

    .line 2925
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2933
    :cond_3a
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_29

    .line 2941
    :cond_44
    const v0, 0x7f0e0177

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2942
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_54
    move v0, v2

    goto :goto_29
.end method

.method private invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z
    .registers 15
    .parameter "className"
    .parameter "methodName"
    .parameter "receiver"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p5, ctypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 2634
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 2656
    :cond_5
    :goto_5
    return v8

    .line 2639
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 2640
    .local v7, targetClass:Ljava/lang/Class;
    invoke-virtual {v7, p2, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2642
    .local v3, nMethod:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_5

    .line 2643
    invoke-virtual {v3, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2644
    .local v4, obj:Ljava/lang/Object;
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1b

    move-result v8

    goto :goto_5

    .line 2647
    .end local v3           #nMethod:Ljava/lang/reflect/Method;
    .end local v7           #targetClass:Ljava/lang/Class;
    :catch_1b
    move-exception v1

    .line 2649
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 2650
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2651
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 2652
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2654
    .local v6, phoneType:I
    goto :goto_5
.end method

.method private isVideoCallWidgetVisible()Z
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private resetPhotoLayout(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2156
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2157
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2158
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2160
    iget-boolean v2, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    if-eqz v2, :cond_4f

    .line 2161
    if-le v1, v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2162
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2163
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2164
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2189
    :cond_4e
    :goto_4e
    return-void

    .line 2168
    :cond_4f
    if-le v1, v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2169
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2170
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2171
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2173
    if-eqz p1, :cond_8b

    .line 2174
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2175
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2176
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e

    .line 2179
    :cond_8b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2180
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2181
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 3
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 2868
    if-eqz p1, :cond_18

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_18

    .line 2869
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 2870
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2876
    :goto_f
    const/4 v0, 0x1

    .line 2878
    :goto_10
    return v0

    .line 2873
    :cond_11
    const v0, 0x7f02009f

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_f

    .line 2878
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 2886
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2887
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 2890
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2891
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 2895
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2896
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2898
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1a

    .line 2899
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2900
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 2901
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2906
    :goto_19
    return-void

    .line 2903
    :cond_1a
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2904
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19
.end method

.method private showSecondaryCallInfo()V
    .registers 3

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2195
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 2196
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 2198
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_24

    .line 2199
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 2210
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2d

    .line 2211
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 2214
    :cond_2d
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .registers 7
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0173

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 728
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 729
    return-void
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .registers 10
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 521
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v7, :cond_4c

    const/4 v3, 0x1

    .line 529
    .local v3, ringing:Z
    :goto_6
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    .line 530
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 534
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 535
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 536
    .local v5, screenWidth:I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 539
    .local v4, screenHeight:I
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v2

    .line 540
    .local v2, reservedVerticalSpace:I
    iget-object v7, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 542
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 543
    iget-boolean v7, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    if-nez v7, :cond_54

    .line 547
    if-le v5, v4, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 548
    div-int/lit8 v6, v2, 0x2

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 566
    :cond_46
    :goto_46
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-void

    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #reservedVerticalSpace:I
    .end local v3           #ringing:Z
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    :cond_4c
    move v3, v6

    .line 521
    goto :goto_6

    .line 550
    .restart local v0       #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #reservedVerticalSpace:I
    .restart local v3       #ringing:Z
    .restart local v4       #screenHeight:I
    .restart local v5       #screenWidth:I
    :cond_4e
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 553
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->setButtonHeight(I)V

    goto :goto_46

    .line 556
    :cond_54
    if-le v5, v4, :cond_46

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 559
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_46
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .registers 16
    .parameter

    .prologue
    const v10, 0x7f0e016e

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v13, 0x8

    const/4 v4, 0x0

    .line 1487
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 1488
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1489
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1490
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 1495
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1b8

    .line 1569
    const-string v0, "CallCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move v6, v4

    move-object v0, v2

    .line 1575
    :goto_3d
    const/4 v1, 0x2

    if-ne v9, v1, :cond_52

    .line 1576
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v1, :cond_163

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v1

    if-eqz v1, :cond_163

    .line 1580
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1585
    :cond_52
    :goto_52
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1588
    invoke-direct {p0, v8, v3}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    :cond_5c
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1596
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v1, :cond_6c

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v1, :cond_6c

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v1, :cond_178

    :cond_6c
    move v3, v5

    .line 1600
    :goto_6d
    if-eqz v3, :cond_1ae

    .line 1602
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 1603
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1606
    :goto_7a
    iget-boolean v10, v9, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v10, :cond_17b

    .line 1607
    iget-object v10, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1608
    iget-object v10, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    const v11, 0x7f0e01dd

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v12, v9, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v12, v5, v4

    invoke-virtual {v8, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    iget-object v5, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v8, v9, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 1617
    :goto_a1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_189

    .line 1618
    iget-object v5, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v5, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    if-eqz v6, :cond_182

    .line 1623
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1624
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v6, 0x40a0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1632
    :goto_c3
    if-eqz v3, :cond_ca

    .line 1634
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1638
    :cond_ca
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1ce

    .line 1664
    :pswitch_d5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1671
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v0, :cond_e3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v0, :cond_e8

    .line 1672
    :cond_e3
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1677
    :cond_e8
    :goto_e8
    return-void

    :pswitch_e9
    move v6, v4

    move-object v0, v2

    .line 1498
    goto/16 :goto_3d

    .line 1504
    :pswitch_ed
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 1505
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    move v6, v4

    move-object v0, v2

    goto/16 :goto_3d

    .line 1512
    :pswitch_101
    const v0, 0x7f0e0174

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    iget-object v1, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v1, :cond_1b1

    .line 1515
    iget-object v1, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    iget-object v1, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    move v6, v4

    goto/16 :goto_3d

    .line 1523
    :pswitch_11b
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v4

    .line 1524
    goto/16 :goto_3d

    .line 1528
    :pswitch_122
    const v0, 0x7f0e0171

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1534
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v0, :cond_138

    .line 1535
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->needShowTipAndShowWhich(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneUtils$ShowTip;

    move-result-object v0

    .line 1536
    sget-object v6, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-eq v0, v6, :cond_147

    .line 1537
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->showThirdIncomingCallTip(Lcom/android/phone/PhoneUtils$ShowTip;)V

    .line 1543
    :cond_138
    :goto_138
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 1544
    const v0, 0x7f02005e

    move v6, v0

    move-object v0, v1

    goto/16 :goto_3d

    .line 1539
    :cond_147
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    goto :goto_138

    .line 1555
    :pswitch_14b
    const v0, 0x7f0e0175

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1558
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v1, :cond_1b1

    .line 1559
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    move v6, v4

    goto/16 :goto_3d

    .line 1565
    :pswitch_15c
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    move v6, v4

    .line 1566
    goto/16 :goto_3d

    .line 1581
    :cond_163
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1582
    const v0, 0x7f0e016f

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_52

    :cond_178
    move v3, v4

    .line 1596
    goto/16 :goto_6d

    .line 1614
    :cond_17b
    iget-object v5, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_a1

    .line 1627
    :cond_182
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c3

    .line 1630
    :cond_189
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c3

    .line 1642
    :pswitch_190
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setNumberLocation(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_e8

    .line 1654
    :pswitch_19f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e8

    .line 1655
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e8

    :cond_1ae
    move-object v1, v2

    goto/16 :goto_7a

    :cond_1b1
    move v6, v4

    goto/16 :goto_3d

    :cond_1b4
    move v6, v4

    move-object v0, v1

    goto/16 :goto_3d

    .line 1495
    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_14b
        :pswitch_101
        :pswitch_15c
        :pswitch_11b
        :pswitch_11b
        :pswitch_122
        :pswitch_122
        :pswitch_e9
    .end packed-switch

    .line 1638
    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_190
        :pswitch_190
        :pswitch_d5
        :pswitch_19f
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2956
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2957
    :goto_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    .line 2958
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2959
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f0e0197

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2960
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2968
    :goto_22
    return-void

    :cond_23
    move v0, v1

    .line 2956
    goto :goto_b

    .line 2966
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 2678
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2679
    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 2686
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2687
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2705
    :goto_1d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2707
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberAlwaysShow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2718
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2723
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2735
    return-void

    .line 2688
    :cond_31
    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-ne v0, v1, :cond_77

    .line 2694
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0170

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2698
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 2702
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2324
    iget-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 2325
    iget-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2330
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2331
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2335
    const/4 v2, 0x0

    .line 2337
    const/4 v1, 0x0

    .line 2339
    const/4 v3, 0x0

    .line 2344
    if-eqz p1, :cond_18d

    .line 2367
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2368
    if-eqz v1, :cond_2c

    const-string v4, "sip:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2369
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2372
    :cond_2c
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 2378
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 2381
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    .line 2478
    :goto_45
    if-eqz v1, :cond_184

    .line 2479
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumberAlwaysShow:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2480
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberAlwaysShow:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2485
    :goto_52
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 2494
    :goto_5d
    const-string v1, "ro.config.hw_show_number"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19d

    const-class v1, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAcceptSecondInCall"

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_19a

    const/4 v1, 0x1

    .line 2499
    :goto_7c
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_1a0

    if-eqz v1, :cond_1a0

    .line 2502
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0e0176

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2539
    :cond_8c
    :goto_8c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2551
    if-eqz p3, :cond_244

    if-eqz p1, :cond_9a

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v2, :cond_244

    .line 2552
    :cond_9a
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2553
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2603
    :cond_a6
    :goto_a6
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2a0

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2a0

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2a0

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2a0

    .line 2605
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2626
    :goto_cd
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2628
    return-void

    .line 2382
    :cond_d3
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v4, :cond_e4

    .line 2386
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    goto/16 :goto_45

    .line 2387
    :cond_e4
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 2389
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2390
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    .line 2393
    goto/16 :goto_45

    .line 2403
    :cond_f6
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isNormalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 2404
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0465

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 2408
    iput-object v1, p0, Lcom/android/phone/CallCard;->mSaveEmergencyNumber:Ljava/lang/String;

    .line 2425
    :goto_10f
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-eqz v3, :cond_144

    const-string v3, "ro.config.showEmergencyNumber"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 2427
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->emergencyNumber:Ljava/lang/String;

    .line 2444
    :goto_127
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_155

    .line 2445
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_45

    .line 2411
    :cond_13a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallCard;->mSaveEmergencyNumber:Ljava/lang/String;

    goto :goto_10f

    .line 2416
    :cond_13e
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSaveEmergencyNumber:Ljava/lang/String;

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_10f

    .line 2428
    :cond_144
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_152

    .line 2429
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    goto :goto_127

    .line 2431
    :cond_152
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto :goto_127

    .line 2447
    :cond_155
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_45

    .line 2455
    :cond_15c
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v4, :cond_16d

    .line 2459
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    goto/16 :goto_45

    .line 2461
    :cond_16d
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2466
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_181

    .line 2467
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNumberLocation()Ljava/lang/String;

    move-result-object v2

    .line 2474
    :goto_17d
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_45

    .line 2470
    :cond_181
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto :goto_17d

    .line 2482
    :cond_184
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberAlwaysShow:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_52

    .line 2487
    :cond_18d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_5d

    .line 2494
    :cond_19a
    const/4 v1, 0x0

    goto/16 :goto_7c

    :cond_19d
    const/4 v1, 0x1

    goto/16 :goto_7c

    .line 2505
    :cond_1a0
    iget v2, p0, Lcom/android/phone/CallCard;->isBrazilCustom:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23d

    .line 2506
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-eqz v2, :cond_1ce

    const-string v2, "190"

    const-string v3, "com.android.internal.telephony.CallerInfo"

    const-string v4, "emergencyNumber"

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/phone/CallCard;->invokeReflectedField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    iget-object v2, p0, Lcom/android/phone/CallCard;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1ce

    .line 2507
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0e0467

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8c

    .line 2509
    :cond_1ce
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0468

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2510
    if-eqz v2, :cond_236

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_236

    .line 2511
    const-string v3, "com.android.internal.telephony.CallerInfo"

    const-string v4, "emergencyNumber"

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/phone/CallCard;->invokeReflectedField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2512
    const-string v4, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2514
    array-length v5, v4

    .line 2516
    const/4 v2, 0x0

    :goto_20b
    if-ge v2, v5, :cond_22d

    .line 2517
    aget-object v6, v4, v2

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2518
    array-length v10, v6

    const/4 v11, 0x2

    if-eq v10, v11, :cond_21c

    .line 2516
    :cond_219
    add-int/lit8 v2, v2, 0x1

    goto :goto_20b

    .line 2522
    :cond_21c
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_219

    .line 2523
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2527
    :cond_22d
    if-lt v2, v5, :cond_8c

    .line 2528
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 2531
    :cond_236
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 2535
    :cond_23d
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 2554
    :cond_244
    if-eqz p1, :cond_253

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v2, :cond_253

    .line 2555
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_a6

    .line 2556
    :cond_253
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 2557
    if-nez v7, :cond_267

    .line 2558
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f02009f

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_a6

    .line 2559
    :cond_267
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 2568
    iput-object v7, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2571
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2573
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2576
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p4

    invoke-direct {v4, v5, p1, v0}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v2, v3, v7, p0, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 2581
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2582
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a6

    .line 2607
    :cond_2a0
    if-eqz v8, :cond_2a8

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_2aa

    :cond_2a8
    if-nez v1, :cond_2b7

    .line 2610
    :cond_2aa
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2611
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 2613
    :cond_2b7
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cd
.end method

.method private updateElapsedTimeWidget(J)V
    .registers 5
    .parameter "timeElapsed"

    .prologue
    .line 1916
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 1917
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1923
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->updateCallTimeView(J)V

    .line 1926
    return-void

    .line 1919
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 577
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 580
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_60

    move-object v6, v4

    move-object v7, v0

    .line 591
    :goto_13
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 593
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 595
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 596
    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-ne v0, v1, :cond_56

    .line 598
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 602
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 629
    :cond_3d
    :goto_3d
    return-void

    .line 609
    :cond_3e
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 613
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 620
    :cond_52
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 623
    :cond_56
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 626
    :cond_5c
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    :cond_60
    move-object v6, v0

    move-object v7, v1

    goto :goto_13
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 637
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 639
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_60

    move-object v6, v4

    move-object v7, v0

    .line 651
    :goto_13
    invoke-direct {p0, p1, v7, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 653
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 655
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 656
    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-ne v0, v1, :cond_56

    .line 658
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 661
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 678
    :cond_3d
    :goto_3d
    return-void

    .line 665
    :cond_3e
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 667
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 672
    :cond_52
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 674
    :cond_56
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 676
    :cond_5c
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    :cond_60
    move-object v6, v0

    move-object v7, v1

    goto :goto_13
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 761
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 763
    return-void
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 4
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 771
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 2748
    const/4 v1, 0x0

    .line 2752
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2753
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_de

    .line 2796
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2797
    const/4 v2, 0x2

    if-ne v0, v2, :cond_84

    .line 2798
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2806
    :goto_23
    if-eqz v0, :cond_d9

    .line 2807
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2808
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_a7

    .line 2809
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 2816
    :goto_30
    if-eqz v2, :cond_d6

    .line 2817
    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2828
    :goto_34
    if-nez v0, :cond_cb

    .line 2829
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 2830
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v7, :cond_61

    .line 2832
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 2833
    if-nez v1, :cond_b1

    .line 2834
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f02009f

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2843
    :goto_5c
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2855
    :cond_61
    :goto_61
    if-eqz v0, :cond_6d

    .line 2856
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2858
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2860
    :cond_6d
    :goto_6d
    return-void

    .line 2758
    :pswitch_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2761
    if-eqz v0, :cond_dc

    .line 2762
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 2763
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_80

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_dc

    .line 2765
    :cond_80
    const v0, 0x7f02009a

    goto :goto_61

    .line 2799
    :cond_84
    if-eq v0, v9, :cond_89

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8e

    .line 2801
    :cond_89
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_23

    .line 2803
    :cond_8e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2810
    :cond_a7
    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_d9

    .line 2811
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto :goto_30

    .line 2836
    :cond_b1
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2838
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2839
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v4, v1, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_5c

    .line 2848
    :cond_cb
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2849
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_6d

    :cond_d6
    move v0, v1

    goto/16 :goto_34

    :cond_d9
    move-object v2, v3

    goto/16 :goto_30

    :cond_dc
    move v0, v1

    goto :goto_61

    .line 2753
    :pswitch_data_de
    .packed-switch 0x4
        :pswitch_6e
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 735
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 738
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 744
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 745
    return-void
.end method


# virtual methods
.method protected cancelTimer(Lcom/android/internal/telephony/Call;)V
    .registers 3
    .parameter "call"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1394
    return-void
.end method

.method public dismiss_OnHold_ElapsedTime()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 3026
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_14

    .line 3027
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3028
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3068
    :cond_13
    :goto_13
    return v6

    .line 3032
    :cond_14
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3033
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3034
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3036
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 3037
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3038
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3039
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3040
    .local v3, phoneType:I
    if-ne v3, v6, :cond_3e

    .line 3042
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 3043
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3057
    :cond_3e
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3062
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_4c

    .line 3063
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3065
    :cond_4c
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_13

    .line 3066
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_13
.end method

.method public display_OnHold_ElapsedTime()V
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    return-void
.end method

.method protected getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;
    .registers 10
    .parameter "cm"

    .prologue
    .line 3179
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3180
    .local v0, call:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 3181
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .line 3183
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3184
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 3185
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3197
    :cond_15
    :goto_15
    if-nez v1, :cond_47

    .line 3198
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 3208
    :cond_20
    :goto_20
    return-object v2

    .line 3187
    :cond_21
    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2e

    .line 3189
    :cond_27
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3190
    if-eqz v1, :cond_15

    goto :goto_15

    .line 3194
    :cond_2e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3201
    :cond_47
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 3202
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_53

    move-object v2, v3

    .line 3203
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_20

    .line 3204
    :cond_53
    instance-of v5, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_20

    .line 3205
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #o:Ljava/lang/Object;
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_20
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    return-object v0
.end method

.method public hideCallCardElements()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 3007
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3008
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3009
    return-void
.end method

.method public hideThirdIncomingCallTip()V
    .registers 3

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 1682
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1685
    :cond_12
    return-void
.end method

.method public invokeReflectedField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3257
    if-eqz p1, :cond_5

    if-nez p3, :cond_6

    .line 3273
    :cond_5
    :goto_5
    return-object v0

    .line 3262
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3263
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3265
    if-eqz v1, :cond_5

    .line 3266
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_5

    .line 3268
    :catch_19
    move-exception v1

    .line 3269
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Occur an exception when call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 313
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 315
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 316
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 317
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 319
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 320
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 321
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 327
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v0, :cond_78

    .line 328
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    .line 333
    :cond_78
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 336
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 340
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberAlwaysShow:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 361
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VideoCallPanel;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    .line 363
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 11
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 1445
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1446
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_14

    .line 1452
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1456
    :cond_14
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 1458
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 1459
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1460
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 1461
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1463
    .local v1, call:Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1464
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1465
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1469
    if-eqz p2, :cond_32

    .line 1470
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1477
    :goto_2c
    if-nez p1, :cond_31

    .line 1478
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1480
    :cond_31
    return-void

    .line 1471
    :cond_32
    if-eqz p3, :cond_38

    .line 1472
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_2c

    .line 1474
    :cond_38
    const v4, 0x7f02009f

    invoke-static {v3, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2c
.end method

.method onPause()V
    .registers 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onPause()V

    .line 298
    :cond_b
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 1404
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_63

    move-object v4, p2

    .line 1408
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 1409
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 1410
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 1411
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_38

    .line 1412
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1419
    :goto_18
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 1422
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 1423
    .local v2, presentation:I
    if-eqz v5, :cond_29

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1427
    :cond_29
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5c

    .line 1428
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1432
    :goto_34
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1437
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_37
    :goto_37
    return-void

    .line 1413
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_38
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3e

    const/4 v0, 0x3

    if-ne v7, v0, :cond_43

    .line 1415
    :cond_3e
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_18

    .line 1417
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5c
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_34

    .line 1434
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_63
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 1435
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method public onTickForCallTimeElapsed(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 305
    return-void
.end method

.method public refreshTime()V
    .registers 2

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_9

    .line 1711
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->refreshTime()V

    .line 1713
    :cond_9
    return-void
.end method

.method public resetElapsedTime()V
    .registers 3

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1706
    return-void
.end method

.method protected setButtonHeight(I)V
    .registers 2
    .parameter "reservedVerticalSpace"

    .prologue
    .line 3228
    return-void
.end method

.method public setElapsedTime(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 1717
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1718
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 289
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .registers 3
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 3016
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 3017
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 3018
    return-void
.end method

.method public showThirdIncomingCallTip(Lcom/android/phone/PhoneUtils$ShowTip;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1687
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 1688
    sget-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-ne p1, v0, :cond_26

    .line 1689
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0422

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1701
    :cond_25
    :goto_25
    return-void

    .line 1692
    :cond_26
    sget-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-ne p1, v0, :cond_47

    .line 1693
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0423

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 1697
    :cond_47
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25
.end method

.method stopTimer()V
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 309
    return-void
.end method

.method protected updateCallCard(Lcom/android/internal/telephony/Call;)V
    .registers 2
    .parameter "call"

    .prologue
    .line 3216
    return-void
.end method

.method public updateCallTimeView(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 3251
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "call"

    .prologue
    .line 1727
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1728
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1731
    return-void
.end method

.method protected updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 692
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 699
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 701
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 8
    .parameter "cm"

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 385
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 386
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 387
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 390
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 397
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_29

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_29

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 447
    :cond_28
    :goto_28
    return-void

    .line 402
    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_39

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_3d

    .line 412
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_28

    .line 416
    :cond_3d
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v4, :cond_54

    .line 424
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    .line 442
    :goto_48
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_28

    .line 443
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_28

    .line 438
    :cond_54
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_48
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 10
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 458
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 460
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 461
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 462
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 463
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 466
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 473
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_31

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_31

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 511
    :cond_30
    :goto_30
    return-void

    .line 478
    :cond_31
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_41

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_45

    .line 488
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_30

    .line 506
    :cond_45
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_30

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_30
.end method
