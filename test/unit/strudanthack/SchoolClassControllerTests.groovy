package strudanthack



import org.junit.*
import grails.test.mixin.*

@TestFor(SchoolClassController)
@Mock(SchoolClass)
class SchoolClassControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/schoolClass/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.schoolClassInstanceList.size() == 0
        assert model.schoolClassInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.schoolClassInstance != null
    }

    void testSave() {
        controller.save()

        assert model.schoolClassInstance != null
        assert view == '/schoolClass/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/schoolClass/show/1'
        assert controller.flash.message != null
        assert SchoolClass.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/schoolClass/list'

        populateValidParams(params)
        def schoolClass = new SchoolClass(params)

        assert schoolClass.save() != null

        params.id = schoolClass.id

        def model = controller.show()

        assert model.schoolClassInstance == schoolClass
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/schoolClass/list'

        populateValidParams(params)
        def schoolClass = new SchoolClass(params)

        assert schoolClass.save() != null

        params.id = schoolClass.id

        def model = controller.edit()

        assert model.schoolClassInstance == schoolClass
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/schoolClass/list'

        response.reset()

        populateValidParams(params)
        def schoolClass = new SchoolClass(params)

        assert schoolClass.save() != null

        // test invalid parameters in update
        params.id = schoolClass.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/schoolClass/edit"
        assert model.schoolClassInstance != null

        schoolClass.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/schoolClass/show/$schoolClass.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        schoolClass.clearErrors()

        populateValidParams(params)
        params.id = schoolClass.id
        params.version = -1
        controller.update()

        assert view == "/schoolClass/edit"
        assert model.schoolClassInstance != null
        assert model.schoolClassInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/schoolClass/list'

        response.reset()

        populateValidParams(params)
        def schoolClass = new SchoolClass(params)

        assert schoolClass.save() != null
        assert SchoolClass.count() == 1

        params.id = schoolClass.id

        controller.delete()

        assert SchoolClass.count() == 0
        assert SchoolClass.get(schoolClass.id) == null
        assert response.redirectedUrl == '/schoolClass/list'
    }
}
