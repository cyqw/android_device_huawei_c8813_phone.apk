.class Lcom/android/phone/InCallFragment$2;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/phone/InCallFragment$2;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$2;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/phone/InCallFragment$2;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    .line 1459
    return-void
.end method
