.class final enum Lcom/android/phone/ims/ImsEditor$PreferenceKey;
.super Ljava/lang/Enum;
.source "ImsEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/ImsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ims/ImsEditor$PreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

.field public static final enum CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

.field public static final enum DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;


# instance fields
.field final defaultSummary:I

.field final initValue:I

.field preference:Landroid/preference/Preference;

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const v5, 0x7f0e022e

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v1, "DomainAddress"

    const v3, 0x7f0e0241

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    .line 68
    new-instance v6, Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v7, "CallType"

    const v9, 0x7f0e03fa

    const v10, 0x7f0e03fc

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->$VALUES:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter "text"
    .parameter "initValue"
    .parameter "defaultSummary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->text:I

    .line 84
    iput p4, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->initValue:I

    .line 85
    iput p5, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->defaultSummary:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .registers 2
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->$VALUES:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-virtual {v0}, [Lcom/android/phone/ims/ImsEditor$PreferenceKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_f

    .line 90
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_e
    return-object v0

    .line 91
    :cond_f
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1e

    .line 92
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 94
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() for the preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1f

    .line 99
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 104
    :cond_d
    :goto_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 105
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 109
    :goto_1a
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, oldValue:Ljava/lang/String;
    return-void

    .line 100
    .end local v0           #oldValue:Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_d

    .line 101
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_d

    .line 107
    :cond_2d
    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method
