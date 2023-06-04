<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_cloud_formation_stack_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the CloudFormation stack record created as a result of the create cloud formation stack operation

### Description

Returns the CloudFormation stack record created as a result of the
`⁠create cloud formation stack⁠` operation.

An AWS CloudFormation stack is used to create a new Amazon EC2 instance
from an exported Lightsail snapshot.

### Usage

    lightsail_get_cloud_formation_stack_records(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_cloud_formation_stack_records_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>GetClouFormationStackRecords</code> request. If your results are
paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      cloudFormationStackRecords = list(
        list(
          name = "string",
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          state = "Started"|"Succeeded"|"Failed",
          sourceInfo = list(
            list(
              resourceType = "ExportSnapshotRecord",
              name = "string",
              arn = "string"
            )
          ),
          destinationInfo = list(
            id = "string",
            service = "string"
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_cloud_formation_stack_records(
      pageToken = "string"
    )
