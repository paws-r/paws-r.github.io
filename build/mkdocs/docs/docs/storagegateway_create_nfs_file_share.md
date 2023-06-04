<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_nfs_file_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Network File System (NFS) file share on an existing S3 File Gateway

### Description

Creates a Network File System (NFS) file share on an existing S3 File
Gateway. In Storage Gateway, a file share is a file system mount point
backed by Amazon S3 cloud storage. Storage Gateway exposes file shares
using an NFS interface. This operation is only supported for S3 File
Gateways.

S3 File gateway requires Security Token Service (Amazon Web Services
STS) to be activated to enable you to create a file share. Make sure
Amazon Web Services STS is activated in the Amazon Web Services Region
you are creating your S3 File Gateway in. If Amazon Web Services STS is
not activated in the Amazon Web Services Region, activate it. For
information about how to activate Amazon Web Services STS, see
[Activating and deactivating Amazon Web Services STS in an Amazon Web
Services
Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the *Identity and Access Management User Guide*.

S3 File Gateways do not support creating hard or symbolic links on a
file share.

### Usage

    storagegateway_create_nfs_file_share(ClientToken, NFSFileShareDefaults,
      GatewayARN, KMSEncrypted, KMSKey, Role, LocationARN,
      DefaultStorageClass, ObjectACL, ClientList, Squash, ReadOnly,
      GuessMIMETypeEnabled, RequesterPays, Tags, FileShareName,
      CacheAttributes, NotificationPolicy, VPCEndpointDNSName, BucketRegion,
      AuditDestinationARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique string value that you supply that is used by
S3 File Gateway to ensure idempotent file share creation.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_NFSFileShareDefaults">NFSFileShareDefaults</code></td>
<td><p>File share default values. Optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 File Gateway
on which you want to create a file share.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_Role">Role</code></td>
<td><p>[required] The ARN of the Identity and Access Management (IAM)
role that an S3 File Gateway assumes when it accesses the underlying
storage.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_LocationARN">LocationARN</code></td>
<td><p>[required] A custom ARN for the backend storage used for storing
data for file shares. It includes a resource ARN with an optional prefix
concatenation. The prefix must end with a forward slash (/).</p>
<p>You can specify LocationARN as a bucket ARN, access point ARN or
access point alias, as shown in the following examples.</p>
<p>Bucket ARN:</p>
<p><code
style="white-space: pre;">⁠arn:aws:s3:::my-bucket/prefix/⁠</code></p>
<p>Access point ARN:</p>
<p><code
style="white-space: pre;">⁠arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/⁠</code></p>
<p>If you specify an access point, the bucket policy must be configured
to delegate access control to the access point. For information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating
access control to access points</a> in the <em>Amazon S3 User
Guide</em>.</p>
<p>Access point alias:</p>
<p><code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_DefaultStorageClass">DefaultStorageClass</code></td>
<td><p>The default storage class for objects put into an Amazon S3
bucket by the S3 File Gateway. The default value is
<code>S3_STANDARD</code>. Optional.</p>
<p>Valid Values: <code>S3_STANDARD</code> |
<code>S3_INTELLIGENT_TIERING</code> | <code>S3_STANDARD_IA</code> |
<code>S3_ONEZONE_IA</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_ObjectACL">ObjectACL</code></td>
<td><p>A value that sets the access control list (ACL) permission for
objects in the S3 bucket that a S3 File Gateway puts objects into. The
default value is <code>private</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_ClientList">ClientList</code></td>
<td><p>The list of clients that are allowed to access the S3 File
Gateway. The list must contain either valid IP addresses or valid CIDR
blocks.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_Squash">Squash</code></td>
<td><p>A value that maps a user to anonymous user.</p>
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
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_ReadOnly">ReadOnly</code></td>
<td><p>A value that sets the write status of a file share. Set this
value to <code>true</code> to set the write status to read-only,
otherwise set to <code>false</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_GuessMIMETypeEnabled">GuessMIMETypeEnabled</code></td>
<td><p>A value that enables guessing of the MIME type for uploaded
objects based on file extensions. Set this value to <code>true</code> to
enable MIME type guessing, otherwise set to <code>false</code>. The
default value is <code>true</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_RequesterPays">RequesterPays</code></td>
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
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to the NFS file
share. Each tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: + -
= . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_FileShareName">FileShareName</code></td>
<td><p>The name of the file share. Optional.</p>
<p><code>FileShareName</code> must be set if an S3 prefix name is set in
<code>LocationARN</code>, or if an access point or access point alias is
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_CacheAttributes">CacheAttributes</code></td>
<td><p>Specifies refresh cache information for the file share.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_NotificationPolicy">NotificationPolicy</code></td>
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
id="storagegateway_create_nfs_file_share_:_VPCEndpointDNSName">VPCEndpointDNSName</code></td>
<td><p>Specifies the DNS name for the VPC endpoint that the NFS file
share uses to connect to Amazon S3.</p>
<p>This parameter is required for NFS file shares that connect to Amazon
S3 through a VPC endpoint, a VPC access point, or an access point alias
that points to a VPC access point.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_nfs_file_share_:_BucketRegion">BucketRegion</code></td>
<td><p>Specifies the Region of the S3 bucket where the NFS file share
stores files.</p>
<p>This parameter is required for NFS file shares that connect to Amazon
S3 through a VPC endpoint, a VPC access point, or an access point alias
that points to a VPC access point.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_nfs_file_share_:_AuditDestinationARN">AuditDestinationARN</code></td>
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

    svc$create_nfs_file_share(
      ClientToken = "string",
      NFSFileShareDefaults = list(
        FileMode = "string",
        DirectoryMode = "string",
        GroupId = 123,
        OwnerId = 123
      ),
      GatewayARN = "string",
      KMSEncrypted = TRUE|FALSE,
      KMSKey = "string",
      Role = "string",
      LocationARN = "string",
      DefaultStorageClass = "string",
      ObjectACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control"|"aws-exec-read",
      ClientList = list(
        "string"
      ),
      Squash = "string",
      ReadOnly = TRUE|FALSE,
      GuessMIMETypeEnabled = TRUE|FALSE,
      RequesterPays = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      FileShareName = "string",
      CacheAttributes = list(
        CacheStaleTimeoutInSeconds = 123
      ),
      NotificationPolicy = "string",
      VPCEndpointDNSName = "string",
      BucketRegion = "string",
      AuditDestinationARN = "string"
    )
