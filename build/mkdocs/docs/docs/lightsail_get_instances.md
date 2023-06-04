<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all Amazon Lightsail virtual private servers, or instances

### Description

Returns information about all Amazon Lightsail virtual private servers,
or *instances*.

### Usage

    lightsail_get_instances(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_get_instances_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_instances</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instances = list(
        list(
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
          blueprintId = "string",
          blueprintName = "string",
          bundleId = "string",
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
          isStaticIp = TRUE|FALSE,
          privateIpAddress = "string",
          publicIpAddress = "string",
          ipv6Addresses = list(
            "string"
          ),
          ipAddressType = "dualstack"|"ipv4",
          hardware = list(
            cpuCount = 123,
            disks = list(
              list(
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
            ),
            ramSizeInGb = 123.0
          ),
          networking = list(
            monthlyTransfer = list(
              gbPerMonthAllocated = 123
            ),
            ports = list(
              list(
                fromPort = 123,
                toPort = 123,
                protocol = "tcp"|"all"|"udp"|"icmp",
                accessFrom = "string",
                accessType = "Public"|"Private",
                commonName = "string",
                accessDirection = "inbound"|"outbound",
                cidrs = list(
                  "string"
                ),
                ipv6Cidrs = list(
                  "string"
                ),
                cidrListAliases = list(
                  "string"
                )
              )
            )
          ),
          state = list(
            code = 123,
            name = "string"
          ),
          username = "string",
          sshKeyName = "string",
          metadataOptions = list(
            state = "pending"|"applied",
            httpTokens = "optional"|"required",
            httpEndpoint = "disabled"|"enabled",
            httpPutResponseHopLimit = 123,
            httpProtocolIpv6 = "disabled"|"enabled"
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_instances(
      pageToken = "string"
    )
