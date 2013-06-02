.class public Lcom/android/phone/XDivertSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "XDivertSetting.java"


# instance fields
.field private mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v4, 0x7f060027

    invoke-virtual {p0, v4}, Lcom/android/phone/XDivertSetting;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "Sub1_Line1Number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, sub1Number:Ljava/lang/String;
    const-string v4, "Sub2_Line1Number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, sub2Number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 61
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "xdivert_checkbox"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/XDivertCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    .line 62
    iget-object v4, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v2, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
