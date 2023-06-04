<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_blue_green_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a blue/green deployment

### Description

Creates a blue/green deployment.

A blue/green deployment creates a staging environment that copies the
production environment. In a blue/green deployment, the blue environment
is the current production environment. The green environment is the
staging environment. The staging environment stays in sync with the
current production environment using logical replication.

You can make changes to the databases in the green environment without
affecting production workloads. For example, you can upgrade the major
or minor DB engine version, change database parameters, or make schema
changes in the staging environment. You can thoroughly test changes in
the green environment. When ready, you can switch over the environments
to promote the green environment to be the new production environment.
The switchover typically takes under a minute.

For more information, see [Using Amazon RDS Blue/Green Deployments for
database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
in the *Amazon RDS User Guide* and [Using Amazon RDS Blue/Green
Deployments for database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_create_blue_green_deployment(BlueGreenDeploymentName, Source,
      TargetEngineVersion, TargetDBParameterGroupName,
      TargetDBClusterParameterGroupName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_blue_green_deployment_:_BlueGreenDeploymentName">BlueGreenDeploymentName</code></td>
<td><p>[required] The name of the blue/green deployment.</p>
<p>Constraints:</p>
<ul>
<li><p>Can't be the same as an existing blue/green deployment name in
the same account and Amazon Web Services Region.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_create_blue_green_deployment_:_Source">Source</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the source
production database.</p>
<p>Specify the database that you want to clone. The blue/green
deployment creates this database in the green environment. You can make
updates to the database in the green environment, such as an engine
version upgrade. When you are ready, you can switch the database in the
green environment to be the production database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_blue_green_deployment_:_TargetEngineVersion">TargetEngineVersion</code></td>
<td><p>The engine version of the database in the green environment.</p>
<p>Specify the engine version to upgrade to in the green
environment.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_blue_green_deployment_:_TargetDBParameterGroupName">TargetDBParameterGroupName</code></td>
<td><p>The DB parameter group associated with the DB instance in the
green environment.</p>
<p>To test parameter changes, specify a DB parameter group that is
different from the one associated with the source DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_blue_green_deployment_:_TargetDBClusterParameterGroupName">TargetDBClusterParameterGroupName</code></td>
<td><p>The DB cluster parameter group associated with the Aurora DB
cluster in the green environment.</p>
<p>To test parameter changes, specify a DB cluster parameter group that
is different from the one associated with the source DB
cluster.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_blue_green_deployment_:_Tags">Tags</code></td>
<td><p>Tags to assign to the blue/green deployment.</p></td>
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

    svc$create_blue_green_deployment(
      BlueGreenDeploymentName = "string",
      Source = "string",
      TargetEngineVersion = "string",
      TargetDBParameterGroupName = "string",
      TargetDBClusterParameterGroupName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
