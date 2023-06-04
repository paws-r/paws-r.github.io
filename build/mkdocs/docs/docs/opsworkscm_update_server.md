<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_update_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates settings for a server

### Description

Updates settings for a server.

This operation is synchronous.

### Usage

    opsworkscm_update_server(DisableAutomatedBackup, BackupRetentionCount,
      ServerName, PreferredMaintenanceWindow, PreferredBackupWindow)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_update_server_:_DisableAutomatedBackup">DisableAutomatedBackup</code></td>
<td><p>Setting DisableAutomatedBackup to <code>true</code> disables
automated or scheduled backups. Automated backups are enabled by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_update_server_:_BackupRetentionCount">BackupRetentionCount</code></td>
<td><p>Sets the number of automated backups that you want to
keep.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_update_server_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server to update.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_update_server_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_update_server_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Server = list(
        AssociatePublicIpAddress = TRUE|FALSE,
        BackupRetentionCount = 123,
        ServerName = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        CloudFormationStackArn = "string",
        CustomDomain = "string",
        DisableAutomatedBackup = TRUE|FALSE,
        Endpoint = "string",
        Engine = "string",
        EngineModel = "string",
        EngineAttributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        EngineVersion = "string",
        InstanceProfileArn = "string",
        InstanceType = "string",
        KeyPair = "string",
        MaintenanceStatus = "SUCCESS"|"FAILED",
        PreferredMaintenanceWindow = "string",
        PreferredBackupWindow = "string",
        SecurityGroupIds = list(
          "string"
        ),
        ServiceRoleArn = "string",
        Status = "BACKING_UP"|"CONNECTION_LOST"|"CREATING"|"DELETING"|"MODIFYING"|"FAILED"|"HEALTHY"|"RUNNING"|"RESTORING"|"SETUP"|"UNDER_MAINTENANCE"|"UNHEALTHY"|"TERMINATED",
        StatusReason = "string",
        SubnetIds = list(
          "string"
        ),
        ServerArn = "string"
      )
    )

### Request syntax

    svc$update_server(
      DisableAutomatedBackup = TRUE|FALSE,
      BackupRetentionCount = 123,
      ServerName = "string",
      PreferredMaintenanceWindow = "string",
      PreferredBackupWindow = "string"
    )
