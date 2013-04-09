package play.mvc
 
abstract class ScalateController extends ScalaController with scalate.Provider {

  implicit def scalateStringAsTemplateName(name: String) = new {
    def asTemplate(args: Any*) = renderWithScalate(name, args)
    def asTemplate = renderWithScalate(name)
  }

  private lazy val not_reached: results.ScalaRenderTemplate = null

  override def Template = {
    renderWithScalate(args = Seq[Any]())

    not_reached // This line must not been executed.
  }

  override def Template(_args: Any*) = { 
    renderWithScalate(args = _args) 

    not_reached // This line must not been executed.    
  }

  override def ^ = this.Template
  override def ^(args: Any*) = this.Template(args:_*)
}
