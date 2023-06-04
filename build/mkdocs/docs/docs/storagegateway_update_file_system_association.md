<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_file_system_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a file system association

### Description

Updates a file system association. This operation is only supported in
the FSx File Gateways.

### Usage

    storagegateway_update_file_system_association(FileSystemAssociationARN,
      UserName, Password, AuditDestinationARN, CacheAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_file_system_association_:_FileSystemAssociationARN">FileSystemAssociationARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the file system
association that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_file_system_association_:_UserName">UserName</code></td>
<td><p>The user name of the user credential that has permission to
access the root share D$ of the Amazon FSx file system. The user account
must belong to the Amazon FSx delegated admin user group.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_file_system_association_:_Password">Password</code></td>
<td><p>The password of the user credential.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_file_system_association_:_AuditDestinationARN">AuditDestinationARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the storage used for the audit
logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_file_system_association_:_CacheAttributes">CacheAttributes</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemAssociationARN = "string"
    )

### Request syntax

    svc$update_file_system_association(
      FileSystemAssociationARN = "string",
      UserName = "string",
      Password = "string",
      AuditDestinationARN = "string",
      CacheAttributes = list(
        CacheStaleTimeoutInSeconds = 123
      )
    )
