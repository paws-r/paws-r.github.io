<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonApiGatewayV2

### Description

Amazon API Gateway V2

### Usage

    apigatewayv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_:_config">config</code></td>
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

    svc <- apigatewayv2(
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
<td style="text-align: left;"><a href="../apigatewayv2_create_api/"> create_api </a></td>
<td style="text-align: left;">Creates an Api resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_api_mapping/"> create_api_mapping </a></td>
<td style="text-align: left;">Creates an API mapping</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_create_authorizer/"> create_authorizer </a></td>
<td style="text-align: left;">Creates an Authorizer for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_deployment/"> create_deployment </a></td>
<td style="text-align: left;">Creates a Deployment for an API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_create_domain_name/"> create_domain_name </a></td>
<td style="text-align: left;">Creates a domain name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_integration/"> create_integration </a></td>
<td style="text-align: left;">Creates an Integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_create_integration_response/"> create_integration_response </a></td>
<td style="text-align: left;">Creates an IntegrationResponses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_model/"> create_model </a></td>
<td style="text-align: left;">Creates a Model for an API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_create_route/"> create_route </a></td>
<td style="text-align: left;">Creates a Route for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_route_response/"> create_route_response </a></td>
<td style="text-align: left;">Creates a RouteResponse for a Route</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_create_stage/"> create_stage </a></td>
<td style="text-align: left;">Creates a Stage for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_create_vpc_link/"> create_vpc_link </a></td>
<td style="text-align: left;">Creates a VPC link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_access_log_settings/"> delete_access_log_settings </a></td>
<td style="text-align: left;">Deletes the AccessLogSettings for a
Stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_api/"> delete_api </a></td>
<td style="text-align: left;">Deletes an Api resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_api_mapping/"> delete_api_mapping </a></td>
<td style="text-align: left;">Deletes an API mapping</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_authorizer/"> delete_authorizer </a></td>
<td style="text-align: left;">Deletes an Authorizer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_cors_configuration/"> delete_cors_configuration </a></td>
<td style="text-align: left;">Deletes a CORS configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_deployment/"> delete_deployment </a></td>
<td style="text-align: left;">Deletes a Deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_domain_name/"> delete_domain_name </a></td>
<td style="text-align: left;">Deletes a domain name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_integration/"> delete_integration </a></td>
<td style="text-align: left;">Deletes an Integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_integration_response/"> delete_integration_response </a></td>
<td style="text-align: left;">Deletes an IntegrationResponses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_model/"> delete_model </a></td>
<td style="text-align: left;">Deletes a Model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_route/"> delete_route </a></td>
<td style="text-align: left;">Deletes a Route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_route_request_parameter/"> delete_route_request_parameter </a></td>
<td style="text-align: left;">Deletes a route request parameter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_route_response/"> delete_route_response </a></td>
<td style="text-align: left;">Deletes a RouteResponse</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_route_settings/"> delete_route_settings </a></td>
<td style="text-align: left;">Deletes the RouteSettings for a stage</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_delete_stage/"> delete_stage </a></td>
<td style="text-align: left;">Deletes a Stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_delete_vpc_link/"> delete_vpc_link </a></td>
<td style="text-align: left;">Deletes a VPC link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_export_api/"> export_api </a></td>
<td style="text-align: left;">Export api</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_api/"> get_api </a></td>
<td style="text-align: left;">Gets an Api resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_api_mapping/"> get_api_mapping </a></td>
<td style="text-align: left;">Gets an API mapping</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_api_mappings/"> get_api_mappings </a></td>
<td style="text-align: left;">Gets API mappings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_apis/"> get_apis </a></td>
<td style="text-align: left;">Gets a collection of Api resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_authorizer/"> get_authorizer </a></td>
<td style="text-align: left;">Gets an Authorizer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_authorizers/"> get_authorizers </a></td>
<td style="text-align: left;">Gets the Authorizers for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_deployment/"> get_deployment </a></td>
<td style="text-align: left;">Gets a Deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_deployments/"> get_deployments </a></td>
<td style="text-align: left;">Gets the Deployments for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_domain_name/"> get_domain_name </a></td>
<td style="text-align: left;">Gets a domain name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_domain_names/"> get_domain_names </a></td>
<td style="text-align: left;">Gets the domain names for an AWS
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_integration/"> get_integration </a></td>
<td style="text-align: left;">Gets an Integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_integration_response/"> get_integration_response </a></td>
<td style="text-align: left;">Gets an IntegrationResponses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_integration_responses/"> get_integration_responses </a></td>
<td style="text-align: left;">Gets the IntegrationResponses for an
Integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_integrations/"> get_integrations </a></td>
<td style="text-align: left;">Gets the Integrations for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_model/"> get_model </a></td>
<td style="text-align: left;">Gets a Model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_models/"> get_models </a></td>
<td style="text-align: left;">Gets the Models for an API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_model_template/"> get_model_template </a></td>
<td style="text-align: left;">Gets a model template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_route/"> get_route </a></td>
<td style="text-align: left;">Gets a Route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_route_response/"> get_route_response </a></td>
<td style="text-align: left;">Gets a RouteResponse</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_route_responses/"> get_route_responses </a></td>
<td style="text-align: left;">Gets the RouteResponses for a Route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_routes/"> get_routes </a></td>
<td style="text-align: left;">Gets the Routes for an API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_stage/"> get_stage </a></td>
<td style="text-align: left;">Gets a Stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_stages/"> get_stages </a></td>
<td style="text-align: left;">Gets the Stages for an API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_tags/"> get_tags </a></td>
<td style="text-align: left;">Gets a collection of Tag resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_get_vpc_link/"> get_vpc_link </a></td>
<td style="text-align: left;">Gets a VPC link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_get_vpc_links/"> get_vpc_links </a></td>
<td style="text-align: left;">Gets a collection of VPC links</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_import_api/"> import_api </a></td>
<td style="text-align: left;">Imports an API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_reimport_api/"> reimport_api </a></td>
<td style="text-align: left;">Puts an Api resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_reset_authorizers_cache/"> reset_authorizers_cache </a></td>
<td style="text-align: left;">Resets all authorizer cache entries on a
stage</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Creates a new Tag resource to represent a
tag</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes a Tag</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_api/"> update_api </a></td>
<td style="text-align: left;">Updates an Api resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_api_mapping/"> update_api_mapping </a></td>
<td style="text-align: left;">The API mapping</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_authorizer/"> update_authorizer </a></td>
<td style="text-align: left;">Updates an Authorizer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_deployment/"> update_deployment </a></td>
<td style="text-align: left;">Updates a Deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_domain_name/"> update_domain_name </a></td>
<td style="text-align: left;">Updates a domain name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_integration/"> update_integration </a></td>
<td style="text-align: left;">Updates an Integration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_integration_response/"> update_integration_response </a></td>
<td style="text-align: left;">Updates an IntegrationResponses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_model/"> update_model </a></td>
<td style="text-align: left;">Updates a Model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_route/"> update_route </a></td>
<td style="text-align: left;">Updates a Route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_route_response/"> update_route_response </a></td>
<td style="text-align: left;">Updates a RouteResponse</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewayv2_update_stage/"> update_stage </a></td>
<td style="text-align: left;">Updates a Stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewayv2_update_vpc_link/"> update_vpc_link </a></td>
<td style="text-align: left;">Updates a VPC link</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- apigatewayv2()
    svc$create_api(
      Foo = 123
    )

    ## End(Not run)
