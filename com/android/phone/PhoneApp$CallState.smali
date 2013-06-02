.class public final enum Lcom/android/phone/PhoneApp$CallState;
.super Ljava/lang/Enum;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneApp$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneApp$CallState;

.field public static final enum DIALING:Lcom/android/phone/PhoneApp$CallState;

.field public static final enum HOLD:Lcom/android/phone/PhoneApp$CallState;

.field public static final enum RINGING:Lcom/android/phone/PhoneApp$CallState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    new-instance v0, Lcom/android/phone/PhoneApp$CallState;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    .line 260
    new-instance v0, Lcom/android/phone/PhoneApp$CallState;

    const-string v1, "HOLD"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneApp$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    .line 261
    new-instance v0, Lcom/android/phone/PhoneApp$CallState;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    .line 258
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/PhoneApp$CallState;

    sget-object v1, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneApp$CallState;->$VALUES:[Lcom/android/phone/PhoneApp$CallState;

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
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneApp$CallState;
    .registers 2
    .parameter

    .prologue
    .line 258
    const-class v0, Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp$CallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneApp$CallState;
    .registers 1

    .prologue
    .line 258
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->$VALUES:[Lcom/android/phone/PhoneApp$CallState;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneApp$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneApp$CallState;

    return-object v0
.end method
