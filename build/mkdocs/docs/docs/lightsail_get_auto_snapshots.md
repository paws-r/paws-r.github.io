<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_auto_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the available automatic snapshots for an instance or disk

### Description

Returns the available automatic snapshots for an instance or disk. For
more information, see the Amazon Lightsail Developer Guide.

### Usage

    lightsail_get_auto_snapshots(resourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_auto_snapshots_:_resourceName">resourceName</code></td>
<td><p>[required] The name of the source instance or disk from which to
get automatic snapshot information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceName = "string",
      resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
      autoSnapshots = list(
        list(
          date = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          status = "Success"|"Failed"|"InProgress"|"NotFound",
          fromAttachedDisks = list(
            list(
              path = "string",
              sizeInGb = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$get_auto_snapshots(
      resourceName = "string"
    )
