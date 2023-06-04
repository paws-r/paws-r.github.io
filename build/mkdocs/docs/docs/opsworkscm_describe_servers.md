<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_describe_servers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all configuration management servers that are identified with your account

### Description

Lists all configuration management servers that are identified with your
account. Only the stored results from Amazon DynamoDB are returned. AWS
OpsWorks CM does not query other services.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the server does not exist.
A `ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_describe_servers(ServerName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_describe_servers_:_ServerName">ServerName</code></td>
<td><p>Describes the server with the specified ServerName.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_describe_servers_:_NextToken">NextToken</code></td>
<td><p>This is not currently implemented for
<code>describe_servers</code> requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_describe_servers_:_MaxResults">MaxResults</code></td>
<td><p>This is not currently implemented for
<code>describe_servers</code> requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Servers = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_servers(
      ServerName = "string",
      NextToken = "string",
      MaxResults = 123
    )
