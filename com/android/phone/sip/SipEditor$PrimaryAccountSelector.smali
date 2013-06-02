.class Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
.super Ljava/lang/Object;
.source "SipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimaryAccountSelector"
.end annotation


# instance fields
.field private mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mWasPrimaryAccount:Z

.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .registers 9
    .parameter
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 545
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-virtual {p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const v5, 0x7f0e024a

    invoke-virtual {p1, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 548
    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$800(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->hasPrimaryAccount()Z

    move-result v2

    if-nez v2, :cond_4a

    move v1, v3

    .line 550
    .local v1, noPrimaryAccountSet:Z
    :goto_25
    if-nez p2, :cond_4c

    move v0, v3

    .line 551
    .local v0, editNewProfile:Z
    :goto_28
    if-nez v0, :cond_4e

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$800(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v3

    :goto_39
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    .line 555
    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-nez v5, :cond_45

    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    :cond_45
    move v4, v3

    :cond_46
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 557
    return-void

    .end local v0           #editNewProfile:Z
    .end local v1           #noPrimaryAccountSet:Z
    :cond_4a
    move v1, v4

    .line 548
    goto :goto_25

    .restart local v1       #noPrimaryAccountSet:Z
    :cond_4c
    move v0, v4

    .line 550
    goto :goto_28

    .restart local v0       #editNewProfile:Z
    :cond_4e
    move v2, v4

    .line 551
    goto :goto_39
.end method


# virtual methods
.method commit(Landroid/net/sip/SipProfile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 565
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 566
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$800(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 570
    :cond_17
    :goto_17
    return-void

    .line 567
    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-eqz v0, :cond_17

    .line 568
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$800(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->unsetPrimaryAccount()V

    goto :goto_17
.end method

.method isSelected()Z
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method
