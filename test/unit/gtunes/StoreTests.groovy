package gtunes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Store)
class StoreTests {

    void testSomething() {
        controller.index()
        assert 'Welcome to the gTunes store!' == response.text
    }
}