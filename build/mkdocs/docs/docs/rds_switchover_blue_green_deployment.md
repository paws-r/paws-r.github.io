<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_switchover_blue_green_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Switches over a blue/green deployment

### Description

Switches over a blue/green deployment.

Before you switch over, production traffic is routed to the databases in
the blue environment. After you switch over, production traffic is
routed to the databases in the green environment.

For more information, see [Using Amazon RDS Blue/Green Deployments for
database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
in the *Amazon RDS User Guide* and [Using Amazon RDS Blue/Green
Deployments for database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_switchover_blue_green_deployment(BlueGreenDeploymentIdentifier,
      SwitchoverTimeout)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_switchover_blue_green_deployment_:_BlueGreenDeploymentIdentifier">BlueGreenDeploymentIdentifier</code></td>
<td><p>[required] The blue/green deployment identifier.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match an existing blue/green deployment identifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_switchover_blue_green_deployment_:_SwitchoverTimeout">SwitchoverTimeout</code></td>
<td><p>The amount of time, in seconds, for the switchover to complete.
The default is 300.</p>
<p>If the switchover takes longer than the specified duration, then any
changes are rolled back, and no changes are made to the
environments.</p></td>
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

    svc$switchover_blue_green_deployment(
      BlueGreenDeploymentIdentifier = "string",
      SwitchoverTimeout = 123
    )
