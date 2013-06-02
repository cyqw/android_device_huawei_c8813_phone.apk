.class Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 263
    return-void
.end method
