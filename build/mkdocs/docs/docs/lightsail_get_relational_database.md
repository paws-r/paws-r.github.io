<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific database in Amazon Lightsail

### Description

Returns information about a specific database in Amazon Lightsail.

### Usage

    lightsail_get_relational_database(relationalDatabaseName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of the database that you are looking
up.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      relationalDatabase = list(
        name = "string",
        arn = "string",
        supportCode = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        location = list(
          availabilityZone = "string",
          regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
        ),
        resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        relationalDatabaseBlueprintId = "string",
        relationalDatabaseBundleId = "string",
        masterDatabaseName = "string",
        hardware = list(
          cpuCount = 123,
          diskSizeInGb = 123,
          ramSizeInGb = 123.0
        ),
        state = "string",
        secondaryAvailabilityZone = "string",
        backupRetentionEnabled = TRUE|FALSE,
        pendingModifiedValues = list(
          masterUserPassword = "string",
          engineVersion = "string",
          backupRetentionEnabled = TRUE|FALSE
        ),
        engine = "string",
        engineVersion = "string",
        latestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        masterUsername = "string",
        parameterApplyStatus = "string",
        preferredBackupWindow = "string",
        preferredMaintenanceWindow = "string",
        publiclyAccessible = TRUE|FALSE,
        masterEndpoint = list(
          port = 123,
          address = "string"
        ),
        pendingMaintenanceActions = list(
          list(
            action = "string",
            description = "string",
            currentApplyDate = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        caCertificateIdentifier = "string"
      )
    )

### Request syntax

    svc$get_relational_database(
      relationalDatabaseName = "string"
    )
