<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_create_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application-level backup of a server

### Description

Creates an application-level backup of a server. While the server is in
the `BACKING_UP` state, the server cannot be changed, and no additional
backup can be created.

Backups can be created for servers in `RUNNING`, `HEALTHY`, and
`UNHEALTHY` states. By default, you can create a maximum of 50 manual
backups.

This operation is asynchronous.

A `LimitExceededException` is thrown when the maximum number of manual
backups is reached. An `InvalidStateException` is thrown when the server
is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A
`ResourceNotFoundException` is thrown when the server is not found. A
`ValidationException` is thrown when parameters of the request are not
valid.

### Usage

    opsworkscm_create_backup(ServerName, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_create_backup_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server that you want to back
up.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_backup_:_Description">Description</code></td>
<td><p>A user-defined description of the backup.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworkscm_create_backup_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values to attach to an AWS
OpsWorks-CM server backup.</p>
<ul>
<li><p>The key cannot be empty.</p></li>
<li><p>The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>The value can be a maximum 255 characters, and contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>Leading and trailing white spaces are trimmed from both the key
and value.</p></li>
<li><p>A maximum of 50 user-applied tags is allowed for tag-supported
AWS OpsWorks-CM resources.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backup = list(
        BackupArn = "string",
        BackupId = "string",
        BackupType = "AUTOMATED"|"MANUAL",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Engine = "string",
        EngineModel = "string",
        EngineVersion = "string",
        InstanceProfileArn = "string",
        InstanceType = "string",
        KeyPair = "string",
        PreferredBackupWindow = "string",
        PreferredMaintenanceWindow = "string",
        S3DataSize = 123,
        S3DataUrl = "string",
        S3LogUrl = "string",
        SecurityGroupIds = list(
          "string"
        ),
        ServerName = "string",
        ServiceRoleArn = "string",
        Status = "IN_PROGRESS"|"OK"|"FAILED"|"DELETING",
        StatusDescription = "string",
        SubnetIds = list(
          "string"
        ),
        ToolsVersion = "string",
        UserArn = "string"
      )
    )

### Request syntax

    svc$create_backup(
      ServerName = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
