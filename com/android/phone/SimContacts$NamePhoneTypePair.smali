.class Lcom/android/phone/SimContacts$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "nameWithPhoneType"

    .prologue
    const/4 v4, 0x7

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 109
    .local v1, nameLen:I
    add-int/lit8 v2, v1, -0x2

    if-ltz v2, :cond_48

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_48

    .line 110
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 111
    .local v0, c:C
    const/16 v2, 0x57

    if-ne v0, v2, :cond_31

    .line 112
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 120
    :goto_27
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 125
    .end local v0           #c:C
    :goto_30
    return-void

    .line 113
    .restart local v0       #c:C
    :cond_31
    const/16 v2, 0x4d

    if-eq v0, v2, :cond_39

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_3d

    .line 114
    :cond_39
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_27

    .line 115
    :cond_3d
    const/16 v2, 0x48

    if-ne v0, v2, :cond_45

    .line 116
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_27

    .line 118
    :cond_45
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_27

    .line 122
    .end local v0           #c:C
    :cond_48
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 123
    iput-object p1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_30
.end method
