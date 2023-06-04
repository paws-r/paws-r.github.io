<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewaymanagementapi</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonApiGatewayManagementApi

### Description

The Amazon API Gateway Management API allows you to directly manage
runtime aspects of your deployed APIs. To use it, you must explicitly
set the SDK's endpoint to point to the endpoint of your deployed API.
The endpoint will be of the form
https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be
the endpoint corresponding to your API's custom domain and base path, if
applicable.

### Usage

    apigatewaymanagementapi(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewaymanagementapi_:_config">config</code></td>
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

    svc <- apigatewaymanagementapi(
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
<td style="text-align: left;"><a href="../apigatewaymanagementapi_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Delete the connection with the provided
id</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apigatewaymanagementapi_get_connection/"> get_connection </a></td>
<td style="text-align: left;">Get information about the connection with
the provided id</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apigatewaymanagementapi_post_to_connection/"> post_to_connection </a></td>
<td style="text-align: left;">Sends the provided data to the specified
connection</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- apigatewaymanagementapi()
    svc$delete_connection(
      Foo = 123
    )

    ## End(Not run)
