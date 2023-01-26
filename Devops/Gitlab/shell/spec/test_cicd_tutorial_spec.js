var request = require("request");

var base_url = "http://localhost:8080/"

describe("Hello", function() {
    describe("GET /", function() {
        it("returns status code 200", function(done) {
            request.get(base_url, function(error, responce, body) {
                expect(responce.statusCode).toBe(200);
                done();
            })
        })
    })
})