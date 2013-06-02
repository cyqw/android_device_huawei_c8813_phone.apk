.class public Lcom/android/phone/ims/ImsEditor;
.super Landroid/preference/PreferenceActivity;
.source "ImsEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckbox:Landroid/preference/CheckBoxPreference;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/ims/ImsEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ims/ImsEditor;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ims/ImsEditor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    return-void
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .registers 8
    .parameter "pref"

    .prologue
    .line 262
    invoke-static {}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->values()[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 263
    .local v2, key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_f

    return-object v2

    .line 262
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 265
    .end local v2           #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    :cond_12
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private loadPreferences()V
    .registers 6

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 204
    .local v2, serverAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    .line 205
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    if-nez v2, :cond_d

    const-string v2, ""

    .end local v2           #serverAddress:Ljava/lang/String;
    :cond_d
    invoke-virtual {v3, v2}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getCallType()I

    move-result v0

    .line 209
    .local v0, imsCallType:I
    if-nez v0, :cond_2b

    .line 210
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v4, "Voice"

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 216
    :goto_1f
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getisImsDefault()Z

    move-result v1

    .line 217
    .local v1, isImsDefault:Z
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    return-void

    .line 212
    .end local v1           #isImsDefault:Z
    :cond_2b
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v4, "Video"

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private removePreferencesAndFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setServerAddress(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setIsImsDefault(Z)V

    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/ImsEditor;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    .line 247
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .registers 8
    .parameter "pref"

    .prologue
    .line 269
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    invoke-static {}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->values()[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_1f

    aget-object v2, v0, v1

    .line 271
    .local v2, key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/ImsEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 273
    iput-object p1, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 277
    .end local v2           #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_1f
    return-void

    .line 270
    .restart local v2       #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private validateAndSetResult()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setServerAddress(Ljava/lang/String;)V

    .line 225
    const-string v0, "Video"

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 226
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    .line 232
    :goto_20
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setIsImsDefault(Z)V

    .line 234
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/ImsEditor;->setResult(I)V

    .line 235
    const v0, 0x7f0e0204

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    .line 238
    return-void

    .line 228
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    goto :goto_20
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance v4, Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-direct {v4, p0}, Lcom/android/phone/ims/ImsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    .line 126
    const v4, 0x7f04001b

    invoke-virtual {p0, v4}, Lcom/android/phone/ims/ImsEditor;->setContentView(I)V

    .line 127
    const v4, 0x7f060012

    invoke-virtual {p0, v4}, Lcom/android/phone/ims/ImsEditor;->addPreferencesFromResource(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 130
    .local v3, screen:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_1f
    if-ge v1, v2, :cond_2b

    .line 131
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/ImsEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 133
    :cond_2b
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const v5, 0x7f0e03fd

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/ImsEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 136
    const v4, 0x7f0e03f7

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 138
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->loadPreferences()V

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 141
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_51

    .line 143
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 145
    :cond_51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 158
    const v0, 0x7f0e0400

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    const/4 v0, 0x2

    const v1, 0x7f0e0401

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    const/4 v0, 0x3

    const v1, 0x7f0e0402

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_e

    .line 195
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 192
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    .line 193
    const/4 v0, 0x1

    goto :goto_7

    .line 190
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 173
    :sswitch_d
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    goto :goto_c

    .line 177
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    goto :goto_c

    .line 181
    :sswitch_15
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->removePreferencesAndFinish()V

    goto :goto_c

    .line 169
    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_11
        0x3 -> :sswitch_15
        0x102002c -> :sswitch_d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    .line 152
    :cond_9
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 153
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 250
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 258
    :goto_5
    return v2

    .line 251
    :cond_6
    if-nez p2, :cond_1a

    const-string v0, ""

    .line 252
    .local v0, value:Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 253
    invoke-direct {p0, p1}, Lcom/android/phone/ims/ImsEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 251
    .end local v0           #value:Ljava/lang/String;
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 255
    .restart local v0       #value:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :cond_14
    return-void
.end method
