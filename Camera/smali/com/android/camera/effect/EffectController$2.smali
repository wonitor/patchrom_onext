.class Lcom/android/camera/effect/EffectController$2;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/effect/EffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectController;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V
    .locals 9
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
    .line 93
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/CameraParamsSetupEventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/EffectController;->access$000(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/EffectController;->access$000(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/EffectController;->access$100(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/EffectController;->access$100(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 102
    iget-object v0, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/EffectController;->access$100(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/effect/EffectController$2;->this$0:Lcom/android/camera/effect/EffectController;

    #getter for: Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/android/camera/effect/EffectController;->access$200(Lcom/android/camera/effect/EffectController;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/effect/GpuEffectParameters;

    .line 104
    .local v8, params:Lcom/android/camera/effect/GpuEffectParameters;
    iget-object v0, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iget-object v1, v8, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, v8, Lcom/android/camera/effect/GpuEffectParameters;->n0:I

    iget v3, v8, Lcom/android/camera/effect/GpuEffectParameters;->n1:I

    iget v4, v8, Lcom/android/camera/effect/GpuEffectParameters;->n2:I

    iget v5, v8, Lcom/android/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, v8, Lcom/android/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    goto :goto_0

    .line 105
    .end local v8           #params:Lcom/android/camera/effect/GpuEffectParameters;
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 107
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method