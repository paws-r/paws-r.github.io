<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_delete_vpc_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an App Runner VPC connector resource

### Description

Delete an App Runner VPC connector resource. You can't delete a
connector that's used by one or more App Runner services.

### Usage

    apprunner_delete_vpc_connector(VpcConnectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_delete_vpc_connector_:_VpcConnectorArn">VpcConnectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner VPC
connector that you want to delete.</p>
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

    svc$delete_vpc_connector(
      VpcConnectorArn = "string"
    )
