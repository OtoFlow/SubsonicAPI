// Generated by swift-openapi-generator, do not modify.
@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import struct Foundation.URL
@preconcurrency import struct Foundation.Data
@preconcurrency import struct Foundation.Date
#else
import struct Foundation.URL
import struct Foundation.Data
import struct Foundation.Date
#endif
import HTTPTypes
public struct Client: APIProtocol {
    /// The underlying HTTP client.
    private let client: UniversalClient
    /// Creates a new client.
    /// - Parameters:
    ///   - serverURL: The server URL that the client connects to. Any server
    ///   URLs defined in the OpenAPI document are available as static methods
    ///   on the ``Servers`` type.
    ///   - configuration: A set of configuration values for the client.
    ///   - transport: A transport that performs HTTP operations.
    ///   - middlewares: A list of middlewares to call before the transport.
    public init(
        serverURL: Foundation.URL,
        configuration: Configuration = .init(),
        transport: any ClientTransport,
        middlewares: [any ClientMiddleware] = []
    ) {
        self.client = .init(
            serverURL: serverURL,
            configuration: configuration,
            transport: transport,
            middlewares: middlewares
        )
    }
    private var converter: Converter {
        client.converter
    }
    /// - Remark: HTTP `POST /ping.view`.
    /// - Remark: Generated from `#/paths//ping.view/post(signIn)`.
    public func signIn(_ input: Operations.signIn.Input) async throws -> Operations.signIn.Output {
        try await client.send(
            input: input,
            forOperation: Operations.signIn.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/ping.view",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .post
                )
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "u",
                    value: input.query.u
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "t",
                    value: input.query.t
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "s",
                    value: input.query.s
                )
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.signIn.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json",
                            "application/xml"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.signIn.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    case "application/xml":
                        body = try converter.getResponseBodyAsBinary(
                            OpenAPIRuntime.HTTPBody.self,
                            from: responseBody,
                            transforming: { value in
                                .xml(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
    /// - Remark: HTTP `GET /ping`.
    /// - Remark: Generated from `#/paths//ping/get(ping)`.
    public func ping(_ input: Operations.ping.Input) async throws -> Operations.ping.Output {
        try await client.send(
            input: input,
            forOperation: Operations.ping.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/ping",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.ping.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.ping.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
    /// - Remark: HTTP `GET /getGenres`.
    /// - Remark: Generated from `#/paths//getGenres/get(getGenres)`.
    public func getGenres(_ input: Operations.getGenres.Input) async throws -> Operations.getGenres.Output {
        try await client.send(
            input: input,
            forOperation: Operations.getGenres.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/getGenres",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.getGenres.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.getGenres.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
    /// - Remark: HTTP `GET /getAlbumList`.
    /// - Remark: Generated from `#/paths//getAlbumList/get(getAlbumList)`.
    public func getAlbumList(_ input: Operations.getAlbumList.Input) async throws -> Operations.getAlbumList.Output {
        try await client.send(
            input: input,
            forOperation: Operations.getAlbumList.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/getAlbumList",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "type",
                    value: input.query._type
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "size",
                    value: input.query.size
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "offset",
                    value: input.query.offset
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "fromYear",
                    value: input.query.fromYear
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "toYear",
                    value: input.query.toYear
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "genre",
                    value: input.query.genre
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "musicFolderId",
                    value: input.query.musicFolderId
                )
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.getAlbumList.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.getAlbumList.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
    /// - Remark: HTTP `GET /getRandomSongs`.
    /// - Remark: Generated from `#/paths//getRandomSongs/get(getRandomSongs)`.
    public func getRandomSongs(_ input: Operations.getRandomSongs.Input) async throws -> Operations.getRandomSongs.Output {
        try await client.send(
            input: input,
            forOperation: Operations.getRandomSongs.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/getRandomSongs",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "size",
                    value: input.query.size
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "genre",
                    value: input.query.genre
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "fromYear",
                    value: input.query.fromYear
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "toYear",
                    value: input.query.toYear
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "musicFolderId",
                    value: input.query.musicFolderId
                )
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.getRandomSongs.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.getRandomSongs.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
    /// - Remark: HTTP `GET /getSongsByGenre`.
    /// - Remark: Generated from `#/paths//getSongsByGenre/get(getSongsByGenre)`.
    public func getSongsByGenre(_ input: Operations.getSongsByGenre.Input) async throws -> Operations.getSongsByGenre.Output {
        try await client.send(
            input: input,
            forOperation: Operations.getSongsByGenre.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/getSongsByGenre",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "genre",
                    value: input.query.genre
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "count",
                    value: input.query.count
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "offset",
                    value: input.query.offset
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "musicFolderId",
                    value: input.query.musicFolderId
                )
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.getSongsByGenre.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.getSongsByGenre.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
}
