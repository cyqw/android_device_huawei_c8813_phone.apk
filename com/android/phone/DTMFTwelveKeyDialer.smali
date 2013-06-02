.class public Lcom/android/phone/DTMFTwelveKeyDialer;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

.field private mDialerStub:Landroid/view/ViewStub;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLocalToneEnabled:Z

.field mShortTone:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    .line 92
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 5
    .parameter "dialerView"

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    .line 340
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    .line 373
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 377
    if-nez p1, :cond_31

    .line 378
    const-string v0, "DTMFTwelveKeyDialer"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :cond_31
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 384
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_3a

    .line 385
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupDialerView()V

    .line 387
    :cond_3a
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialer;C)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private onDialerClose(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    .line 533
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 534
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 536
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerCloseScreen(Z)V

    .line 545
    :cond_17
    return-void
.end method

.method private onDialerOpen(Z)V
    .registers 6
    .parameter "animate"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpenScreen(Z)V

    .line 481
    return-void
.end method

.method private final processDtmf(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 776
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 779
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 789
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 793
    :cond_13
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 802
    :cond_22
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 803
    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .registers 9
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 984
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 985
    :try_start_4
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_14

    .line 987
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 994
    :goto_12
    monitor-exit v2

    .line 995
    return-void

    .line 989
    :cond_14
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, dtmfStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    .line 992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    goto :goto_12

    .line 994
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private setupDialerView()V
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    .line 422
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_2b

    .line 423
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 424
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 428
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 433
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    .line 434
    return-void
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 6
    .parameter "dialerView"

    .prologue
    .line 592
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 594
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 597
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 598
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_a

    .line 600
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_29
    return-void
.end method


# virtual methods
.method public clearDigits()V
    .registers 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 832
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_b
    return-void
.end method

.method clearInCallScreenReference()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 451
    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 452
    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 453
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 455
    const/4 v0, 0x0

    :try_start_11
    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 456
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 457
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 458
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 459
    return-void

    .line 457
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public closeDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    const/16 v1, 0x8

    .line 758
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 760
    if-eqz p1, :cond_13

    .line 761
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0, v1}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 765
    :goto_f
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose(Z)V

    .line 767
    :cond_12
    return-void

    .line 763
    :cond_13
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto :goto_f
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
    .line 1018
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method handleBurstDtmfConfirmation()V
    .registers 7

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1002
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1003
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 1004
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1005
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1006
    const-string v2, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3c

    .line 1009
    if-eqz v1, :cond_3b

    .line 1010
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 1012
    :cond_3b
    return-void

    .line 1008
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->isFadingOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected onDialerCloseScreen(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 1032
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->onDialerClose(Z)V

    .line 1035
    :cond_9
    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    if-eqz v0, :cond_b

    .line 569
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 571
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    if-eqz v0, :cond_b

    .line 580
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 582
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onDialerOpenScreen(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 1024
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->onDialerOpen(Z)V

    .line 1027
    :cond_9
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 665
    const/16 v1, 0x17

    if-ne p2, v1, :cond_1b

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 667
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 668
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 682
    .end local v0           #viewId:I
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return v1

    .line 670
    .restart local v0       #viewId:I
    :pswitch_1d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 671
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_1b

    .line 675
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_1b

    .line 668
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_37
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 606
    packed-switch p1, :pswitch_data_12

    .line 615
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_c
    return v0

    .line 610
    :pswitch_d
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_c

    .line 606
    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 640
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 641
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 656
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v1, 0x0

    return v1

    .line 645
    :pswitch_19
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_17

    .line 650
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_17

    .line 641
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2d
        :pswitch_17
        :pswitch_2d
    .end packed-switch
.end method

.method public openDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_18

    .line 729
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 730
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupDialerView()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerStub:Landroid/view/ViewStub;

    .line 734
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_28

    .line 736
    if-eqz p1, :cond_29

    .line 737
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 741
    :goto_25
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen(Z)V

    .line 743
    :cond_28
    return-void

    .line 739
    :cond_29
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto :goto_25
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 441
    return-void
.end method

.method public startDialerSession()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 498
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 501
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3f

    :goto_25
    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    .line 512
    :goto_27
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_3e

    .line 513
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_2e
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_49

    if-nez v1, :cond_3d

    .line 516
    :try_start_32
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_49
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3d} :catch_44

    .line 522
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_49

    .line 524
    :cond_3e
    return-void

    :cond_3f
    move v1, v2

    .line 501
    goto :goto_25

    .line 506
    :cond_41
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    goto :goto_27

    .line 517
    :catch_44
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    :try_start_46
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_3d

    .line 522
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public startLocalToneIfNeeded(C)V
    .registers 7
    .parameter "c"

    .prologue
    .line 904
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 928
    :cond_c
    :goto_c
    return-void

    .line 907
    :cond_d
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_c

    .line 908
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_14
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1d

    .line 926
    :goto_18
    monitor-exit v2

    goto :goto_c

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v1

    .line 914
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v1, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    if-eqz v1, :cond_2c

    .line 916
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_18

    .line 918
    :cond_2c
    const/4 v0, -0x1

    .line 919
    .local v0, toneDuration:I
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-eqz v1, :cond_33

    .line 920
    const/16 v0, 0x78

    .line 922
    :cond_33
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_1a

    goto :goto_18
.end method

.method public startTone(C)V
    .registers 9
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 841
    const/4 v1, 0x1

    .line 844
    .local v1, generateTone:Z
    sget-object v5, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 896
    :cond_f
    :goto_f
    return-void

    .line 848
    :cond_10
    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 856
    :cond_1c
    const/4 v2, 0x0

    .line 857
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_66

    .line 858
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 864
    :goto_31
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    .line 866
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 868
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_tty_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 878
    .local v0, TTYmode:I
    if-eq v0, v3, :cond_6d

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6d

    move v1, v3

    .line 882
    .end local v0           #TTYmode:I
    :cond_59
    :goto_59
    if-eqz v1, :cond_f

    .line 884
    iget-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-eqz v3, :cond_6f

    .line 885
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 891
    :goto_62
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneIfNeeded(C)V

    goto :goto_f

    .line 860
    :cond_66
    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_31

    .restart local v0       #TTYmode:I
    :cond_6d
    move v1, v4

    .line 878
    goto :goto_59

    .line 888
    .end local v0           #TTYmode:I
    :cond_6f
    const-string v3, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send long dtmf for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_62
.end method

.method public stopDialerSession()V
    .registers 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_f

    .line 558
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 561
    :cond_f
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public stopLocalToneIfNeeded()V
    .registers 3

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-nez v0, :cond_10

    .line 965
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v0, :cond_10

    .line 966
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 967
    :try_start_b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_11

    .line 973
    :goto_f
    monitor-exit v1

    .line 976
    :cond_10
    return-void

    .line 971
    :cond_11
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_f

    .line 973
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method

.method public stopTone()V
    .registers 2

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-nez v0, :cond_c

    .line 953
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 954
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 956
    :cond_c
    return-void
.end method
