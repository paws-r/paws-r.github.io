<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon S3 on Outposts

### Description

Amazon S3 on Outposts provides access to S3 on Outposts operations.

### Usage

    s3outposts(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3outposts_:_config">config</code></td>
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

    svc <- s3outposts(
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
<td style="text-align: left;"><a href="../s3outposts_create_endpoint/"> create_endpoint </a></td>
<td style="text-align: left;">Creates an endpoint and associates it with
the specified Outpost</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3outposts_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Deletes an endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3outposts_list_endpoints/"> list_endpoints </a></td>
<td style="text-align: left;">Lists endpoints associated with the
specified Outpost</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3outposts_list_outposts_with_s3/"> list_outposts_with_s3 </a></td>
<td style="text-align: left;">Lists the Outposts with S3 on Outposts
capacity for your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3outposts_list_shared_endpoints/"> list_shared_endpoints </a></td>
<td style="text-align: left;">Lists all endpoints associated with an
Outpost that has been shared by Amazon Web Services Resource Access
Manager (RAM)</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- s3outposts()
    svc$create_endpoint(
      Foo = 123
    )

    ## End(Not run)
