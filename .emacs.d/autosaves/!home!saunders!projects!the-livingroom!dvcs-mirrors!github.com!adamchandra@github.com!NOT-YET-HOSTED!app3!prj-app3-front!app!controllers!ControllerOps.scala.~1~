package lib


import com.weiglewilczek.slf4s.Logging
import net.openreview.model.raw.UserStorage._
import net.openreview.model.raw.users.User
import play.api.Play.current
import play.api.i18n.Messages
import play.api.mvc._
import securesocial.core._
import _root_.java.util.UUID


object SessionBasedFlash {
  var flash: List[(String, String)] = List()

}

trait ControllerOps extends SecureSocial with Logging {
  this: Controller =>

  def authorizedToImpersonate(user:User): Boolean = {
    val superUsers  = "adamchandra@gmail.com soergel@cs.umass.edu".split(" ").toSet
    val userEmails = user.emails.filter(_.verified).map(_.email).toSet
    !superUsers.intersect(userEmails).isEmpty
  }

  val ImpersonateUserKey = "impersonate.user.id"

  def impersonate(user: User): (String, String) =
    (ImpersonateUserKey -> user.id.toString)


  def maybeImpersonateAction(ouser:Option[User])(f: Request[AnyContent] => Option[User] => Result)(implicit req: Request[AnyContent]) = {
    (for {
      mainUser <- ouser
      otherUser <- req.session.get(ImpersonateUserKey)
      if authorizedToImpersonate(mainUser)
      impUser <- userStore.get(UUID.fromString(otherUser))
    } yield {
      f(req)(Some(impUser))
    }).getOrElse {
      f(req)(ouser)
    }
  }



  def UserAction(f: Request[AnyContent] => Option[User] => Result) = SecuredAction {
    implicit req => {
      logger.trace(req.toString())
      val result = maybeImpersonateAction(userFromSSocialUser)(f)(req)
      result
    }
  }


  def OptUserAction(f: Request[AnyContent] => Option[User] => Result) = UserAwareAction { implicit req =>
    logger.trace(req.toString())
    val result = maybeImpersonateAction(ouserFromSSocialUser)(f)(req)
    result
  }



  def userFromSSocialUser(implicit req:SecuredRequest[_]): Option[User]= {
    val ssuser = req.user
    for {
      la <- linkedAccountStore.findByProviderId(ssuser.id.providerKey, ssuser.id.userKey)
      u <- userStore.get(la.userId)
    } yield u
  }

  def ouserFromSSocialUser(implicit req:RequestWithUser[_]): Option[User]= {
    for {
      ssuser <- req.user
      la <- linkedAccountStore.findByProviderId(ssuser.id.providerKey, ssuser.id.userKey)
      u <- userStore.get(la.userId)
    } yield u
  }

  // TODO: use the PlayEmailerContext 
  lazy val serverHostname = current.configuration.getString("server.hostname").getOrElse("openreview.net")
  lazy val defaultFromAddress = current.configuration.getString("smtp.from").getOrElse("openreview.net <info@openreview.net>")
  
  def resolveURL(urlPath: String, secure: Boolean = false)(implicit request: RequestHeader) = {
    "http" + (if (secure) "s" else "") + "://" + serverHostname + urlPath
  }
  
  def sendEmail(subject: String, recipient: String, body: String, fromAddress:Option[String]) {

    import com.typesafe.plugin._

    logger.debug("sending email to %s".format(recipient))
    logger.debug("mail = [%s]".format(body))

    val mail = use[MailerPlugin].email
    mail.setSubject(subject)
    mail.addRecipient(recipient)
    mail.addFrom(fromAddress.getOrElse(defaultFromAddress))
    mail.send(body)
  }

}


object ControllerOps extends ControllerOps {
}
