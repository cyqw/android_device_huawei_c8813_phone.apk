.class Lcom/android/phone/InCallScreen_DSDA$2;
.super Ljava/lang/Object;
.source "InCallScreen_DSDA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen_DSDA;->onPause()V
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
    .line 804
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$2;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$2;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 807
    return-void
.end method
