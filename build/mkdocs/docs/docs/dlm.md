<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Data Lifecycle Manager

### Description

With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
Amazon Web Services resources. You create lifecycle policies, which are
used to automate operations on the specified resources.

Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots.
For information about using Amazon Data Lifecycle Manager with Amazon
EBS, see [Amazon Data Lifecycle
Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
in the *Amazon EC2 User Guide*.

### Usage

    dlm(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dlm_:_config">config</code></td>
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

    svc <- dlm(
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
<td style="text-align: left;"><a href="../dlm_create_lifecycle_policy/"> create_lifecycle_policy </a></td>
<td style="text-align: left;">Creates a policy to manage the lifecycle
of the specified Amazon Web Services resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dlm_delete_lifecycle_policy/"> delete_lifecycle_policy </a></td>
<td style="text-align: left;">Deletes the specified lifecycle policy and
halts the automated operations that the policy specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dlm_get_lifecycle_policies/"> get_lifecycle_policies </a></td>
<td style="text-align: left;">Gets summary information about all or the
specified data lifecycle policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dlm_get_lifecycle_policy/"> get_lifecycle_policy </a></td>
<td style="text-align: left;">Gets detailed information about the
specified lifecycle policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dlm_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dlm_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dlm_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dlm_update_lifecycle_policy/"> update_lifecycle_policy </a></td>
<td style="text-align: left;">Updates the specified lifecycle
policy</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- dlm()
    svc$create_lifecycle_policy(
      Foo = 123
    )

    ## End(Not run)
