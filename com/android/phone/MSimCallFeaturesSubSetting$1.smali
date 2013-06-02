.class Lcom/android/phone/MSimCallFeaturesSubSetting$1;
.super Landroid/os/Handler;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$1;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 246
    :goto_5
    return-void

    .line 243
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$1;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 241
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
