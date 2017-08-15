import {foo, bar, baz} from './service.js';

describe('service.js', function () {
    describe('foo()', function () {
        it('should be foo', function () {
            const result = foo();
            expect(result).toEqual('foo');
        });
    });
});
