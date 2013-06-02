.class Lcom/android/phone/InCallScreen_DSDA$3;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen_DSDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$3;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2106
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$3;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen_DSDA;->internalHangup()V

    .line 2108
    :cond_11
    return-void
.end method
