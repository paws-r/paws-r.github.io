<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_hosted_zone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified hosted zone including the four name servers assigned to the hosted zone

### Description

Gets information about a specified hosted zone including the four name
servers assigned to the hosted zone.

### Usage

    route53_get_hosted_zone(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_hosted_zone_:_Id">Id</code></td>
<td><p>[required] The ID of the hosted zone that you want to get
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZone = list(
        Id = "string",
        Name = "string",
        CallerReference = "string",
        Config = list(
          Comment = "string",
          PrivateZone = TRUE|FALSE
        ),
        ResourceRecordSetCount = 123,
        LinkedService = list(
          ServicePrincipal = "string",
          Description = "string"
        )
      ),
      DelegationSet = list(
        Id = "string",
        CallerReference = "string",
        NameServers = list(
          "string"
        )
      ),
      VPCs = list(
        list(
          VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
          VPCId = "string"
        )
      )
    )

### Request syntax

    svc$get_hosted_zone(
      Id = "string"
    )

### Examples

    ## Not run: 
    # The following example gets information about the Z3M3LMPEXAMPLE hosted
    # zone.
    svc$get_hosted_zone(
      Id = "Z3M3LMPEXAMPLE"
    )

    ## End(Not run)
