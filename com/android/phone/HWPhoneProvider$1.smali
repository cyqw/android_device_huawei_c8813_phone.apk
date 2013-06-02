.class Lcom/android/phone/HWPhoneProvider$1;
.super Landroid/database/ContentObserver;
.source "HWPhoneProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HWPhoneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HWPhoneProvider;


# direct methods
.method constructor <init>(Lcom/android/phone/HWPhoneProvider;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/HWPhoneProvider$1;->this$0:Lcom/android/phone/HWPhoneProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Lcom/android/phone/HWPhoneProvider$1;->this$0:Lcom/android/phone/HWPhoneProvider;

    invoke-virtual {v0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider$1;->this$0:Lcom/android/phone/HWPhoneProvider;

    #getter for: Lcom/android/phone/HWPhoneProvider;->mSubscription:I
    invoke-static {v2}, Lcom/android/phone/HWPhoneProvider;->access$000(Lcom/android/phone/HWPhoneProvider;)I

    move-result v2

    invoke-static {v0, v3, v1, v2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 152
    :goto_18
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 153
    return-void

    .line 149
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/HWPhoneProvider$1;->this$0:Lcom/android/phone/HWPhoneProvider;

    invoke-virtual {v0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v3, v1}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_18
.end method
