.class Lcom/android/phone/XDivertCheckBoxPreference$3;
.super Ljava/lang/Object;
.source "XDivertCheckBoxPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertCheckBoxPreference;

.field final synthetic val$read:Z

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertCheckBoxPreference;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iput p2, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->val$state:I

    iput-boolean p3, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->val$read:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 247
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->val$state:I

    .line 248
    .local v0, mode:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 249
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1a

    .line 250
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference$3;->val$read:Z

    invoke-interface {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 253
    :cond_1a
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 254
    return-void
.end method
