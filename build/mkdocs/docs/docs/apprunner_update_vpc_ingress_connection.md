<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_update_vpc_ingress_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an existing App Runner VPC Ingress Connection resource

### Description

Update an existing App Runner VPC Ingress Connection resource. The VPC
Ingress Connection must be in one of the following states to be updated:

-   AVAILABLE

-   FAILED\_CREATION

-   FAILED\_UPDATE

### Usage

    apprunner_update_vpc_ingress_connection(VpcIngressConnectionArn,
      IngressVpcConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_update_vpc_ingress_connection_:_VpcIngressConnectionArn">VpcIngressConnectionArn</code></td>
<td><p>[required] The Amazon Resource Name (Arn) for the App Runner VPC
Ingress Connection resource that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_update_vpc_ingress_connection_:_IngressVpcConfiguration">IngressVpcConfiguration</code></td>
<td><p>[required] Specifications for the customer’s Amazon VPC and the
related Amazon Web Services PrivateLink VPC endpoint that are used to
update the VPC Ingress Connection resource.</p></td>
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

    svc$update_vpc_ingress_connection(
      VpcIngressConnectionArn = "string",
      IngressVpcConfiguration = list(
        VpcId = "string",
        VpcEndpointId = "string"
      )
    )
