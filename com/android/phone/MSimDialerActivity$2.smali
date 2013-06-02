.class Lcom/android/phone/MSimDialerActivity$2;
.super Ljava/lang/Object;
.source "MSimDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 201
    iput-object p1, p0, Lcom/android/phone/MSimDialerActivity$2;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$2;->this$0:Lcom/android/phone/MSimDialerActivity;

    #getter for: Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$2;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/16 v1, 0x63

    #calls: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    .line 205
    return-void
.end method
