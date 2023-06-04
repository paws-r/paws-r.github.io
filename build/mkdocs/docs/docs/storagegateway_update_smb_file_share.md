<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_smb_file_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a Server Message Block (SMB) file share

### Description

Updates a Server Message Block (SMB) file share. This operation is only
supported for S3 File Gateways.

To leave a file share field unchanged, set the corresponding input field
to null.

File gateways require Security Token Service (Amazon Web Services STS)
to be activated to enable you to create a file share. Make sure that
Amazon Web Services STS is activated in the Amazon Web Services Region
you are creating your file gateway in. If Amazon Web Services STS is not
activated in this Amazon Web Services Region, activate it. For
information about how to activate Amazon Web Services STS, see
[Activating and deactivating Amazon Web Services STS in an Amazon Web
Services
Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the *Identity and Access Management User Guide*.

File gateways don't support creating hard or symbolic links on a file
share.

### Usage

    storagegateway_update_smb_file_share(FileShareARN, KMSEncrypted, KMSKey,
      DefaultStorageClass, ObjectACL, ReadOnly, GuessMIMETypeEnabled,
      RequesterPays, SMBACLEnabled, AccessBasedEnumeration, AdminUserList,
      ValidUserList, InvalidUserList, AuditDestinationARN, CaseSensitivity,
      FileShareName, CacheAttributes, NotificationPolicy, OplocksEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_FileShareARN">FileShareARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SMB file share
that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_DefaultStorageClass">DefaultStorageClass</code></td>
<td><p>The default storage class for objects put into an Amazon S3
bucket by the S3 File Gateway. The default value is
<code>S3_STANDARD</code>. Optional.</p>
<p>Valid Values: <code>S3_STANDARD</code> |
<code>S3_INTELLIGENT_TIERING</code> | <code>S3_STANDARD_IA</code> |
<code>S3_ONEZONE_IA</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_ObjectACL">ObjectACL</code></td>
<td><p>A value that sets the access control list (ACL) permission for
objects in the S3 bucket that a S3 File Gateway puts objects into. The
default value is <code>private</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_ReadOnly">ReadOnly</code></td>
<td><p>A value that sets the write status of a file share. Set this
value to <code>true</code> to set write status to read-only, otherwise
set to <code>false</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_GuessMIMETypeEnabled">GuessMIMETypeEnabled</code></td>
<td><p>A value that enables guessing of the MIME type for uploaded
objects based on file extensions. Set this value to <code>true</code> to
enable MIME type guessing, otherwise set to <code>false</code>. The
default value is <code>true</code>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_RequesterPays">RequesterPays</code></td>
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
id="storagegateway_update_smb_file_share_:_SMBACLEnabled">SMBACLEnabled</code></td>
<td><p>Set this value to <code>true</code> to enable access control list
(ACL) on the SMB file share. Set it to <code>false</code> to map file
and directory permissions to the POSIX permissions.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/storagegateway/index.html">Using
Microsoft Windows ACLs to control access to an SMB file share</a> in the
<em>Storage Gateway User Guide</em>.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_AccessBasedEnumeration">AccessBasedEnumeration</code></td>
<td><p>The files and folders on this share will only be visible to users
with read access.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_AdminUserList">AdminUserList</code></td>
<td><p>A list of users or groups in the Active Directory that have
administrator rights to the file share. A group must be prefixed with
the @ character. Acceptable formats include: <code
style="white-space: pre;">⁠DOMAIN\\User1⁠</code>, <code>user1</code>,
<code style="white-space: pre;">⁠@group1⁠</code>, and <code
style="white-space: pre;">⁠@DOMAIN\\group1⁠</code>. Can only be set if
Authentication is set to <code>ActiveDirectory</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_ValidUserList">ValidUserList</code></td>
<td><p>A list of users or groups in the Active Directory that are
allowed to access the file share. A group must be prefixed with the @
character. Acceptable formats include: <code
style="white-space: pre;">⁠DOMAIN\\User1⁠</code>, <code>user1</code>,
<code style="white-space: pre;">⁠@group1⁠</code>, and <code
style="white-space: pre;">⁠@DOMAIN\\group1⁠</code>. Can only be set if
Authentication is set to <code>ActiveDirectory</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_InvalidUserList">InvalidUserList</code></td>
<td><p>A list of users or groups in the Active Directory that are not
allowed to access the file share. A group must be prefixed with the @
character. Acceptable formats include: <code
style="white-space: pre;">⁠DOMAIN\\User1⁠</code>, <code>user1</code>,
<code style="white-space: pre;">⁠@group1⁠</code>, and <code
style="white-space: pre;">⁠@DOMAIN\\group1⁠</code>. Can only be set if
Authentication is set to <code>ActiveDirectory</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_AuditDestinationARN">AuditDestinationARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the storage used for audit
logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_CaseSensitivity">CaseSensitivity</code></td>
<td><p>The case of an object name in an Amazon S3 bucket. For
<code>ClientSpecified</code>, the client determines the case
sensitivity. For <code>CaseSensitive</code>, the gateway determines the
case sensitivity. The default value is
<code>ClientSpecified</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_FileShareName">FileShareName</code></td>
<td><p>The name of the file share. Optional.</p>
<p><code>FileShareName</code> must be set if an S3 prefix name is set in
<code>LocationARN</code>, or if an access point or access point alias is
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_:_CacheAttributes">CacheAttributes</code></td>
<td><p>Specifies refresh cache information for the file share.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_:_NotificationPolicy">NotificationPolicy</code></td>
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
id="storagegateway_update_smb_file_share_:_OplocksEnabled">OplocksEnabled</code></td>
<td><p>Specifies whether opportunistic locking is enabled for the SMB
file share.</p>
<p>Enabling opportunistic locking on case-sensitive shares is not
recommended for workloads that involve access to files with the same
name in different case.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileShareARN = "string"
    )

### Request syntax

    svc$update_smb_file_share(
      FileShareARN = "string",
      KMSEncrypted = TRUE|FALSE,
      KMSKey = "string",
      DefaultStorageClass = "string",
      ObjectACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control"|"aws-exec-read",
      ReadOnly = TRUE|FALSE,
      GuessMIMETypeEnabled = TRUE|FALSE,
      RequesterPays = TRUE|FALSE,
      SMBACLEnabled = TRUE|FALSE,
      AccessBasedEnumeration = TRUE|FALSE,
      AdminUserList = list(
        "string"
      ),
      ValidUserList = list(
        "string"
      ),
      InvalidUserList = list(
        "string"
      ),
      AuditDestinationARN = "string",
      CaseSensitivity = "ClientSpecified"|"CaseSensitive",
      FileShareName = "string",
      CacheAttributes = list(
        CacheStaleTimeoutInSeconds = 123
      ),
      NotificationPolicy = "string",
      OplocksEnabled = TRUE|FALSE
    )
