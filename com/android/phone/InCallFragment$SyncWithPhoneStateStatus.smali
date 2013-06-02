.class final enum Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
.super Ljava/lang/Enum;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SyncWithPhoneStateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

.field public static final enum SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    new-instance v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    .line 303
    new-instance v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    sget-object v1, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->$VALUES:[Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    .registers 2
    .parameter

    .prologue
    .line 290
    const-class v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    .registers 1

    .prologue
    .line 290
    sget-object v0, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->$VALUES:[Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    return-object v0
.end method
