.class Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;
.super Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.source "MSimPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimMediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 942
    invoke-super {p0, p1, p2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 943
    return-void
.end method
