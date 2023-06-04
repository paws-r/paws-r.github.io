<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_smb_file_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a description for one or more Server Message Block (SMB) file shares from a S3 File Gateway

### Description

Gets a description for one or more Server Message Block (SMB) file
shares from a S3 File Gateway. This operation is only supported for S3
File Gateways.

### Usage

    storagegateway_describe_smb_file_shares(FileShareARNList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_smb_file_shares_:_FileShareARNList">FileShareARNList</code></td>
<td><p>[required] An array containing the Amazon Resource Name (ARN) of
each file share to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SMBFileShareInfoList = list(
        list(
          FileShareARN = "string",
          FileShareId = "string",
          FileShareStatus = "string",
          GatewayARN = "string",
          KMSEncrypted = TRUE|FALSE,
          KMSKey = "string",
          Path = "string",
          Role = "string",
          LocationARN = "string",
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
          Authentication = "string",
          CaseSensitivity = "ClientSpecified"|"CaseSensitive",
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
          OplocksEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_smb_file_shares(
      FileShareARNList = list(
        "string"
      )
    )
