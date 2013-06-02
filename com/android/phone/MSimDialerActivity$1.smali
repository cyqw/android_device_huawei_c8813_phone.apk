.class Lcom/android/phone/MSimDialerActivity$1;
.super Ljava/lang/Object;
.source "MSimDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 163
    sparse-switch p2, :sswitch_data_30

    .line 181
    const/4 v0, 0x0

    :cond_5
    :goto_5
    :sswitch_5
    return v0

    .line 165
    :sswitch_6
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    #getter for: Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 166
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/16 v2, 0x63

    #calls: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_5

    .line 170
    :sswitch_17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 173
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    #getter for: Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v2

    #calls: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_5

    .line 163
    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_6
        0x5 -> :sswitch_17
        0x54 -> :sswitch_5
    .end sparse-switch
.end method
