<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CloudHSM V2

### Description

For more information about AWS CloudHSM, see [AWS
CloudHSM](https://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).

### Usage

    cloudhsmv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_:_config">config</code></td>
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

    svc <- cloudhsmv2(
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
<td style="text-align: left;"><a href="../cloudhsmv2_copy_backup_to_region/"> copy_backup_to_region </a></td>
<td style="text-align: left;">Copy an AWS CloudHSM cluster backup to a
different region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a new AWS CloudHSM cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_create_hsm/"> create_hsm </a></td>
<td style="text-align: left;">Creates a new hardware security module
(HSM) in the specified AWS CloudHSM cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_delete_backup/"> delete_backup </a></td>
<td style="text-align: left;">Deletes a specified AWS CloudHSM
backup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes the specified AWS CloudHSM
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_delete_hsm/"> delete_hsm </a></td>
<td style="text-align: left;">Deletes the specified HSM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_describe_backups/"> describe_backups </a></td>
<td style="text-align: left;">Gets information about backups of AWS
CloudHSM clusters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_describe_clusters/"> describe_clusters </a></td>
<td style="text-align: left;">Gets information about AWS CloudHSM
clusters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_initialize_cluster/"> initialize_cluster </a></td>
<td style="text-align: left;">Claims an AWS CloudHSM cluster by
submitting the cluster certificate issued by your issuing certificate
authority (CA) and the CA's root certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Gets a list of tags for the specified AWS
CloudHSM cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_modify_backup_attributes/"> modify_backup_attributes </a></td>
<td style="text-align: left;">Modifies attributes for AWS CloudHSM
backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_modify_cluster/"> modify_cluster </a></td>
<td style="text-align: left;">Modifies AWS CloudHSM cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_restore_backup/"> restore_backup </a></td>
<td style="text-align: left;">Restores a specified AWS CloudHSM backup
that is in the PENDING_DELETION state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsmv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified AWS CloudHSM cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsmv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tag or tags from the
specified AWS CloudHSM cluster</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudhsmv2()
    svc$copy_backup_to_region(
      Foo = 123
    )

    ## End(Not run)
