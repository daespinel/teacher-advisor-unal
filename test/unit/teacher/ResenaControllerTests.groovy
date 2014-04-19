package teacher



import org.junit.*
import grails.test.mixin.*

@TestFor(ResenaController)
@Mock(Resena)
class ResenaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/resena/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.resenaInstanceList.size() == 0
        assert model.resenaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.resenaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.resenaInstance != null
        assert view == '/resena/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/resena/show/1'
        assert controller.flash.message != null
        assert Resena.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/resena/list'

        populateValidParams(params)
        def resena = new Resena(params)

        assert resena.save() != null

        params.id = resena.id

        def model = controller.show()

        assert model.resenaInstance == resena
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/resena/list'

        populateValidParams(params)
        def resena = new Resena(params)

        assert resena.save() != null

        params.id = resena.id

        def model = controller.edit()

        assert model.resenaInstance == resena
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/resena/list'

        response.reset()

        populateValidParams(params)
        def resena = new Resena(params)

        assert resena.save() != null

        // test invalid parameters in update
        params.id = resena.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/resena/edit"
        assert model.resenaInstance != null

        resena.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/resena/show/$resena.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        resena.clearErrors()

        populateValidParams(params)
        params.id = resena.id
        params.version = -1
        controller.update()

        assert view == "/resena/edit"
        assert model.resenaInstance != null
        assert model.resenaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/resena/list'

        response.reset()

        populateValidParams(params)
        def resena = new Resena(params)

        assert resena.save() != null
        assert Resena.count() == 1

        params.id = resena.id

        controller.delete()

        assert Resena.count() == 0
        assert Resena.get(resena.id) == null
        assert response.redirectedUrl == '/resena/list'
    }
}
