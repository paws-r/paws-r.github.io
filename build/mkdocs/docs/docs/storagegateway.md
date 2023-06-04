<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Storage Gateway

### Description

Storage Gateway Service

Storage Gateway is the service that connects an on-premises software
appliance with cloud-based storage to provide seamless and secure
integration between an organization's on-premises IT environment and the
Amazon Web Services storage infrastructure. The service enables you to
securely upload data to the Amazon Web Services Cloud for cost effective
backup and rapid disaster recovery.

Use the following links to get started using the *Storage Gateway
Service API Reference*:

-   [Storage Gateway required request
    headers](https://docs.aws.amazon.com/storagegateway/index.html#AWSStorageGatewayHTTPRequestsHeaders):
    Describes the required headers that you must send with every POST
    request to Storage Gateway.

-   [Signing
    requests](https://docs.aws.amazon.com/storagegateway/index.html#AWSStorageGatewaySigningRequests):
    Storage Gateway requires that you authenticate every request you
    send; this topic describes how sign such a request.

-   [Error
    responses](https://docs.aws.amazon.com/storagegateway/index.html#APIErrorResponses):
    Provides reference information about Storage Gateway errors.

-   [Operations in Storage
    Gateway](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html):
    Contains detailed descriptions of all Storage Gateway operations,
    their request parameters, response elements, possible errors, and
    examples of requests and responses.

-   [Storage Gateway endpoints and
    quotas](https://docs.aws.amazon.com/general/latest/gr/sg.html):
    Provides a list of each Amazon Web Services Region and the endpoints
    available for use with Storage Gateway.

Storage Gateway resource IDs are in uppercase. When you use these
resource IDs with the Amazon EC2 API, EC2 expects resource IDs in
lowercase. You must change your resource ID to lowercase to use it with
the EC2 API. For example, in Storage Gateway the ID for a volume might
be `vol-AA22BB012345DAF670`. When you use this ID with the EC2 API, you
must change it to `vol-aa22bb012345daf670`. Otherwise, the EC2 API might
not behave as expected.

IDs for Storage Gateway volumes and Amazon EBS snapshots created from
gateway volumes are changing to a longer format. Starting in December
2016, all new volumes and snapshots will be created with a 17-character
string. Starting in April 2016, you will be able to use these longer IDs
so you can test your systems with the new format. For more information,
see [Longer EC2 and EBS resource
IDs](https://aws.amazon.com/ec2/faqs/#longer-ids).

For example, a volume Amazon Resource Name (ARN) with the longer volume
ID format looks like the following:

`⁠arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG⁠`.

A snapshot ID with the longer ID format looks like the following:
`⁠snap-78e226633445566ee⁠`.

For more information, see Announcement: Heads-up – Longer Storage
Gateway volume and snapshot IDs coming in 2016.

### Usage

    storagegateway(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="storagegateway_:_config">config</code></td>
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

    svc <- storagegateway(
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
<td style="text-align: left;"><a href="../storagegateway_activate_gateway/"> activate_gateway </a></td>
<td style="text-align: left;">Activates the gateway you previously
deployed on your host</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_add_cache/"> add_cache </a></td>
<td style="text-align: left;">Configures one or more gateway local disks
as cache for a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds one or more tags to the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_add_upload_buffer/"> add_upload_buffer </a></td>
<td style="text-align: left;">Configures one or more gateway local disks
as upload buffer for a specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_add_working_storage/"> add_working_storage </a></td>
<td style="text-align: left;">Configures one or more gateway local disks
as working storage for a gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_assign_tape_pool/"> assign_tape_pool </a></td>
<td style="text-align: left;">Assigns a tape to a tape pool for
archiving</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_associate_file_system/"> associate_file_system </a></td>
<td style="text-align: left;">Associate an Amazon FSx file system with
the FSx File Gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_attach_volume/"> attach_volume </a></td>
<td style="text-align: left;">Connects a volume to an iSCSI connection
and then attaches the volume to the specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_cancel_archival/"> cancel_archival </a></td>
<td style="text-align: left;">Cancels archiving of a virtual tape to the
virtual tape shelf (VTS) after the archiving process is initiated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_cancel_retrieval/"> cancel_retrieval </a></td>
<td style="text-align: left;">Cancels retrieval of a virtual tape from
the virtual tape shelf (VTS) to a gateway after the retrieval process is
initiated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_create_cachedi_scsi_volume/"> create_cachedi_scsi_volume </a></td>
<td style="text-align: left;">Creates a cached volume on a specified
cached volume gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_create_nfs_file_share/"> create_nfs_file_share </a></td>
<td style="text-align: left;">Creates a Network File System (NFS) file
share on an existing S3 File Gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_create_smb_file_share/"> create_smb_file_share </a></td>
<td style="text-align: left;">Creates a Server Message Block (SMB) file
share on an existing S3 File Gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Initiates a snapshot of a volume</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../storagegateway_create_snapshot_from_volume_recovery_point/"> create_snapshot_from_volume_recovery_point </a></td>
<td style="text-align: left;">Initiates a snapshot of a gateway from a
volume recovery point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_create_storedi_scsi_volume/"> create_storedi_scsi_volume </a></td>
<td style="text-align: left;">Creates a volume on a specified
gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_create_tape_pool/"> create_tape_pool </a></td>
<td style="text-align: left;">Creates a new custom tape pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_create_tapes/"> create_tapes </a></td>
<td style="text-align: left;">Creates one or more virtual tapes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_create_tape_with_barcode/"> create_tape_with_barcode </a></td>
<td style="text-align: left;">Creates a virtual tape by using your own
barcode</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_delete_automatic_tape_creation_policy/"> delete_automatic_tape_creation_policy </a></td>
<td style="text-align: left;">Deletes the automatic tape creation policy
of a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_delete_bandwidth_rate_limit/"> delete_bandwidth_rate_limit </a></td>
<td style="text-align: left;">Deletes the bandwidth rate limits of a
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_delete_chap_credentials/"> delete_chap_credentials </a></td>
<td style="text-align: left;">Deletes Challenge-Handshake Authentication
Protocol (CHAP) credentials for a specified iSCSI target and initiator
pair</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_delete_file_share/"> delete_file_share </a></td>
<td style="text-align: left;">Deletes a file share from an S3 File
Gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_delete_gateway/"> delete_gateway </a></td>
<td style="text-align: left;">Deletes a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_delete_snapshot_schedule/"> delete_snapshot_schedule </a></td>
<td style="text-align: left;">Deletes a snapshot of a volume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_delete_tape/"> delete_tape </a></td>
<td style="text-align: left;">Deletes the specified virtual tape</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_delete_tape_archive/"> delete_tape_archive </a></td>
<td style="text-align: left;">Deletes the specified virtual tape from
the virtual tape shelf (VTS)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_delete_tape_pool/"> delete_tape_pool </a></td>
<td style="text-align: left;">Delete a custom tape pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_delete_volume/"> delete_volume </a></td>
<td style="text-align: left;">Deletes the specified storage volume that
you previously created using the CreateCachediSCSIVolume or
CreateStorediSCSIVolume API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_availability_monitor_test/"> describe_availability_monitor_test </a></td>
<td style="text-align: left;">Returns information about the most recent
high availability monitoring test that was performed on the host in a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_bandwidth_rate_limit/"> describe_bandwidth_rate_limit </a></td>
<td style="text-align: left;">Returns the bandwidth rate limits of a
gateway</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../storagegateway_describe_bandwidth_rate_limit_schedule/"> describe_bandwidth_rate_limit_schedule </a></td>
<td style="text-align: left;">Returns information about the bandwidth
rate limit schedule of a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_cache/"> describe_cache </a></td>
<td style="text-align: left;">Returns information about the cache of a
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_cachedi_scsi_volumes/"> describe_cachedi_scsi_volumes </a></td>
<td style="text-align: left;">Returns a description of the gateway
volumes specified in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_chap_credentials/"> describe_chap_credentials </a></td>
<td style="text-align: left;">Returns an array of Challenge-Handshake
Authentication Protocol (CHAP) credentials information for a specified
iSCSI target, one for each target-initiator pair</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_file_system_associations/"> describe_file_system_associations </a></td>
<td style="text-align: left;">Gets the file system association
information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_gateway_information/"> describe_gateway_information </a></td>
<td style="text-align: left;">Returns metadata about a gateway such as
its name, network interfaces, configured time zone, and the state
(whether the gateway is running or not)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_maintenance_start_time/"> describe_maintenance_start_time </a></td>
<td style="text-align: left;">Returns your gateway's weekly maintenance
start time including the day and time of the week</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_nfs_file_shares/"> describe_nfs_file_shares </a></td>
<td style="text-align: left;">Gets a description for one or more Network
File System (NFS) file shares from an S3 File Gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_smb_file_shares/"> describe_smb_file_shares </a></td>
<td style="text-align: left;">Gets a description for one or more Server
Message Block (SMB) file shares from a S3 File Gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_smb_settings/"> describe_smb_settings </a></td>
<td style="text-align: left;">Gets a description of a Server Message
Block (SMB) file share settings from a file gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_snapshot_schedule/"> describe_snapshot_schedule </a></td>
<td style="text-align: left;">Describes the snapshot schedule for the
specified gateway volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_storedi_scsi_volumes/"> describe_storedi_scsi_volumes </a></td>
<td style="text-align: left;">Returns the description of the gateway
volumes specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_tape_archives/"> describe_tape_archives </a></td>
<td style="text-align: left;">Returns a description of specified virtual
tapes in the virtual tape shelf (VTS)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_tape_recovery_points/"> describe_tape_recovery_points </a></td>
<td style="text-align: left;">Returns a list of virtual tape recovery
points that are available for the specified tape gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_tapes/"> describe_tapes </a></td>
<td style="text-align: left;">Returns a description of the specified
Amazon Resource Name (ARN) of virtual tapes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_upload_buffer/"> describe_upload_buffer </a></td>
<td style="text-align: left;">Returns information about the upload
buffer of a gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_describe_vtl_devices/"> describe_vtl_devices </a></td>
<td style="text-align: left;">Returns a description of virtual tape
library (VTL) devices for the specified tape gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_describe_working_storage/"> describe_working_storage </a></td>
<td style="text-align: left;">Returns information about the working
storage of a gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_detach_volume/"> detach_volume </a></td>
<td style="text-align: left;">Disconnects a volume from an iSCSI
connection and then detaches the volume from the specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_disable_gateway/"> disable_gateway </a></td>
<td style="text-align: left;">Disables a tape gateway when the gateway
is no longer functioning</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_disassociate_file_system/"> disassociate_file_system </a></td>
<td style="text-align: left;">Disassociates an Amazon FSx file system
from the specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_join_domain/"> join_domain </a></td>
<td style="text-align: left;">Adds a file gateway to an Active Directory
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_automatic_tape_creation_policies/"> list_automatic_tape_creation_policies </a></td>
<td style="text-align: left;">Lists the automatic tape creation policies
for a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_list_file_shares/"> list_file_shares </a></td>
<td style="text-align: left;">Gets a list of the file shares for a
specific S3 File Gateway, or the list of file shares that belong to the
calling user account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_file_system_associations/"> list_file_system_associations </a></td>
<td style="text-align: left;">Gets a list of
FileSystemAssociationSummary objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_list_gateways/"> list_gateways </a></td>
<td style="text-align: left;">Lists gateways owned by an Amazon Web
Services account in an Amazon Web Services Region specified in the
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_local_disks/"> list_local_disks </a></td>
<td style="text-align: left;">Returns a list of the gateway's local
disks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that have been added to the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_tape_pools/"> list_tape_pools </a></td>
<td style="text-align: left;">Lists custom tape pools</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_list_tapes/"> list_tapes </a></td>
<td style="text-align: left;">Lists virtual tapes in your virtual tape
library (VTL) and your virtual tape shelf (VTS)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_volume_initiators/"> list_volume_initiators </a></td>
<td style="text-align: left;">Lists iSCSI initiators that are connected
to a volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_list_volume_recovery_points/"> list_volume_recovery_points </a></td>
<td style="text-align: left;">Lists the recovery points for a specified
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_list_volumes/"> list_volumes </a></td>
<td style="text-align: left;">Lists the iSCSI stored volumes of a
gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_notify_when_uploaded/"> notify_when_uploaded </a></td>
<td style="text-align: left;">Sends you notification through CloudWatch
Events when all files written to your file share have been uploaded to
S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_refresh_cache/"> refresh_cache </a></td>
<td style="text-align: left;">Refreshes the cached inventory of objects
for the specified file share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_reset_cache/"> reset_cache </a></td>
<td style="text-align: left;">Resets all cache disks that have
encountered an error and makes the disks available for reconfiguration
as cache storage</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_retrieve_tape_archive/"> retrieve_tape_archive </a></td>
<td style="text-align: left;">Retrieves an archived virtual tape from
the virtual tape shelf (VTS) to a tape gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_retrieve_tape_recovery_point/"> retrieve_tape_recovery_point </a></td>
<td style="text-align: left;">Retrieves the recovery point for the
specified virtual tape</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_set_local_console_password/"> set_local_console_password </a></td>
<td style="text-align: left;">Sets the password for your VM local
console</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_set_smb_guest_password/"> set_smb_guest_password </a></td>
<td style="text-align: left;">Sets the password for the guest user
smbguest</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_shutdown_gateway/"> shutdown_gateway </a></td>
<td style="text-align: left;">Shuts down a gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_start_availability_monitor_test/"> start_availability_monitor_test </a></td>
<td style="text-align: left;">Start a test that verifies that the
specified gateway is configured for High Availability monitoring in your
host environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_start_gateway/"> start_gateway </a></td>
<td style="text-align: left;">Starts a gateway that you previously shut
down (see ShutdownGateway)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_automatic_tape_creation_policy/"> update_automatic_tape_creation_policy </a></td>
<td style="text-align: left;">Updates the automatic tape creation policy
of a gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_bandwidth_rate_limit/"> update_bandwidth_rate_limit </a></td>
<td style="text-align: left;">Updates the bandwidth rate limits of a
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_bandwidth_rate_limit_schedule/"> update_bandwidth_rate_limit_schedule </a></td>
<td style="text-align: left;">Updates the bandwidth rate limit schedule
for a specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_chap_credentials/"> update_chap_credentials </a></td>
<td style="text-align: left;">Updates the Challenge-Handshake
Authentication Protocol (CHAP) credentials for a specified iSCSI
target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_file_system_association/"> update_file_system_association </a></td>
<td style="text-align: left;">Updates a file system association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_gateway_information/"> update_gateway_information </a></td>
<td style="text-align: left;">Updates a gateway's metadata, which
includes the gateway's name and time zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_gateway_software_now/"> update_gateway_software_now </a></td>
<td style="text-align: left;">Updates the gateway virtual machine (VM)
software</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_maintenance_start_time/"> update_maintenance_start_time </a></td>
<td style="text-align: left;">Updates a gateway's weekly maintenance
start time information, including day and time of the week</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_nfs_file_share/"> update_nfs_file_share </a></td>
<td style="text-align: left;">Updates a Network File System (NFS) file
share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_smb_file_share/"> update_smb_file_share </a></td>
<td style="text-align: left;">Updates a Server Message Block (SMB) file
share</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_smb_file_share_visibility/"> update_smb_file_share_visibility </a></td>
<td style="text-align: left;">Controls whether the shares on an S3 File
Gateway are visible in a net view or browse list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_smb_local_groups/"> update_smb_local_groups </a></td>
<td style="text-align: left;">Updates the list of Active Directory users
and groups that have special permissions for SMB file shares on the
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_smb_security_strategy/"> update_smb_security_strategy </a></td>
<td style="text-align: left;">Updates the SMB security strategy on a
file gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../storagegateway_update_snapshot_schedule/"> update_snapshot_schedule </a></td>
<td style="text-align: left;">Updates a snapshot schedule configured for
a gateway volume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../storagegateway_update_vtl_device_type/"> update_vtl_device_type </a></td>
<td style="text-align: left;">Updates the type of medium changer in a
tape gateway</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- storagegateway()
    # Activates the gateway you previously deployed on your host.
    svc$activate_gateway(
      ActivationKey = "29AV1-3OFV9-VVIUB-NKT0I-LRO6V",
      GatewayName = "My_Gateway",
      GatewayRegion = "us-east-1",
      GatewayTimezone = "GMT-12:00",
      GatewayType = "STORED",
      MediumChangerType = "AWS-Gateway-VTL",
      TapeDriveType = "IBM-ULT3580-TD5"
    )

    ## End(Not run)
