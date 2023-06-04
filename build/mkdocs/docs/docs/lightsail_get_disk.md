<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_disk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific block storage disk

### Description

Returns information about a specific block storage disk.

### Usage

    lightsail_get_disk(diskName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_get_disk_:_diskName">diskName</code></td>
<td><p>[required] The name of the disk (e.g.,
<code>my-disk</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      disk = list(
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
        addOns = list(
          list(
            name = "string",
            status = "string",
            snapshotTimeOfDay = "string",
            nextSnapshotTimeOfDay = "string",
            threshold = "string",
            duration = "string"
          )
        ),
        sizeInGb = 123,
        isSystemDisk = TRUE|FALSE,
        iops = 123,
        path = "string",
        state = "pending"|"error"|"available"|"in-use"|"unknown",
        attachedTo = "string",
        isAttached = TRUE|FALSE,
        attachmentState = "string",
        gbInUse = 123,
        autoMountStatus = "Failed"|"Pending"|"Mounted"|"NotMounted"
      )
    )

### Request syntax

    svc$get_disk(
      diskName = "string"
    )
