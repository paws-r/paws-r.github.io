<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_vpc_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner VPC connector resource

### Description

Create an App Runner VPC connector resource. App Runner requires this
resource when you want to associate your App Runner service to a custom
Amazon Virtual Private Cloud (Amazon VPC).

### Usage

    apprunner_create_vpc_connector(VpcConnectorName, Subnets,
      SecurityGroups, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_vpc_connector_:_VpcConnectorName">VpcConnectorName</code></td>
<td><p>[required] A name for the VPC connector.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_vpc_connector_:_Subnets">Subnets</code></td>
<td><p>[required] A list of IDs of subnets that App Runner should use
when it associates your service with a custom Amazon VPC. Specify IDs of
subnets of a single Amazon VPC. App Runner determines the Amazon VPC
from the subnets you specify.</p>
<p>App Runner currently only provides support for IPv4.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_vpc_connector_:_SecurityGroups">SecurityGroups</code></td>
<td><p>A list of IDs of security groups that App Runner should use for
access to Amazon Web Services resources under the specified subnets. If
not specified, App Runner uses the default security group of the Amazon
VPC. The default security group allows all outbound traffic.</p></td>
</tr>
<tr class="even">
<td><code id="apprunner_create_vpc_connector_:_Tags">Tags</code></td>
<td><p>A list of metadata items that you can associate with your VPC
connector resource. A tag is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcConnector = list(
        VpcConnectorName = "string",
        VpcConnectorArn = "string",
        VpcConnectorRevision = 123,
        Subnets = list(
          "string"
        ),
        SecurityGroups = list(
          "string"
        ),
        Status = "ACTIVE"|"INACTIVE",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_vpc_connector(
      VpcConnectorName = "string",
      Subnets = list(
        "string"
      ),
      SecurityGroups = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
