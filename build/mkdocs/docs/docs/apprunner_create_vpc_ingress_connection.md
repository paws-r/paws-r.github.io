<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_vpc_ingress_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner VPC Ingress Connection resource

### Description

Create an App Runner VPC Ingress Connection resource. App Runner
requires this resource when you want to associate your App Runner
service with an Amazon VPC endpoint.

### Usage

    apprunner_create_vpc_ingress_connection(ServiceArn,
      VpcIngressConnectionName, IngressVpcConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_vpc_ingress_connection_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for this App Runner
service that is used to create the VPC Ingress Connection
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_vpc_ingress_connection_:_VpcIngressConnectionName">VpcIngressConnectionName</code></td>
<td><p>[required] A name for the VPC Ingress Connection resource. It
must be unique across all the active VPC Ingress Connections in your
Amazon Web Services account in the Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_vpc_ingress_connection_:_IngressVpcConfiguration">IngressVpcConfiguration</code></td>
<td><p>[required] Specifications for the customer’s Amazon VPC and the
related Amazon Web Services PrivateLink VPC endpoint that are used to
create the VPC Ingress Connection resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_vpc_ingress_connection_:_Tags">Tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the VPC Ingress Connection resource. A tag is a key-value pair.</p></td>
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

    svc$create_vpc_ingress_connection(
      ServiceArn = "string",
      VpcIngressConnectionName = "string",
      IngressVpcConfiguration = list(
        VpcId = "string",
        VpcEndpointId = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
