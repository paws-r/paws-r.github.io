<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon API Gateway

### Description

Amazon API Gateway helps developers deliver robust, secure, and scalable
mobile and web application back ends. API Gateway allows developers to
securely connect mobile and web applications to APIs that run on AWS
Lambda, Amazon EC2, or other publicly addressable web services that are
hosted outside of AWS.

### Usage

    apigateway(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- apigateway(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_api_key/"> create_api_key </a></td>
<td style="text-align: left;">Create an ApiKey resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_authorizer/"> create_authorizer </a></td>
<td style="text-align: left;">Adds a new Authorizer resource to an
existing RestApi resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_base_path_mapping/"> create_base_path_mapping </a></td>
<td style="text-align: left;">Creates a new BasePathMapping
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_deployment/"> create_deployment </a></td>
<td style="text-align: left;">Creates a Deployment resource, which makes
a specified RestApi callable over the internet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_documentation_part/"> create_documentation_part </a></td>
<td style="text-align: left;">Creates a documentation part</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_documentation_version/"> create_documentation_version </a></td>
<td style="text-align: left;">Creates a documentation version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_domain_name/"> create_domain_name </a></td>
<td style="text-align: left;">Creates a new domain name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_model/"> create_model </a></td>
<td style="text-align: left;">Adds a new Model resource to an existing
RestApi resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_request_validator/"> create_request_validator </a></td>
<td style="text-align: left;">Creates a RequestValidator of a given
RestApi</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_resource/"> create_resource </a></td>
<td style="text-align: left;">Creates a Resource resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_rest_api/"> create_rest_api </a></td>
<td style="text-align: left;">Creates a new RestApi resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_stage/"> create_stage </a></td>
<td style="text-align: left;">Creates a new Stage resource that
references a pre-existing Deployment for the API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_usage_plan/"> create_usage_plan </a></td>
<td style="text-align: left;">Creates a usage plan with the throttle and
quota limits, as well as the associated API stages, specified in the
payload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_create_usage_plan_key/"> create_usage_plan_key </a></td>
<td style="text-align: left;">Creates a usage plan key for adding an
existing API key to a usage plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_create_vpc_link/"> create_vpc_link </a></td>
<td style="text-align: left;">Creates a VPC link, under the caller's
account in a selected region, in an asynchronous operation that
typically takes 2-4 minutes to complete and become operational</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_api_key/"> delete_api_key </a></td>
<td style="text-align: left;">Deletes the ApiKey resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_authorizer/"> delete_authorizer </a></td>
<td style="text-align: left;">Deletes an existing Authorizer
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_base_path_mapping/"> delete_base_path_mapping </a></td>
<td style="text-align: left;">Deletes the BasePathMapping resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_client_certificate/"> delete_client_certificate </a></td>
<td style="text-align: left;">Deletes the ClientCertificate
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_deployment/"> delete_deployment </a></td>
<td style="text-align: left;">Deletes a Deployment resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_documentation_part/"> delete_documentation_part </a></td>
<td style="text-align: left;">Deletes a documentation part</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_documentation_version/"> delete_documentation_version </a></td>
<td style="text-align: left;">Deletes a documentation version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_domain_name/"> delete_domain_name </a></td>
<td style="text-align: left;">Deletes the DomainName resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_gateway_response/"> delete_gateway_response </a></td>
<td style="text-align: left;">Clears any customization of a
GatewayResponse of a specified response type on the given RestApi and
resets it with the default settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_integration/"> delete_integration </a></td>
<td style="text-align: left;">Represents a delete integration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_integration_response/"> delete_integration_response </a></td>
<td style="text-align: left;">Represents a delete integration
response</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_method/"> delete_method </a></td>
<td style="text-align: left;">Deletes an existing Method resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_method_response/"> delete_method_response </a></td>
<td style="text-align: left;">Deletes an existing MethodResponse
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_model/"> delete_model </a></td>
<td style="text-align: left;">Deletes a model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_request_validator/"> delete_request_validator </a></td>
<td style="text-align: left;">Deletes a RequestValidator of a given
RestApi</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_resource/"> delete_resource </a></td>
<td style="text-align: left;">Deletes a Resource resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_rest_api/"> delete_rest_api </a></td>
<td style="text-align: left;">Deletes the specified API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_stage/"> delete_stage </a></td>
<td style="text-align: left;">Deletes a Stage resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_usage_plan/"> delete_usage_plan </a></td>
<td style="text-align: left;">Deletes a usage plan of a given plan
Id</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_delete_usage_plan_key/"> delete_usage_plan_key </a></td>
<td style="text-align: left;">Deletes a usage plan key and remove the
underlying API key from the associated usage plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_delete_vpc_link/"> delete_vpc_link </a></td>
<td style="text-align: left;">Deletes an existing VpcLink of a specified
identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_flush_stage_authorizers_cache/"> flush_stage_authorizers_cache </a></td>
<td style="text-align: left;">Flushes all authorizer cache entries on a
stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_flush_stage_cache/"> flush_stage_cache </a></td>
<td style="text-align: left;">Flushes a stage's cache</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_generate_client_certificate/"> generate_client_certificate </a></td>
<td style="text-align: left;">Generates a ClientCertificate
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_account/"> get_account </a></td>
<td style="text-align: left;">Gets information about the current Account
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_api_key/"> get_api_key </a></td>
<td style="text-align: left;">Gets information about the current ApiKey
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_api_keys/"> get_api_keys </a></td>
<td style="text-align: left;">Gets information about the current ApiKeys
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_authorizer/"> get_authorizer </a></td>
<td style="text-align: left;">Describe an existing Authorizer
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_authorizers/"> get_authorizers </a></td>
<td style="text-align: left;">Describe an existing Authorizers
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_base_path_mapping/"> get_base_path_mapping </a></td>
<td style="text-align: left;">Describe a BasePathMapping resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_base_path_mappings/"> get_base_path_mappings </a></td>
<td style="text-align: left;">Represents a collection of BasePathMapping
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_client_certificate/"> get_client_certificate </a></td>
<td style="text-align: left;">Gets information about the current
ClientCertificate resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_client_certificates/"> get_client_certificates </a></td>
<td style="text-align: left;">Gets a collection of ClientCertificate
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_deployment/"> get_deployment </a></td>
<td style="text-align: left;">Gets information about a Deployment
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_deployments/"> get_deployments </a></td>
<td style="text-align: left;">Gets information about a Deployments
collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_documentation_part/"> get_documentation_part </a></td>
<td style="text-align: left;">Gets a documentation part</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_documentation_parts/"> get_documentation_parts </a></td>
<td style="text-align: left;">Gets documentation parts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_documentation_version/"> get_documentation_version </a></td>
<td style="text-align: left;">Gets a documentation version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_documentation_versions/"> get_documentation_versions </a></td>
<td style="text-align: left;">Gets documentation versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_domain_name/"> get_domain_name </a></td>
<td style="text-align: left;">Represents a domain name that is contained
in a simpler, more intuitive URL that can be called</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_domain_names/"> get_domain_names </a></td>
<td style="text-align: left;">Represents a collection of DomainName
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_export/"> get_export </a></td>
<td style="text-align: left;">Exports a deployed version of a RestApi in
a specified format</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_gateway_response/"> get_gateway_response </a></td>
<td style="text-align: left;">Gets a GatewayResponse of a specified
response type on the given RestApi</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_gateway_responses/"> get_gateway_responses </a></td>
<td style="text-align: left;">Gets the GatewayResponses collection on
the given RestApi</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_integration/"> get_integration </a></td>
<td style="text-align: left;">Get the integration settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_integration_response/"> get_integration_response </a></td>
<td style="text-align: left;">Represents a get integration response</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_method/"> get_method </a></td>
<td style="text-align: left;">Describe an existing Method resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_method_response/"> get_method_response </a></td>
<td style="text-align: left;">Describes a MethodResponse resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_model/"> get_model </a></td>
<td style="text-align: left;">Describes an existing model defined for a
RestApi resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_models/"> get_models </a></td>
<td style="text-align: left;">Describes existing Models defined for a
RestApi resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_model_template/"> get_model_template </a></td>
<td style="text-align: left;">Generates a sample mapping template that
can be used to transform a payload into the structure of a model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_request_validator/"> get_request_validator </a></td>
<td style="text-align: left;">Gets a RequestValidator of a given
RestApi</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_request_validators/"> get_request_validators </a></td>
<td style="text-align: left;">Gets the RequestValidators collection of a
given RestApi</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_resource/"> get_resource </a></td>
<td style="text-align: left;">Lists information about a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_resources/"> get_resources </a></td>
<td style="text-align: left;">Lists information about a collection of
Resource resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_rest_api/"> get_rest_api </a></td>
<td style="text-align: left;">Lists the RestApi resource in the
collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_rest_apis/"> get_rest_apis </a></td>
<td style="text-align: left;">Lists the RestApis resources for your
collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_sdk/"> get_sdk </a></td>
<td style="text-align: left;">Generates a client SDK for a RestApi and
Stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_sdk_type/"> get_sdk_type </a></td>
<td style="text-align: left;">Gets an SDK type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_sdk_types/"> get_sdk_types </a></td>
<td style="text-align: left;">Gets SDK types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_stage/"> get_stage </a></td>
<td style="text-align: left;">Gets information about a Stage
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_stages/"> get_stages </a></td>
<td style="text-align: left;">Gets information about one or more Stage
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_tags/"> get_tags </a></td>
<td style="text-align: left;">Gets the Tags collection for a given
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_usage/"> get_usage </a></td>
<td style="text-align: left;">Gets the usage data of a usage plan in a
specified time interval</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_usage_plan/"> get_usage_plan </a></td>
<td style="text-align: left;">Gets a usage plan of a given plan
identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_usage_plan_key/"> get_usage_plan_key </a></td>
<td style="text-align: left;">Gets a usage plan key of a given key
identifier</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_usage_plan_keys/"> get_usage_plan_keys </a></td>
<td style="text-align: left;">Gets all the usage plan keys representing
the API keys added to a specified usage plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_usage_plans/"> get_usage_plans </a></td>
<td style="text-align: left;">Gets all the usage plans of the caller's
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_get_vpc_link/"> get_vpc_link </a></td>
<td style="text-align: left;">Gets a specified VPC link under the
caller's account in a region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_get_vpc_links/"> get_vpc_links </a></td>
<td style="text-align: left;">Gets the VpcLinks collection under the
caller's account in a selected region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_import_api_keys/"> import_api_keys </a></td>
<td style="text-align: left;">Import API keys from an external source,
such as a CSV-formatted file</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_import_documentation_parts/"> import_documentation_parts </a></td>
<td style="text-align: left;">Imports documentation parts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_import_rest_api/"> import_rest_api </a></td>
<td style="text-align: left;">A feature of the API Gateway control
service for creating a new API from an external API definition file</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_put_gateway_response/"> put_gateway_response </a></td>
<td style="text-align: left;">Creates a customization of a
GatewayResponse of a specified response type and status code on the
given RestApi</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_put_integration/"> put_integration </a></td>
<td style="text-align: left;">Sets up a method's integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_put_integration_response/"> put_integration_response </a></td>
<td style="text-align: left;">Represents a put integration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_put_method/"> put_method </a></td>
<td style="text-align: left;">Add a method to an existing Resource
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_put_method_response/"> put_method_response </a></td>
<td style="text-align: left;">Adds a MethodResponse to an existing
Method resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_put_rest_api/"> put_rest_api </a></td>
<td style="text-align: left;">A feature of the API Gateway control
service for updating an existing API with an input of external API
definitions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates a tag on a given
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_test_invoke_authorizer/"> test_invoke_authorizer </a></td>
<td style="text-align: left;">Simulate the execution of an Authorizer in
your RestApi with headers, parameters, and an incoming request body</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_test_invoke_method/"> test_invoke_method </a></td>
<td style="text-align: left;">Simulate the invocation of a Method in
your RestApi with headers, parameters, and an incoming request body</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a given resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_account/"> update_account </a></td>
<td style="text-align: left;">Changes information about the current
Account resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_api_key/"> update_api_key </a></td>
<td style="text-align: left;">Changes information about an ApiKey
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_authorizer/"> update_authorizer </a></td>
<td style="text-align: left;">Updates an existing Authorizer
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_base_path_mapping/"> update_base_path_mapping </a></td>
<td style="text-align: left;">Changes information about the
BasePathMapping resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_client_certificate/"> update_client_certificate </a></td>
<td style="text-align: left;">Changes information about an
ClientCertificate resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_deployment/"> update_deployment </a></td>
<td style="text-align: left;">Changes information about a Deployment
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_documentation_part/"> update_documentation_part </a></td>
<td style="text-align: left;">Updates a documentation part</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_documentation_version/"> update_documentation_version </a></td>
<td style="text-align: left;">Updates a documentation version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_domain_name/"> update_domain_name </a></td>
<td style="text-align: left;">Changes information about the DomainName
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_gateway_response/"> update_gateway_response </a></td>
<td style="text-align: left;">Updates a GatewayResponse of a specified
response type on the given RestApi</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_integration/"> update_integration </a></td>
<td style="text-align: left;">Represents an update integration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_integration_response/"> update_integration_response </a></td>
<td style="text-align: left;">Represents an update integration
response</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_method/"> update_method </a></td>
<td style="text-align: left;">Updates an existing Method resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_method_response/"> update_method_response </a></td>
<td style="text-align: left;">Updates an existing MethodResponse
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_model/"> update_model </a></td>
<td style="text-align: left;">Changes information about a model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_request_validator/"> update_request_validator </a></td>
<td style="text-align: left;">Updates a RequestValidator of a given
RestApi</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_resource/"> update_resource </a></td>
<td style="text-align: left;">Changes information about a Resource
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_rest_api/"> update_rest_api </a></td>
<td style="text-align: left;">Changes information about the specified
API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_stage/"> update_stage </a></td>
<td style="text-align: left;">Changes information about a Stage
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_usage/"> update_usage </a></td>
<td style="text-align: left;">Grants a temporary extension to the
remaining quota of a usage plan associated with a specified API key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigateway_update_usage_plan/"> update_usage_plan </a></td>
<td style="text-align: left;">Updates a usage plan of a given plan
Id</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigateway_update_vpc_link/"> update_vpc_link </a></td>
<td style="text-align: left;">Updates an existing VpcLink of a specified
identifier</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- apigateway()
    svc$create_api_key(
      Foo = 123
    )

    ## End(Not run)
