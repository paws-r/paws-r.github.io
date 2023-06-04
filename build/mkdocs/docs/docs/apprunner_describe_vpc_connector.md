<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_describe_vpc_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a description of an App Runner VPC connector resource

### Description

Return a description of an App Runner VPC connector resource.

### Usage

    apprunner_describe_vpc_connector(VpcConnectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_describe_vpc_connector_:_VpcConnectorArn">VpcConnectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner VPC
connector that you want a description for.</p>
<p>The ARN must be a full VPC connector ARN.</p></td>
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

    svc$describe_vpc_connector(
      VpcConnectorArn = "string"
    )
