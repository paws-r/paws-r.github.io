<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic File System

### Description

Amazon Elastic File System (Amazon EFS) provides simple, scalable file
storage for use with Amazon EC2 Linux and Mac instances in the Amazon
Web Services Cloud. With Amazon EFS, storage capacity is elastic,
growing and shrinking automatically as you add and remove files, so that
your applications have the storage they need, when they need it. For
more information, see the [Amazon Elastic File System API
Reference](https://docs.aws.amazon.com/efs/latest/ug/api-reference.html)
and the [Amazon Elastic File System User
Guide](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html).

### Usage

    efs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_:_config">config</code></td>
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

    svc <- efs(
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
<td style="text-align: left;"><a href="../efs_create_access_point/"> create_access_point </a></td>
<td style="text-align: left;">Creates an EFS access point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_create_file_system/"> create_file_system </a></td>
<td style="text-align: left;">Creates a new, empty file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_create_mount_target/"> create_mount_target </a></td>
<td style="text-align: left;">Creates a mount target for a file
system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_create_replication_configuration/"> create_replication_configuration </a></td>
<td style="text-align: left;">Creates a replication configuration that
replicates an existing EFS file system to a new, read-only file
system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_create_tags/"> create_tags </a></td>
<td style="text-align: left;">DEPRECATED - CreateTags is deprecated and
not maintained</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_delete_access_point/"> delete_access_point </a></td>
<td style="text-align: left;">Deletes the specified access point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_delete_file_system/"> delete_file_system </a></td>
<td style="text-align: left;">Deletes a file system, permanently
severing access to its contents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_delete_file_system_policy/"> delete_file_system_policy </a></td>
<td style="text-align: left;">Deletes the FileSystemPolicy for the
specified file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_delete_mount_target/"> delete_mount_target </a></td>
<td style="text-align: left;">Deletes the specified mount target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_delete_replication_configuration/"> delete_replication_configuration </a></td>
<td style="text-align: left;">Deletes an existing replication
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">DEPRECATED - DeleteTags is deprecated and
not maintained</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_describe_access_points/"> describe_access_points </a></td>
<td style="text-align: left;">Returns the description of a specific
Amazon EFS access point if the AccessPointId is provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_describe_account_preferences/"> describe_account_preferences </a></td>
<td style="text-align: left;">Returns the account preferences settings
for the Amazon Web Services account associated with the user making the
request, in the current Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_describe_backup_policy/"> describe_backup_policy </a></td>
<td style="text-align: left;">Returns the backup policy for the
specified EFS file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_describe_file_system_policy/"> describe_file_system_policy </a></td>
<td style="text-align: left;">Returns the FileSystemPolicy for the
specified EFS file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_describe_file_systems/"> describe_file_systems </a></td>
<td style="text-align: left;">Returns the description of a specific
Amazon EFS file system if either the file system CreationToken or the
FileSystemId is provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_describe_lifecycle_configuration/"> describe_lifecycle_configuration </a></td>
<td style="text-align: left;">Returns the current LifecycleConfiguration
object for the specified Amazon EFS file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_describe_mount_targets/"> describe_mount_targets </a></td>
<td style="text-align: left;">Returns the descriptions of all the
current mount targets, or a specific mount target, for a file
system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_describe_mount_target_security_groups/"> describe_mount_target_security_groups </a></td>
<td style="text-align: left;">Returns the security groups currently in
effect for a mount target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_describe_replication_configurations/"> describe_replication_configurations </a></td>
<td style="text-align: left;">Retrieves the replication configuration
for a specific file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">DEPRECATED - The DescribeTags action is
deprecated and not maintained</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags for a top-level EFS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_modify_mount_target_security_groups/"> modify_mount_target_security_groups </a></td>
<td style="text-align: left;">Modifies the set of security groups in
effect for a mount target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_put_account_preferences/"> put_account_preferences </a></td>
<td style="text-align: left;">Use this operation to set the account
preference in the current Amazon Web Services Region to use long 17
character (63 bit) or short 8 character (32 bit) resource IDs for new
EFS file system and mount target resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_put_backup_policy/"> put_backup_policy </a></td>
<td style="text-align: left;">Updates the file system's backup
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_put_file_system_policy/"> put_file_system_policy </a></td>
<td style="text-align: left;">Applies an Amazon EFS FileSystemPolicy to
an Amazon EFS file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_put_lifecycle_configuration/"> put_lifecycle_configuration </a></td>
<td style="text-align: left;">Use this action to manage EFS lifecycle
management and EFS Intelligent-Tiering</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Creates a tag for an EFS resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../efs_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from an EFS resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../efs_update_file_system/"> update_file_system </a></td>
<td style="text-align: left;">Updates the throughput mode or the amount
of provisioned throughput of an existing file system</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- efs()
    # This operation creates a new, encrypted file system with automatic
    # backups enabled, and the default generalpurpose performance mode.
    svc$create_file_system(
      Backup = TRUE,
      CreationToken = "tokenstring",
      Encrypted = TRUE,
      PerformanceMode = "generalPurpose",
      Tags = list(
        list(
          Key = "Name",
          Value = "MyFileSystem"
        )
      )
    )

    ## End(Not run)
