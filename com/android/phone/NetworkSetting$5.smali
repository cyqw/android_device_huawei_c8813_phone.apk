.class Lcom/android/phone/NetworkSetting$5;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;

.field final synthetic val$selectedCarrier:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    iput-object p2, p0, Lcom/android/phone/NetworkSetting$5;->val$selectedCarrier:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$5;->val$selectedCarrier:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkSetting;->selectNetworkManually(Landroid/preference/Preference;)V

    .line 380
    return-void
.end method
