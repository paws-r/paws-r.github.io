<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Cloud Control API

### Description

For more information about Amazon Web Services Cloud Control API, see
the [Amazon Web Services Cloud Control API User
Guide](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html).

### Usage

    cloudcontrolapi(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudcontrolapi_:_config">config</code></td>
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

    svc <- cloudcontrolapi(
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
<td style="text-align: left;"><a href="../cloudcontrolapi_cancel_resource_request/"> cancel_resource_request </a></td>
<td style="text-align: left;">Cancels the specified resource operation
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudcontrolapi_create_resource/"> create_resource </a></td>
<td style="text-align: left;">Creates the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudcontrolapi_delete_resource/"> delete_resource </a></td>
<td style="text-align: left;">Deletes the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudcontrolapi_get_resource/"> get_resource </a></td>
<td style="text-align: left;">Returns information about the current
state of the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudcontrolapi_get_resource_request_status/"> get_resource_request_status </a></td>
<td style="text-align: left;">Returns the current status of a resource
operation request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudcontrolapi_list_resource_requests/"> list_resource_requests </a></td>
<td style="text-align: left;">Returns existing resource operation
requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudcontrolapi_list_resources/"> list_resources </a></td>
<td style="text-align: left;">Returns information about the specified
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudcontrolapi_update_resource/"> update_resource </a></td>
<td style="text-align: left;">Updates the specified property values in
the resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudcontrolapi()
    svc$cancel_resource_request(
      Foo = 123
    )

    ## End(Not run)
