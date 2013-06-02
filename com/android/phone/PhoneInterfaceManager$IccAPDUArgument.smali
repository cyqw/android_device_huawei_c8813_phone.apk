.class final Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .registers 8
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    .line 144
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    .line 145
    iput p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    .line 146
    iput p4, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    .line 147
    iput p5, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    .line 148
    iput p6, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    .line 149
    iput-object p7, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    .line 150
    return-void
.end method
