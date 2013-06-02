.class public Lcom/huawei/ziri/params/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/ziri/params/Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mNumType:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    new-instance v0, Lcom/huawei/ziri/params/Contact$1;

    invoke-direct {v0}, Lcom/huawei/ziri/params/Contact$1;-><init>()V

    sput-object v0, Lcom/huawei/ziri/params/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ziri/params/Contact;->mName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ziri/params/Contact;->mNumber:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ziri/params/Contact;->mNumType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/ziri/params/Contact;->mIndex:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huawei/ziri/params/Contact;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "number"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/huawei/ziri/params/Contact;->mNumber:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huawei/ziri/params/Contact;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/huawei/ziri/params/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/huawei/ziri/params/Contact;->mNumType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/huawei/ziri/params/Contact;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
