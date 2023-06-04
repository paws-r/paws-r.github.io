<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_update_workgroup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a workgroup with the specified configuration settings

### Description

Updates a workgroup with the specified configuration settings. You can't
update multiple parameters in one request. For example, you can update
`baseCapacity` or `port` in a single request, but you can't update both
in the same request.

### Usage

    redshiftserverless_update_workgroup(baseCapacity, configParameters,
      enhancedVpcRouting, port, publiclyAccessible, securityGroupIds,
      subnetIds, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_update_workgroup_:_baseCapacity">baseCapacity</code></td>
<td><p>The new base data warehouse capacity in Redshift Processing Units
(RPUs).</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_workgroup_:_configParameters">configParameters</code></td>
<td><p>An array of parameters to set for advanced control over a
database. The options are <code>auto_mv</code>, <code>datestyle</code>,
<code>enable_case_sensitivity_identifier</code>,
<code>enable_user_activity_logging</code>, <code>query_group</code>,
<code>search_path</code>, and query monitoring metrics that let you
define performance boundaries. For more information about query
monitoring rules and available metrics, see <a
href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless">Query
monitoring metrics for Amazon Redshift Serverless</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_workgroup_:_enhancedVpcRouting">enhancedVpcRouting</code></td>
<td><p>The value that specifies whether to turn on enhanced virtual
private cloud (VPC) routing, which forces Amazon Redshift Serverless to
route traffic through your VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_workgroup_:_port">port</code></td>
<td><p>The custom port to use when connecting to a workgroup. Valid port
ranges are 5431-5455 and 8191-8215. The default is 5439.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_workgroup_:_publiclyAccessible">publiclyAccessible</code></td>
<td><p>A value that specifies whether the workgroup can be accessible
from a public network.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_workgroup_:_securityGroupIds">securityGroupIds</code></td>
<td><p>An array of security group IDs to associate with the
workgroup.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_workgroup_:_subnetIds">subnetIds</code></td>
<td><p>An array of VPC subnet IDs to associate with the
workgroup.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_workgroup_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup to update. You can't update
the name of a workgroup once it is created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      workgroup = list(
        baseCapacity = 123,
        configParameters = list(
          list(
            parameterKey = "string",
            parameterValue = "string"
          )
        ),
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        endpoint = list(
          address = "string",
          port = 123,
          vpcEndpoints = list(
            list(
              networkInterfaces = list(
                list(
                  availabilityZone = "string",
                  networkInterfaceId = "string",
                  privateIpAddress = "string",
                  subnetId = "string"
                )
              ),
              vpcEndpointId = "string",
              vpcId = "string"
            )
          )
        ),
        enhancedVpcRouting = TRUE|FALSE,
        namespaceName = "string",
        port = 123,
        publiclyAccessible = TRUE|FALSE,
        securityGroupIds = list(
          "string"
        ),
        status = "CREATING"|"AVAILABLE"|"MODIFYING"|"DELETING",
        subnetIds = list(
          "string"
        ),
        workgroupArn = "string",
        workgroupId = "string",
        workgroupName = "string"
      )
    )

### Request syntax

    svc$update_workgroup(
      baseCapacity = 123,
      configParameters = list(
        list(
          parameterKey = "string",
          parameterValue = "string"
        )
      ),
      enhancedVpcRouting = TRUE|FALSE,
      port = 123,
      publiclyAccessible = TRUE|FALSE,
      securityGroupIds = list(
        "string"
      ),
      subnetIds = list(
        "string"
      ),
      workgroupName = "string"
    )
