<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_describe_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes backups

### Description

Describes backups. The results are ordered by time, with newest backups
first. If you do not specify a BackupId or ServerName, the command
returns all backups.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the backup does not exist.
A `ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_describe_backups(BackupId, ServerName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_describe_backups_:_BackupId">BackupId</code></td>
<td><p>Describes a single backup.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_describe_backups_:_ServerName">ServerName</code></td>
<td><p>Returns backups for the server with the specified
ServerName.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_describe_backups_:_NextToken">NextToken</code></td>
<td><p>This is not currently implemented for
<code>describe_backups</code> requests.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_describe_backups_:_MaxResults">MaxResults</code></td>
<td><p>This is not currently implemented for
<code>describe_backups</code> requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backups = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_backups(
      BackupId = "string",
      ServerName = "string",
      NextToken = "string",
      MaxResults = 123
    )
