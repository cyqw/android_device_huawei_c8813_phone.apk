.class public final enum Lcom/android/phone/PhoneUtils$ShowTip;
.super Ljava/lang/Enum;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowTip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtils$ShowTip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtils$ShowTip;

.field public static final enum CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

.field public static final enum GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

.field public static final enum NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 700
    new-instance v0, Lcom/android/phone/PhoneUtils$ShowTip;

    const-string v1, "NO_TIP"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtils$ShowTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    .line 701
    new-instance v0, Lcom/android/phone/PhoneUtils$ShowTip;

    const-string v1, "GSM_TIP"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtils$ShowTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    .line 702
    new-instance v0, Lcom/android/phone/PhoneUtils$ShowTip;

    const-string v1, "CDMA_TIP"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneUtils$ShowTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    .line 699
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/PhoneUtils$ShowTip;

    sget-object v1, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->$VALUES:[Lcom/android/phone/PhoneUtils$ShowTip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtils$ShowTip;
    .registers 2
    .parameter

    .prologue
    .line 699
    const-class v0, Lcom/android/phone/PhoneUtils$ShowTip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtils$ShowTip;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneUtils$ShowTip;
    .registers 1

    .prologue
    .line 699
    sget-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->$VALUES:[Lcom/android/phone/PhoneUtils$ShowTip;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtils$ShowTip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtils$ShowTip;

    return-object v0
.end method
