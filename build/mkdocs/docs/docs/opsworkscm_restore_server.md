<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_restore_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a backup to a server that is in a CONNECTION\_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state

### Description

Restores a backup to a server that is in a `CONNECTION_LOST`, `HEALTHY`,
`RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run
RestoreServer, the server's EC2 instance is deleted, and a new EC2
instance is configured. RestoreServer maintains the existing server
endpoint, so configuration management of the server's client devices
(nodes) should continue to work.

Restoring from a backup is performed by creating a new EC2 instance. If
restoration is successful, and the server is in a `HEALTHY` state, AWS
OpsWorks CM switches traffic over to the new instance. After restoration
is finished, the old EC2 instance is maintained in a `Running` or
`Stopped` state, but is eventually terminated.

This operation is asynchronous.

An `InvalidStateException` is thrown when the server is not in a valid
state. A `ResourceNotFoundException` is thrown when the server does not
exist. A `ValidationException` is raised when parameters of the request
are not valid.

### Usage

    opsworkscm_restore_server(BackupId, ServerName, InstanceType, KeyPair)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworkscm_restore_server_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup that you want to use to restore a
server.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_restore_server_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server that you want to
restore.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_restore_server_:_InstanceType">InstanceType</code></td>
<td><p>The type of instance to restore. Valid values must be specified
in the following format: <code
style="white-space: pre;">⁠^([cm][34]|t2).*⁠</code> For example,
<code>m5.large</code>. Valid values are <code>m5.large</code>,
<code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not
specify this parameter, RestoreServer uses the instance type from the
specified backup.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_restore_server_:_KeyPair">KeyPair</code></td>
<td><p>The name of the key pair to set on the new EC2 instance. This can
be helpful if the administrator no longer has the SSH key.</p></td>
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

    svc$restore_server(
      BackupId = "string",
      ServerName = "string",
      InstanceType = "string",
      KeyPair = "string"
    )
