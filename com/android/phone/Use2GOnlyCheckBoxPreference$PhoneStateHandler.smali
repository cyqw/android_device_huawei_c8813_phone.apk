.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;
.super Landroid/os/Handler;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    return-void
.end method

.method private handlePhoneState()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->handlePref2g()V

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 208
    :goto_5
    return-void

    .line 205
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;->handlePhoneState()V

    goto :goto_5

    .line 203
    :pswitch_data_a
    .packed-switch 0xd6
        :pswitch_6
    .end packed-switch
.end method
