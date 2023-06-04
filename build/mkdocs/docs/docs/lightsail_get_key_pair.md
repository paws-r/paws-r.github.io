<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific key pair

### Description

Returns information about a specific key pair.

### Usage

    lightsail_get_key_pair(keyPairName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_key_pair_:_keyPairName">keyPairName</code></td>
<td><p>[required] The name of the key pair for which you are requesting
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyPair = list(
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
        fingerprint = "string"
      )
    )

### Request syntax

    svc$get_key_pair(
      keyPairName = "string"
    )
