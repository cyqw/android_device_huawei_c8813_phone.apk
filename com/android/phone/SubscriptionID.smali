.class final enum Lcom/android/phone/SubscriptionID;
.super Ljava/lang/Enum;
.source "SetSubscription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/SubscriptionID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/SubscriptionID;

.field public static final enum NONE:Lcom/android/phone/SubscriptionID;

.field public static final enum SUB_0:Lcom/android/phone/SubscriptionID;

.field public static final enum SUB_1:Lcom/android/phone/SubscriptionID;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 723
    new-instance v0, Lcom/android/phone/SubscriptionID;

    const-string v1, "SUB_0"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SubscriptionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 724
    new-instance v0, Lcom/android/phone/SubscriptionID;

    const-string v1, "SUB_1"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/SubscriptionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .line 725
    new-instance v0, Lcom/android/phone/SubscriptionID;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/SubscriptionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .line 722
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/SubscriptionID;

    sget-object v1, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/SubscriptionID;->$VALUES:[Lcom/android/phone/SubscriptionID;

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
    .line 722
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/SubscriptionID;
    .registers 2
    .parameter

    .prologue
    .line 722
    const-class v0, Lcom/android/phone/SubscriptionID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionID;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/SubscriptionID;
    .registers 1

    .prologue
    .line 722
    sget-object v0, Lcom/android/phone/SubscriptionID;->$VALUES:[Lcom/android/phone/SubscriptionID;

    invoke-virtual {v0}, [Lcom/android/phone/SubscriptionID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/SubscriptionID;

    return-object v0
.end method
