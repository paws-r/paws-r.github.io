<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_nfs_file_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a Network File System (NFS) file share

### Description

Updates a Network File System (NFS) file share. This operation is only
supported in S3 File Gateways.

To leave a file share field unchanged, set the corresponding input field
to null.

Updates the following file share settings:

-   Default storage class for your S3 bucket

-   Metadata defaults for your S3 bucket

-   Allowed NFS clients for your file share

-   Squash settings

-   Write status of your file share

### Usage

    storagegateway_update_nfs_file_share(FileShareARN, KMSEncrypted, KMSKey,
      NFSFileShareDefaults, DefaultStorageClass, ObjectACL, ClientList,
      Squash, ReadOnly, GuessMIMETypeEnabled, RequesterPays, FileShareName,
      CacheAttributes, NotificationPolicy, AuditDestinationARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_FileShareARN">FileShareARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the file share to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_NFSFileShareDefaults">NFSFileShareDefaults</code></td>
<td><p>The default values for the file share. Optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_DefaultStorageClass">DefaultStorageClass</code></td>
<td><p>The default storage class for objects put into an Amazon S3
bucket by the S3 File Gateway. The default value is
<code>S3_STANDARD</code>. Optional.</p>
<p>Valid Values: <code>S3_STANDARD</code> |
<code>S3_INTELLIGENT_TIERING</code> | <code>S3_STANDARD_IA</code> |
<code>S3_ONEZONE_IA</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_ObjectACL">ObjectACL</code></td>
<td><p>A value that sets the access control list (ACL) permission for
objects in the S3 bucket that a S3 File Gateway puts objects into. The
default value is <code>private</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_ClientList">ClientList</code></td>
<td><p>The list of clients that are allowed to access the S3 File
Gateway. The list must contain either valid IP addresses or valid CIDR
blocks.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_Squash">Squash</code></td>
<td><p>The user mapped to anonymous user.</p>
<p>Valid values are the following:</p>
<ul>
<li><p><code>RootSquash</code>: Only root is mapped to anonymous
user.</p></li>
<li><p><code>NoSquash</code>: No one is mapped to anonymous
user.</p></li>
<li><p><code>AllSquash</code>: Everyone is mapped to anonymous
user.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_ReadOnly">ReadOnly</code></td>
<td><p>A value that sets the write status of a file share. Set this
value to <code>true</code> to set the write status to read-only,
otherwise set to <code>false</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_GuessMIMETypeEnabled">GuessMIMETypeEnabled</code></td>
<td><p>A value that enables guessing of the MIME type for uploaded
objects based on file extensions. Set this value to <code>true</code> to
enable MIME type guessing, otherwise set to <code>false</code>. The
default value is <code>true</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_RequesterPays">RequesterPays</code></td>
<td><p>A value that sets who pays the cost of the request and the cost
associated with data download from the S3 bucket. If this value is set
to <code>true</code>, the requester pays the costs; otherwise, the S3
bucket owner pays. However, the S3 bucket owner always pays the cost of
storing data.</p>
<p><code>RequesterPays</code> is a configuration for the S3 bucket that
backs the file share, so make sure that the configuration on the file
share is the same as the S3 bucket configuration.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_FileShareName">FileShareName</code></td>
<td><p>The name of the file share. Optional.</p>
<p><code>FileShareName</code> must be set if an S3 prefix name is set in
<code>LocationARN</code>, or if an access point or access point alias is
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_CacheAttributes">CacheAttributes</code></td>
<td><p>Specifies refresh cache information for the file share.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_nfs_file_share_:_NotificationPolicy">NotificationPolicy</code></td>
<td><p>The notification policy of the file share.
<code>SettlingTimeInSeconds</code> controls the number of seconds to
wait after the last point in time a client wrote to a file before
generating an <code>ObjectUploaded</code> notification. Because clients
can make many small writes to files, it's best to set this parameter for
as long as possible to avoid generating multiple notifications for the
same file in a small time period.</p>
<p><code>SettlingTimeInSeconds</code> has no effect on the timing of the
object uploading to Amazon S3, only the timing of the notification.</p>
<p>The following example sets <code>NotificationPolicy</code> on with
<code>SettlingTimeInSeconds</code> set to 60.</p>
<p><code
style="white-space: pre;">⁠{\"Upload\": {\"SettlingTimeInSeconds\": 60}}⁠</code></p>
<p>The following example sets <code>NotificationPolicy</code> off.</p>
<p><code>{}</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_nfs_file_share_:_AuditDestinationARN">AuditDestinationARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the storage used for audit
logs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileShareARN = "string"
    )

### Request syntax

    svc$update_nfs_file_share(
      FileShareARN = "string",
      KMSEncrypted = TRUE|FALSE,
      KMSKey = "string",
      NFSFileShareDefaults = list(
        FileMode = "string",
        DirectoryMode = "string",
        GroupId = 123,
        OwnerId = 123
      ),
      DefaultStorageClass = "string",
      ObjectACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control"|"aws-exec-read",
      ClientList = list(
        "string"
      ),
      Squash = "string",
      ReadOnly = TRUE|FALSE,
      GuessMIMETypeEnabled = TRUE|FALSE,
      RequesterPays = TRUE|FALSE,
      FileShareName = "string",
      CacheAttributes = list(
        CacheStaleTimeoutInSeconds = 123
      ),
      NotificationPolicy = "string",
      AuditDestinationARN = "string"
    )
