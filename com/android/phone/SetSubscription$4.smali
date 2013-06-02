.class Lcom/android/phone/SetSubscription$4;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SetSubscription;->errorMutipleDeactivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/phone/SetSubscription$4;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/phone/SetSubscription$4;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->updateCheckBoxes()V
    invoke-static {v0}, Lcom/android/phone/SetSubscription;->access$000(Lcom/android/phone/SetSubscription;)V

    .line 454
    return-void
.end method
