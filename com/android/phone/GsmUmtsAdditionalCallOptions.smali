.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# instance fields
.field private final DBG:Z

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->DBG:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 29
    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 30
    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 44
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CLIRListPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 45
    const-string v2, "button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 47
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 55
    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 56
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_57

    .line 81
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_57
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 123
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 124
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 125
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 126
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_2e

    .line 127
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 130
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 136
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 137
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 90
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    if-eqz v1, :cond_19

    .line 91
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v1, :cond_1a

    .line 92
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 104
    :goto_14
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 109
    :cond_19
    return-void

    .line 94
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 95
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v1, p0, v4, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 96
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v1, p0, v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 98
    .local v0, clirArray:[I
    if-eqz v0, :cond_44

    .line 99
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_14

    .line 101
    :cond_44
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_14
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_16

    .line 117
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 119
    :cond_16
    return-void
.end method
