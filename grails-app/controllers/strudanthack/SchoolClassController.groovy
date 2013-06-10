package strudanthack

import com.twilio.sdk.TwilioRestClient
import com.twilio.sdk.TwilioRestException
import com.twilio.sdk.resource.factory.SmsFactory
import com.twilio.sdk.resource.instance.Sms
import org.springframework.dao.DataIntegrityViolationException

class SchoolClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schoolClassInstanceList: SchoolClass.list(params), schoolClassInstanceTotal: SchoolClass.count()]
    }

    def create() {
        [schoolClassInstance: new SchoolClass(params)]
    }

    def save() {
        def schoolClassInstance = new SchoolClass(params)
        if (!schoolClassInstance.save(flush: true)) {
            render(view: "create", model: [schoolClassInstance: schoolClassInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), schoolClassInstance.id])
        redirect(action: "show", id: schoolClassInstance.id)
    }

    def show(Long id) {
        def schoolClassInstance = SchoolClass.get(id)
        if (!schoolClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "list")
            return
        }

        [schoolClassInstance: schoolClassInstance]
    }

    def absent() {
        TwilioRestClient client = new TwilioRestClient("AC2b048d1d73ba7db8e5e37e2c325edf47", "926cd8aa657dc16ec79245dc26559d1c");

        // Build a filter for the SmsList
        Map<String, String> params = new HashMap<String, String>();
        params.put("Body", "Your Student is Absent");
        params.put("To", "+17872465748");
        params.put("From", "+12703667478");

        SmsFactory messageFactory = client.getAccount().getSmsFactory();
        Sms message = null;
        try {
            message = messageFactory.create(params);
        } catch (TwilioRestException e) {
            e.printStackTrace();
        }
        params = new HashMap<String, String>();
        params.put("Body", "Your Student is Absent");
        params.put("To", "15126087889");
        params.put("From", "+12703667478");

        try {
            message = messageFactory.create(params);
        } catch (TwilioRestException e) {
            e.printStackTrace();
        }
//        /1 512-608-7889
        redirect(action: "show", id: 1)
    }

    def edit(Long id) {
        def schoolClassInstance = SchoolClass.get(id)
        if (!schoolClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "list")
            return
        }

        [schoolClassInstance: schoolClassInstance]
    }

    def update(Long id, Long version) {
        def schoolClassInstance = SchoolClass.get(id)
        if (!schoolClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schoolClassInstance.version > version) {
                schoolClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'schoolClass.label', default: 'SchoolClass')] as Object[],
                          "Another user has updated this SchoolClass while you were editing")
                render(view: "edit", model: [schoolClassInstance: schoolClassInstance])
                return
            }
        }

        schoolClassInstance.properties = params

        if (!schoolClassInstance.save(flush: true)) {
            render(view: "edit", model: [schoolClassInstance: schoolClassInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), schoolClassInstance.id])
        redirect(action: "show", id: schoolClassInstance.id)
    }

    def delete(Long id) {
        def schoolClassInstance = SchoolClass.get(id)
        if (!schoolClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "list")
            return
        }

        try {
            schoolClassInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schoolClass.label', default: 'SchoolClass'), id])
            redirect(action: "show", id: id)
        }
    }
}
