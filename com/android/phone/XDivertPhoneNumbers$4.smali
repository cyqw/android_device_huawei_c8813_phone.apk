.class Lcom/android/phone/XDivertPhoneNumbers$4;
.super Ljava/lang/Object;
.source "XDivertPhoneNumbers.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertPhoneNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertPhoneNumbers;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertPhoneNumbers;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/XDivertPhoneNumbers$4;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 177
    if-eqz p2, :cond_e

    move-object v0, p1

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 181
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_e
    return-void
.end method
