.class Lcom/android/phone/CallFeaturesSetting$6;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1882
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1883
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$1600(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V

    .line 1886
    :cond_14
    return-void
.end method
