.class Lcom/android/phone/MSimCallFeaturesSubSetting$5;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSubSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;->onCreate(Landroid/os/Bundle;)V
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
    .line 1463
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1466
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1467
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/phone/MSimCallFeaturesSubSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$700(Lcom/android/phone/MSimCallFeaturesSubSetting;ILandroid/preference/Preference;I)V

    .line 1470
    :cond_14
    return-void
.end method
