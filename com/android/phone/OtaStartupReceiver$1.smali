.class Lcom/android/phone/OtaStartupReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .registers 3
    .parameter "otaspMode"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #setter for: Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I
    invoke-static {v0, p1}, Lcom/android/phone/OtaStartupReceiver;->access$002(Lcom/android/phone/OtaStartupReceiver;I)I

    .line 63
    return-void
.end method
