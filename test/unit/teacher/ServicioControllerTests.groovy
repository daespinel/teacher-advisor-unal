package teacher



import org.junit.*
import grails.test.mixin.*

@TestFor(ServicioController)
@Mock(Servicio)
class ServicioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/servicio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.servicioInstanceList.size() == 0
        assert model.servicioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.servicioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.servicioInstance != null
        assert view == '/servicio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/servicio/show/1'
        assert controller.flash.message != null
        assert Servicio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/servicio/list'

        populateValidParams(params)
        def servicio = new Servicio(params)

        assert servicio.save() != null

        params.id = servicio.id

        def model = controller.show()

        assert model.servicioInstance == servicio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/servicio/list'

        populateValidParams(params)
        def servicio = new Servicio(params)

        assert servicio.save() != null

        params.id = servicio.id

        def model = controller.edit()

        assert model.servicioInstance == servicio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/servicio/list'

        response.reset()

        populateValidParams(params)
        def servicio = new Servicio(params)

        assert servicio.save() != null

        // test invalid parameters in update
        params.id = servicio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/servicio/edit"
        assert model.servicioInstance != null

        servicio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/servicio/show/$servicio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        servicio.clearErrors()

        populateValidParams(params)
        params.id = servicio.id
        params.version = -1
        controller.update()

        assert view == "/servicio/edit"
        assert model.servicioInstance != null
        assert model.servicioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/servicio/list'

        response.reset()

        populateValidParams(params)
        def servicio = new Servicio(params)

        assert servicio.save() != null
        assert Servicio.count() == 1

        params.id = servicio.id

        controller.delete()

        assert Servicio.count() == 0
        assert Servicio.get(servicio.id) == null
        assert response.redirectedUrl == '/servicio/list'
    }
}
