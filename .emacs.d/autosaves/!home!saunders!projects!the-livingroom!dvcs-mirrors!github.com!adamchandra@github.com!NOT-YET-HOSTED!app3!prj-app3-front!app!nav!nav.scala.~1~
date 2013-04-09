package nav

import controllers._
import lib.ControllerOps
import play.navigator._
import scala.xml._
import play.api.mvc._
import net.openreview.model.pov.{DocumentPoVFilter, EventPoVFilter}
import java.util.UUID
import controllers.EventAction.EventDisplayAction
import controllers.DocumentAction.DocumentDisplayAction
import play.api.Play.current
import play.api.Play
import model.{EventFilterSidebar, DocumentFilterSidebar}

import java.io.UnsupportedEncodingException
import java.net.{URLEncoder, URLDecoder}
import survey.Survey


object nav extends PlayNavigator {

  implicit val UUIDPathParam: PathParam[UUID] = new PathParam[UUID] {
    def apply(t: UUID) = t.toString
    def unapply(s: String) = try {
      Some(UUID.fromString(s))
    } catch {
      case e: IllegalArgumentException => None
    }
  }

  implicit val EventActionPathParam: PathParam[EventAction] = new PathParam[EventAction] {
    def apply(t: EventAction) = EventAction.toId(t)
    def unapply(s: String) = EventAction.fromId.get(s)
  }
  /*
  implicit val EventTemplateActionPathParam: PathParam[EventTemplateAction] = new PathParam[EventTemplateAction] {
    def apply(t: EventTemplateAction) = EventTemplateAction.toId(t)
    def unapply(s: String) = EventTemplateAction.fromId.get(s)
  }
  implicit val FormEventTemplateActionPathParam: PathParam[FormEventTemplateAction] = new PathParam[FormEventTemplateAction] {
    def apply(t: FormEventTemplateAction) = EventTemplateAction.toFormId(t)
    def unapply(s: String) = EventTemplateAction.fromFormId.get(s)
  }*/

  /*
  implicit val FormEventActionPathParam: PathParam[FormEventAction] = new PathParam[FormEventAction] {
    def apply(t: FormEventAction) = EventAction.toFormId(t)
    def unapply(s: String) = EventAction.fromFormId.get(s)
  }*/

  implicit val DocumentActionPathParam: PathParam[DocumentAction] = new PathParam[DocumentAction] {
    def apply(t: DocumentAction) = DocumentAction.toId(t)
    def unapply(s: String) = DocumentAction.fromId.get(s)
  }

  implicit val FormDocumentActionPathParam: PathParam[FormDocumentAction] = new PathParam[FormDocumentAction] {
    def apply(t: FormDocumentAction) = DocumentAction.toFormId(t)
    def unapply(s: String) = DocumentAction.fromFormId.get(s)
  }

  implicit val EventPoVFilterPathParam: PathParam[EventPoVFilter] = new PathParam[EventPoVFilter] {
    def apply(t: EventPoVFilter) = EventFilterSidebar.toId(t)
    def unapply(s: String) = EventFilterSidebar.fromId.get(s)
  }

  implicit val DocumentPoVFilterPathParam: PathParam[DocumentPoVFilter] = new PathParam[DocumentPoVFilter] {
    def apply(t: DocumentPoVFilter) = DocumentFilterSidebar.toId(t)
    def unapply(s: String) = DocumentFilterSidebar.fromId.get(s)
  }

  // secure any action by prepending /secure
  object ForceSecurity extends lib.ControllerOps {
    def secure(path: String) = UserAction { implicit request => implicit user => 
      Redirect("/"+path).withSession(session(request)).flashing(flash(request))
    }
  }

  GET on "secure" / ** to {(ss:String) => ForceSecurity.secure(ss) }


  //val home = GET on root to Library.normalize _
  val home = GET on root to Splash.splash _
  val about = GET on "about" to Splash.about _

  val survey = GET on "survey" to Survey.survey _
  
  val iclr = GET on "iclr2013" to Iclr2013Controller.iclr2013splash _
  val iclrnewauthor = GET on "iclr2013" / "newauthor" / * to Iclr2013Controller.newAuthor _
  val iclrsubmit = GET on "iclr2013" / "newsubmission" / * to Iclr2013Controller.newSubmission _
  //val iclrall = GET on "iclr2013" / "all" to Iclr2013Controller.newSubmission _

  val iclrsubmitA = POST on "iclr2013" / "arxivprefill" to Iclr2013Controller.arxivPrefill _
  val iclrsubmitPb = POST on "iclr2013" / "newsubmission" to Iclr2013Controller.newSubmissionPb _

  val iclrtsv = GET on "iclr2013" / "tsv" to Iclr2013Controller.iclr2013tsv _



  val inferning = GET on "inferning2013" to Inferning2013Controller.inferning2013splash _
  val peerreview = GET on "icml-peer2013" to PeerReview2013Controller.peerReview2013splash _
  
  val dashboard = GET on "dashboard" to Dashboard.index _
  val dashboardFiltered = GET on "dashboard" / * to Dashboard.filtered _

  val library = GET on "library" to Library.index _
  val libraryFiltered = GET on "library" / * to Library.filtered _


  val event = GET on "event" / * to ((uuid: UUID) => EventController.action(uuid, EventDisplayAction, "index"))
  val eventAction = GET on "event" / * / * / * to EventController.action _

  //val eventTemplateAction = GET on "eventtemplate" / * / * / * to EventTemplateController.action _
  //val eventTemplateActionPb = POST on "eventtemplate" / * / * / * to EventTemplateController.actionPostback _

  // TODO: integrate into other document actions?
  GET on "document" / * / "togglestar" to DocumentController.docToggleStarPostback _


  val document = GET on "document" / * to ((uuid: UUID) => DocumentController.action(uuid, DocumentDisplayAction, "index"))
  val documentAction = GET on "document" / * / * / * to DocumentController.action _
  val documentActionPb = POST on "document" / * / * / * to DocumentController.actionPostback _
  val receiveReply = POST on "receiveReply"  to DocumentController.receiveReply _
  val receiveReview = POST on "receiveReview"  to DocumentController.receiveReview _


  val newinfo = GET on "eventtemplate" / "newinfo" to EventTemplateController.newinfo _
  // val newinfoPb = POST on "eventtemplate" / "newinfo" to EventTemplateController.newinfoPb _
  //val newrequest = GET on "eventtemplate" / "newrequest" to EventTemplateController.newrequest _
  // val newrequestPb = POST on "eventtemplate" / "newrequest" to EventTemplateController.newrequestPb _


  val neweventPb = POST on "eventtemplate" / "newevent" to EventTemplateController.neweventPb _



  val newvenue = GET on "newvenue" to VenueController.index _
  
  
  val groups = GET on "groups" to Groups.index
  val newdocument = GET on "newdocument" to NewDocument.index

  val eventfiltersidebar = GET on "eventfiltersidebar" to Dashboard.eventfiltersidebar _

  GET on "token" / * to TokenActionController.action _

  // POST on "invite" to ProfileController.invitePostback _

  GET on "user" / "email" / "verify" / * to ((e:String) => ProfileController.verifyEmail(URLDecoder.decode(e, "UTF-8")))
  GET on "user" / "email" / "setprimary" / * to ((e:String) => ProfileController.setPrimaryEmail(URLDecoder.decode(e, "UTF-8")))
  GET on "user" / "email" / "remove" / * to ((e:String) => ProfileController.removeEmail(URLDecoder.decode(e, "UTF-8")))
  // GET on "user" / "emails" to ProfileController.emails _
  POST on "user" / "email" / "add"  to ProfileController.addEmail _

  GET on "user" / "toggleNotify"  to ProfileController.toggleNotify _
  
  val adminSecret = "0c3l0t"

  GET on adminSecret to AdminController.index _
  GET on adminSecret / "clearCaches" to AdminController.clearCaches _
  
  // disable
  // GET on "admin" / "emailAllAuthors" to AdminController.emailAllAuthors _ 
  //GET on adminSecret / "remindReviewers" to AdminController.remindReviewers _ 
  // GET on adminSecret / "bugfixUnverifiedReviewers" to AdminController.bugfixUnverifiedReviewers _ 
  //GET on adminSecret / "announceDiscussion" to AdminController.announceDiscussion _
  //GET on adminSecret / "announceNotifications" to AdminController.announceNotifications _

  //GET on adminSecret / "acceptandreject" to AdminController.acceptAndReject _
  
  GET on adminSecret / "reviewer" / "invite" / * / * to ((uuid: UUID, email:String) => Iclr2013AdminController.sendReviewerAssignments(uuid, URLDecoder.decode(email, "UTF-8")))

  POST on adminSecret / "reviewer" / "invitation" to AdminController.reviewerInvitationCallback _
  POST on adminSecret / "reviewer" / "invitations" to Iclr2013AdminController.reviewerListInitialAssignmentsCallback _


  POST on adminSecret / "usermerge" to AdminController.mergeUsersCallback _
  POST on adminSecret / "assignreviewers" to AdminController.assignReviewersCallback _
  // GET on "admin" / "sendReviewerInvites" to AdminController.sendReviewerInvites _

  // GET on "token" / "verifyemail" / * to TokenActionController.verifyEmail _
  // GET on "token" / "resetpassword" / * to TokenActionController.resetPassword _
  // GET on "token" / "acceptinvite" / * to TokenActionController.acceptInvite _


  GET on "typeahead" / "user" to AdminController.userTypeahead _
  // GET on "impersonate" / "user" / * to ((id: UUID) => AdminController.impersonate(id))
  POST on adminSecret / "impersonate" to AdminController.impersonate _
  // GET on adminSecret / "unimpersonate" to AdminController.unimpersonate _


  // GET     on "login"            to securesocial.controllers.LoginPage.login _
  // GET     on "logout"           to securesocial.controllers.LoginPage.logout _
  // GET     on "signup"           to securesocial.controllers.Registration.startSignUp _
  // POST    on "signup"           to securesocial.controllers.Registration.handleStartSignUp _
  // GET     on "signup" / *       to ((token:String) => securesocial.controllers.Registration.signUp(token))
  // POST    on "signup" / *       to ((token:String) => securesocial.controllers.Registration.handleSignUp(token))
  // GET     on "reset"            to securesocial.controllers.Registration.startResetPassword _
  // POST    on "reset"            to securesocial.controllers.Registration.handleStartResetPassword _
  // GET     on "reset" / *        to ((token:String) => securesocial.controllers.Registration.resetPassword(token))
  // POST    on "reset" / *        to ((token:String) => securesocial.controllers.Registration.handleResetPassword(token))
  // GET     on "password"         to securesocial.controllers.PasswordChange.page _
  // POST    on "password"         to securesocial.controllers.PasswordChange.handlePasswordChange _
  // GET     on "authenticate" / * to ((provider:String) => securesocial.controllers.ProviderController.authenticate(provider))
  // POST    on "authenticate" / * to ((provider:String) => securesocial.controllers.ProviderController.authenticateByPost(provider))
  // GET on "assets" / ** to ((p: String) => controllers.Assets.at(path = "/public", p))


  def siteMap(implicit req: RequestHeader): NodeSeq = {
    val pages = Seq(
      ("ICLR 2013", iclr()),
      ("About", about())
    )
    pages map {
      case (str, url) => {
        req.path match {
          case url.url =>
            (<li class="active">
              <a href={url.toString}>
                {str}
              </a>
            </li>)
          case _ =>
            (<li>
              <a href={url.toString}>
                {str}
              </a>
            </li>)
        }
      }
    }

  }


  def userSiteMap(implicit req: RequestHeader): NodeSeq = {
    val pages = Seq(
      ("Documents", library()) //,
      //("Messages", dashboard()) //,
      //("Groups", groups())
      )
    pages map {
      case (str, url) => {
        req.path match {
          case url.url =>
            (<li class="active">
              <a href={url.toString}>
                {str}
              </a>
            </li>)
          case _ =>
            (<li>
              <a href={url.toString}>
                {str}
              </a>
            </li>)
        }
      }
    }

  }

  val profile = GET on "profile" to ProfileController.index _
  // GET     /assets/*file                   controllers.Assets.at(path="/public", file)

  val assetsVersion = "12"

  val assets = GET on "assets" / assetsVersion / ** to ((p: String) => controllers.Assets.at(path = "/public", p))

}

