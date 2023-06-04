<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_update_server_engine_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates engine-specific attributes on a specified server

### Description

Updates engine-specific attributes on a specified server. The server
enters the `MODIFYING` state when this operation is in progress. Only
one update can occur at a time. You can use this command to reset a Chef
server's public key (`CHEF_PIVOTAL_KEY`) or a Puppet server's admin
password (`PUPPET_ADMIN_PASSWORD`).

This operation is asynchronous.

This operation can only be called for servers in `HEALTHY` or
`UNHEALTHY` states. Otherwise, an `InvalidStateException` is raised. A
`ResourceNotFoundException` is thrown when the server does not exist. A
`ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_update_server_engine_attributes(ServerName, AttributeName,
      AttributeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_update_server_engine_attributes_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server to update.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_update_server_engine_attributes_:_AttributeName">AttributeName</code></td>
<td><p>[required] The name of the engine attribute to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_update_server_engine_attributes_:_AttributeValue">AttributeValue</code></td>
<td><p>The value to set for the attribute.</p></td>
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

    svc$update_server_engine_attributes(
      ServerName = "string",
      AttributeName = "string",
      AttributeValue = "string"
    )
