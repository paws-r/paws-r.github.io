<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_blue_green_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a blue/green deployment

### Description

Deletes a blue/green deployment.

For more information, see [Using Amazon RDS Blue/Green Deployments for
database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
in the *Amazon RDS User Guide* and [Using Amazon RDS Blue/Green
Deployments for database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_delete_blue_green_deployment(BlueGreenDeploymentIdentifier,
      DeleteTarget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_blue_green_deployment_:_BlueGreenDeploymentIdentifier">BlueGreenDeploymentIdentifier</code></td>
<td><p>[required] The blue/green deployment identifier of the deployment
to be deleted. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match an existing blue/green deployment identifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_delete_blue_green_deployment_:_DeleteTarget">DeleteTarget</code></td>
<td><p>A value that indicates whether to delete the resources in the
green environment. You can't specify this option if the blue/green
deployment <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_BlueGreenDeployment.html">status</a>
is <code>SWITCHOVER_COMPLETED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlueGreenDeployment = list(
        BlueGreenDeploymentIdentifier = "string",
        BlueGreenDeploymentName = "string",
        Source = "string",
        Target = "string",
        SwitchoverDetails = list(
          list(
            SourceMember = "string",
            TargetMember = "string",
            Status = "string"
          )
        ),
        Tasks = list(
          list(
            Name = "string",
            Status = "string"
          )
        ),
        Status = "string",
        StatusDetails = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        DeleteTime = as.POSIXct(
          "2015-01-01"
        ),
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_blue_green_deployment(
      BlueGreenDeploymentIdentifier = "string",
      DeleteTarget = TRUE|FALSE
    )
