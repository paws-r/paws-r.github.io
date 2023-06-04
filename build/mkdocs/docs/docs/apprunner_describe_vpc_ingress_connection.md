<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_describe_vpc_ingress_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a full description of an App Runner VPC Ingress Connection resource

### Description

Return a full description of an App Runner VPC Ingress Connection
resource.

### Usage

    apprunner_describe_vpc_ingress_connection(VpcIngressConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_describe_vpc_ingress_connection_:_VpcIngressConnectionArn">VpcIngressConnectionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner VPC
Ingress Connection that you want a description for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcIngressConnection = list(
        VpcIngressConnectionArn = "string",
        VpcIngressConnectionName = "string",
        ServiceArn = "string",
        Status = "AVAILABLE"|"PENDING_CREATION"|"PENDING_UPDATE"|"PENDING_DELETION"|"FAILED_CREATION"|"FAILED_UPDATE"|"FAILED_DELETION"|"DELETED",
        AccountId = "string",
        DomainName = "string",
        IngressVpcConfiguration = list(
          VpcId = "string",
          VpcEndpointId = "string"
        ),
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_vpc_ingress_connection(
      VpcIngressConnectionArn = "string"
    )
