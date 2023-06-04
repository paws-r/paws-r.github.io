<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_start_maintenance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Manually starts server maintenance

### Description

Manually starts server maintenance. This command can be useful if an
earlier maintenance attempt failed, and the underlying cause of
maintenance failure has been resolved. The server is in an
`UNDER_MAINTENANCE` state while maintenance is in progress.

Maintenance can only be started on servers in `HEALTHY` and `UNHEALTHY`
states. Otherwise, an `InvalidStateException` is thrown. A
`ResourceNotFoundException` is thrown when the server does not exist. A
`ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_start_maintenance(ServerName, EngineAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_start_maintenance_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server on which to run
maintenance.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_start_maintenance_:_EngineAttributes">EngineAttributes</code></td>
<td><p>Engine attributes that are specific to the server on which you
want to run maintenance.</p>
<p><strong>Attributes accepted in a StartMaintenance request for
Chef</strong></p>
<ul>
<li><p><code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is
eligible for upgrade to Chef Automate 2, add this engine attribute to a
<code>start_maintenance</code> request and set the value to
<code>true</code> to upgrade the server to Chef Automate 2. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html">Upgrade
an AWS OpsWorks for Chef Automate Server to Chef Automate
2</a>.</p></li>
</ul></td>
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

    svc$start_maintenance(
      ServerName = "string",
      EngineAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
