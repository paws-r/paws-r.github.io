<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon FSx

### Description

Amazon FSx is a fully managed service that makes it easy for storage and
application administrators to launch and use shared file storage.

### Usage

    fsx(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_:_config">config</code></td>
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

    svc <- fsx(
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
<td style="text-align: left;"><a href="../fsx_associate_file_system_aliases/"> associate_file_system_aliases </a></td>
<td style="text-align: left;">Use this action to associate one or more
Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows
File Server file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_cancel_data_repository_task/"> cancel_data_repository_task </a></td>
<td style="text-align: left;">Cancels an existing Amazon FSx for Lustre
data repository task if that task is in either the PENDING or EXECUTING
state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_copy_backup/"> copy_backup </a></td>
<td style="text-align: left;">Copies an existing backup within the same
Amazon Web Services account to another Amazon Web Services Region
(cross-Region copy) or within the same Amazon Web Services Region
(in-Region copy)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_create_backup/"> create_backup </a></td>
<td style="text-align: left;">Creates a backup of an existing Amazon FSx
for Windows File Server file system, Amazon FSx for Lustre file system,
Amazon FSx for NetApp ONTAP volume, or Amazon FSx for OpenZFS file
system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_create_data_repository_association/"> create_data_repository_association </a></td>
<td style="text-align: left;">Creates an Amazon FSx for Lustre data
repository association (DRA)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_create_data_repository_task/"> create_data_repository_task </a></td>
<td style="text-align: left;">Creates an Amazon FSx for Lustre data
repository task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_create_file_cache/"> create_file_cache </a></td>
<td style="text-align: left;">Creates a new Amazon File Cache
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_create_file_system/"> create_file_system </a></td>
<td style="text-align: left;">Creates a new, empty Amazon FSx file
system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_create_file_system_from_backup/"> create_file_system_from_backup </a></td>
<td style="text-align: left;">Creates a new Amazon FSx for Lustre,
Amazon FSx for Windows File Server, or Amazon FSx for OpenZFS file
system from an existing Amazon FSx backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of an existing Amazon
FSx for OpenZFS volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_create_storage_virtual_machine/"> create_storage_virtual_machine </a></td>
<td style="text-align: left;">Creates a storage virtual machine (SVM)
for an Amazon FSx for ONTAP file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_create_volume/"> create_volume </a></td>
<td style="text-align: left;">Creates an FSx for ONTAP or Amazon FSx for
OpenZFS storage volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_create_volume_from_backup/"> create_volume_from_backup </a></td>
<td style="text-align: left;">Creates a new Amazon FSx for NetApp ONTAP
volume from an existing Amazon FSx volume backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_delete_backup/"> delete_backup </a></td>
<td style="text-align: left;">Deletes an Amazon FSx backup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_delete_data_repository_association/"> delete_data_repository_association </a></td>
<td style="text-align: left;">Deletes a data repository association on
an Amazon FSx for Lustre file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_delete_file_cache/"> delete_file_cache </a></td>
<td style="text-align: left;">Deletes an Amazon File Cache resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_delete_file_system/"> delete_file_system </a></td>
<td style="text-align: left;">Deletes a file system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes an Amazon FSx for OpenZFS
snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_delete_storage_virtual_machine/"> delete_storage_virtual_machine </a></td>
<td style="text-align: left;">Deletes an existing Amazon FSx for ONTAP
storage virtual machine (SVM)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_delete_volume/"> delete_volume </a></td>
<td style="text-align: left;">Deletes an Amazon FSx for NetApp ONTAP or
Amazon FSx for OpenZFS volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_describe_backups/"> describe_backups </a></td>
<td style="text-align: left;">Returns the description of a specific
Amazon FSx backup, if a BackupIds value is provided for that backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_describe_data_repository_associations/"> describe_data_repository_associations </a></td>
<td style="text-align: left;">Returns the description of specific Amazon
FSx for Lustre or Amazon File Cache data repository associations, if one
or more AssociationIds values are provided in the request, or if filters
are used in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_describe_data_repository_tasks/"> describe_data_repository_tasks </a></td>
<td style="text-align: left;">Returns the description of specific Amazon
FSx for Lustre or Amazon File Cache data repository tasks, if one or
more TaskIds values are provided in the request, or if filters are used
in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_describe_file_caches/"> describe_file_caches </a></td>
<td style="text-align: left;">Returns the description of a specific
Amazon File Cache resource, if a FileCacheIds value is provided for that
cache</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_describe_file_system_aliases/"> describe_file_system_aliases </a></td>
<td style="text-align: left;">Returns the DNS aliases that are
associated with the specified Amazon FSx for Windows File Server file
system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_describe_file_systems/"> describe_file_systems </a></td>
<td style="text-align: left;">Returns the description of specific Amazon
FSx file systems, if a FileSystemIds value is provided for that file
system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_describe_snapshots/"> describe_snapshots </a></td>
<td style="text-align: left;">Returns the description of specific Amazon
FSx for OpenZFS snapshots, if a SnapshotIds value is provided</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_describe_storage_virtual_machines/"> describe_storage_virtual_machines </a></td>
<td style="text-align: left;">Describes one or more Amazon FSx for
NetApp ONTAP storage virtual machines (SVMs)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_describe_volumes/"> describe_volumes </a></td>
<td style="text-align: left;">Describes one or more Amazon FSx for
NetApp ONTAP or Amazon FSx for OpenZFS volumes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_disassociate_file_system_aliases/"> disassociate_file_system_aliases </a></td>
<td style="text-align: left;">Use this action to disassociate, or
remove, one or more Domain Name Service (DNS) aliases from an Amazon FSx
for Windows File Server file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists tags for Amazon FSx resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_release_file_system_nfs_v3_locks/"> release_file_system_nfs_v3_locks </a></td>
<td style="text-align: left;">Releases the file system lock from an
Amazon FSx for OpenZFS file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_restore_volume_from_snapshot/"> restore_volume_from_snapshot </a></td>
<td style="text-align: left;">Returns an Amazon FSx for OpenZFS volume
to the state saved by the specified snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags an Amazon FSx resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">This action removes a tag from an Amazon
FSx resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_update_data_repository_association/"> update_data_repository_association </a></td>
<td style="text-align: left;">Updates the configuration of an existing
data repository association on an Amazon FSx for Lustre file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_update_file_cache/"> update_file_cache </a></td>
<td style="text-align: left;">Updates the configuration of an existing
Amazon File Cache resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_update_file_system/"> update_file_system </a></td>
<td style="text-align: left;">Use this operation to update the
configuration of an existing Amazon FSx file system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_update_snapshot/"> update_snapshot </a></td>
<td style="text-align: left;">Updates the name of an Amazon FSx for
OpenZFS snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fsx_update_storage_virtual_machine/"> update_storage_virtual_machine </a></td>
<td style="text-align: left;">Updates an Amazon FSx for ONTAP storage
virtual machine (SVM)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fsx_update_volume/"> update_volume </a></td>
<td style="text-align: left;">Updates the configuration of an Amazon FSx
for NetApp ONTAP or Amazon FSx for OpenZFS volume</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- fsx()
    # This operation copies an Amazon FSx backup.
    svc$copy_backup(
      SourceBackupId = "backup-03e3c82e0183b7b6b",
      SourceRegion = "us-east-2"
    )

    ## End(Not run)
