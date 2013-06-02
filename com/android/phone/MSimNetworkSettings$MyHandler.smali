.class Lcom/android/phone/MSimNetworkSettings$MyHandler;
.super Landroid/os/Handler;
.source "MSimNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimNetworkSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimNetworkSettings;Lcom/android/phone/MSimNetworkSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MSimNetworkSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0xb

    .line 309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 311
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6e

    .line 312
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 315
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #calls: Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I
    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$200(Lcom/android/phone/MSimNetworkSettings;)I

    move-result v2

    .line 322
    .local v2, settingsNetworkMode:I
    if-eqz v1, :cond_54

    const/4 v3, 0x1

    if-eq v1, v3, :cond_54

    const/4 v3, 0x2

    if-eq v1, v3, :cond_54

    const/4 v3, 0x3

    if-eq v1, v3, :cond_54

    const/4 v3, 0x4

    if-eq v1, v3, :cond_54

    const/4 v3, 0x5

    if-eq v1, v3, :cond_54

    const/4 v3, 0x6

    if-eq v1, v3, :cond_54

    const/4 v3, 0x7

    if-eq v1, v3, :cond_54

    const/16 v3, 0x8

    if-eq v1, v3, :cond_54

    const/16 v3, 0x9

    if-eq v1, v3, :cond_54

    const/16 v3, 0xa

    if-eq v1, v3, :cond_54

    if-ne v1, v5, :cond_6f

    .line 336
    :cond_54
    if-eq v1, v2, :cond_5c

    .line 337
    move v2, v1

    .line 340
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #calls: Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V
    invoke-static {v3, v2}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 343
    :cond_5c
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #calls: Lcom/android/phone/MSimNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/MSimNetworkSettings;->access$400(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 345
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_6e
    :goto_6e
    return-void

    .line 346
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_6f
    if-ne v1, v5, :cond_77

    .line 348
    const-string v3, "handleGetPreferredNetworkTypeResponse: lte only: no action"

    #calls: Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    goto :goto_6e

    .line 350
    :cond_77
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_6e
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    .line 359
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 361
    .local v1, networkMode:I
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #calls: Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V
    invoke-static {v2, v1}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 366
    .end local v1           #networkMode:I
    :goto_1f
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    .line 368
    return-void

    .line 363
    :cond_29
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1f
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #calls: Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V
    invoke-static {v0, v2}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 376
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    #getter for: Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 378
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 306
    :goto_5
    return-void

    .line 299
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 303
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 297
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
