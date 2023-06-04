<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_blue_green_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about blue/green deployments

### Description

Returns information about blue/green deployments.

For more information, see [Using Amazon RDS Blue/Green Deployments for
database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
in the *Amazon RDS User Guide* and [Using Amazon RDS Blue/Green
Deployments for database
updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_describe_blue_green_deployments(BlueGreenDeploymentIdentifier,
      Filters, Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_blue_green_deployments_:_BlueGreenDeploymentIdentifier">BlueGreenDeploymentIdentifier</code></td>
<td><p>The blue/green deployment identifier. If this parameter is
specified, information from only the specific blue/green deployment is
returned. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match an existing blue/green deployment
identifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_blue_green_deployments_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more blue/green deployments to
describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>blue-green-deployment-identifier</code> - Accepts
system-generated identifiers for blue/green deployments. The results
list only includes information about the blue/green deployments with the
specified identifiers.</p></li>
<li><p><code>blue-green-deployment-name</code> - Accepts user-supplied
names for blue/green deployments. The results list only includes
information about the blue/green deployments with the specified
names.</p></li>
<li><p><code>source</code> - Accepts source databases for a blue/green
deployment. The results list only includes information about the
blue/green deployments with the specified source databases.</p></li>
<li><p><code>target</code> - Accepts target databases for a blue/green
deployment. The results list only includes information about the
blue/green deployments with the specified target databases.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_blue_green_deployments_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_blue_green_deployments</code> request. If this parameter
is specified, the response includes only records beyond the marker, up
to the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_blue_green_deployments_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlueGreenDeployments = list(
        list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_blue_green_deployments(
      BlueGreenDeploymentIdentifier = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123
    )
