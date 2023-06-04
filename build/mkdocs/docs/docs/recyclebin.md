<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Recycle Bin

### Description

This is the *Recycle Bin API Reference*. This documentation provides
descriptions and syntax for each of the actions and data types in
Recycle Bin.

Recycle Bin is a resource recovery feature that enables you to restore
accidentally deleted snapshots and EBS-backed AMIs. When using Recycle
Bin, if your resources are deleted, they are retained in the Recycle Bin
for a time period that you specify.

You can restore a resource from the Recycle Bin at any time before its
retention period expires. After you restore a resource from the Recycle
Bin, the resource is removed from the Recycle Bin, and you can then use
it in the same way you use any other resource of that type in your
account. If the retention period expires and the resource is not
restored, the resource is permanently deleted from the Recycle Bin and
is no longer available for recovery. For more information about Recycle
Bin, see [Recycle
Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/) in the
*Amazon Elastic Compute Cloud User Guide*.

### Usage

    recyclebin(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="recyclebin_:_config">config</code></td>
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

    svc <- recyclebin(
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
<td style="text-align: left;"><a href="../recyclebin_create_rule/"> create_rule </a></td>
<td style="text-align: left;">Creates a Recycle Bin retention rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../recyclebin_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">Deletes a Recycle Bin retention rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../recyclebin_get_rule/"> get_rule </a></td>
<td style="text-align: left;">Gets information about a Recycle Bin
retention rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../recyclebin_list_rules/"> list_rules </a></td>
<td style="text-align: left;">Lists the Recycle Bin retention rules in
the Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../recyclebin_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags assigned to a retention
rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../recyclebin_lock_rule/"> lock_rule </a></td>
<td style="text-align: left;">Locks a retention rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../recyclebin_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns tags to the specified retention
rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../recyclebin_unlock_rule/"> unlock_rule </a></td>
<td style="text-align: left;">Unlocks a retention rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../recyclebin_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Unassigns a tag from a retention rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../recyclebin_update_rule/"> update_rule </a></td>
<td style="text-align: left;">Updates an existing Recycle Bin retention
rule</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- recyclebin()
    svc$create_rule(
      Foo = 123
    )

    ## End(Not run)
