<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_put_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets up a method's integration

### Description

Sets up a method's integration.

### Usage

    apigateway_put_integration(restApiId, resourceId, httpMethod, type,
      integrationHttpMethod, uri, connectionType, connectionId, credentials,
      requestParameters, requestTemplates, passthroughBehavior,
      cacheNamespace, cacheKeyParameters, contentHandling, timeoutInMillis,
      tlsConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a put integration request's resource
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies the HTTP method for the
integration.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_put_integration_:_type">type</code></td>
<td><p>[required] Specifies a put integration input's type.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_integrationHttpMethod">integrationHttpMethod</code></td>
<td><p>The HTTP method for the integration.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_put_integration_:_uri">uri</code></td>
<td><p>Specifies Uniform Resource Identifier (URI) of the integration
endpoint. For HTTP or <code>HTTP_PROXY</code> integrations, the URI must
be a fully formed, encoded HTTP(S) URL according to the RFC-3986
specification, for either standard integration, where
<code>connectionType</code> is not <code>VPC_LINK</code>, or private
integration, where <code>connectionType</code> is <code>VPC_LINK</code>.
For a private HTTP integration, the URI is not used for routing. For
<code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of
the form <code
style="white-space: pre;">⁠arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:path|action/\{service_api⁠</code>}.
Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is
the name of the integrated Amazon Web Services service (e.g., s3); and
{subdomain} is a designated subdomain supported by certain Amazon Web
Services service for fast host-name lookup. action can be used for an
Amazon Web Services service action-based API, using an
Action={name}&amp;{p1}={v1}&amp;p2={v2}... query string. The ensuing
{service_api} refers to a supported action {name} plus any required
input parameters. Alternatively, path can be used for an Amazon Web
Services service path-based API. The ensuing service_api refers to the
path to an Amazon Web Services service resource, including the region of
the integrated Amazon Web Services service, if applicable. For example,
for integration with the S3 API of <code>GetObject</code>, the
<code>uri</code> can be either
<code>arn:aws:apigateway:us-west-2:s3:action/GetObject&amp;Bucket={bucket}&amp;Key={key}</code>
or
<code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_connectionType">connectionType</code></td>
<td><p>The type of the network connection to the integration endpoint.
The valid value is <code>INTERNET</code> for connections through the
public routable internet or <code>VPC_LINK</code> for private
connections between API Gateway and a network load balancer in a VPC.
The default value is <code>INTERNET</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_connectionId">connectionId</code></td>
<td><p>The ID of the VpcLink used for the integration. Specify this
value only if you specify <code>VPC_LINK</code> as the connection
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_credentials">credentials</code></td>
<td><p>Specifies whether credentials are required for a put
integration.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_requestParameters">requestParameters</code></td>
<td><p>A key-value map specifying request parameters that are passed
from the method request to the back end. The key is an integration
request parameter name and the associated value is a method request
parameter value or static value that must be enclosed within single
quotes and pre-encoded as required by the back end. The method request
parameter value must match the pattern of <code
style="white-space: pre;">⁠method.request.{location}.{name}⁠</code>, where
<code>location</code> is <code>querystring</code>, <code>path</code>, or
<code>header</code> and <code>name</code> must be a valid and unique
method request parameter name.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_requestTemplates">requestTemplates</code></td>
<td><p>Represents a map of Velocity templates that are applied on the
request payload based on the value of the Content-Type header sent by
the client. The content type value is the key in this map, and the
template (as a String) is the value.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_passthroughBehavior">passthroughBehavior</code></td>
<td><p>Specifies the pass-through behavior for incoming requests based
on the Content-Type header in the request, and the available mapping
templates specified as the <code>requestTemplates</code> property on the
Integration resource. There are three valid values:
<code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and
<code>NEVER</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_cacheNamespace">cacheNamespace</code></td>
<td><p>Specifies a group of related cached parameters. By default, API
Gateway uses the resource ID as the <code>cacheNamespace</code>. You can
specify the same <code>cacheNamespace</code> across resources to return
the same cached data for requests to different resources.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_cacheKeyParameters">cacheKeyParameters</code></td>
<td><p>A list of request parameters whose values API Gateway caches. To
be valid values for <code>cacheKeyParameters</code>, these parameters
must also be specified for Method
<code>requestParameters</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_contentHandling">contentHandling</code></td>
<td><p>Specifies how to handle request payload content type conversions.
Supported values are <code>CONVERT_TO_BINARY</code> and
<code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
<p>If this property is not defined, the request payload will be passed
through from the method request to integration request without
modification, provided that the <code>passthroughBehavior</code> is
configured to support payload pass-through.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_:_timeoutInMillis">timeoutInMillis</code></td>
<td><p>Custom timeout between 50 and 29,000 milliseconds. The default
value is 29,000 milliseconds or 29 seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_:_tlsConfig">tlsConfig</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
      httpMethod = "string",
      uri = "string",
      connectionType = "INTERNET"|"VPC_LINK",
      connectionId = "string",
      credentials = "string",
      requestParameters = list(
        "string"
      ),
      requestTemplates = list(
        "string"
      ),
      passthroughBehavior = "string",
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      timeoutInMillis = 123,
      cacheNamespace = "string",
      cacheKeyParameters = list(
        "string"
      ),
      integrationResponses = list(
        list(
          statusCode = "string",
          selectionPattern = "string",
          responseParameters = list(
            "string"
          ),
          responseTemplates = list(
            "string"
          ),
          contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
        )
      ),
      tlsConfig = list(
        insecureSkipVerification = TRUE|FALSE
      )
    )

### Request syntax

    svc$put_integration(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
      integrationHttpMethod = "string",
      uri = "string",
      connectionType = "INTERNET"|"VPC_LINK",
      connectionId = "string",
      credentials = "string",
      requestParameters = list(
        "string"
      ),
      requestTemplates = list(
        "string"
      ),
      passthroughBehavior = "string",
      cacheNamespace = "string",
      cacheKeyParameters = list(
        "string"
      ),
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      timeoutInMillis = 123,
      tlsConfig = list(
        insecureSkipVerification = TRUE|FALSE
      )
    )
