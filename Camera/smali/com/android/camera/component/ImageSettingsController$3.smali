.class Lcom/android/camera/component/ImageSettingsController$3;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V
    .locals 3
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/CameraParamsSetupEventArgs;>;"
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #getter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z
    invoke-static {v0}, Lcom/android/camera/component/ImageSettingsController;->access$300(Lcom/android/camera/component/ImageSettingsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ImageSettingsController;->access$400(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset to preference values"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$302(Lcom/android/camera/component/ImageSettingsController;Z)Z

    .line 407
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageSettingsController;->access$002(Lcom/android/camera/component/ImageSettingsController;Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->loadFromPreferences(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$500(Lcom/android/camera/component/ImageSettingsController;Z)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #getter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0}, Lcom/android/camera/component/ImageSettingsController;->access$000(Lcom/android/camera/component/ImageSettingsController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ImageSettingsController;->access$600(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set parameters"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$002(Lcom/android/camera/component/ImageSettingsController;Z)Z

    .line 414
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$3;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$700(Lcom/android/camera/component/ImageSettingsController;Z)V

    .line 415
    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 417
    :cond_1
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 399
    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ImageSettingsController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method