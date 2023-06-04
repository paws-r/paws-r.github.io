<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_auto_scaling_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the Auto Scaling instances in the account and Region

### Description

Gets information about the Auto Scaling instances in the account and
Region.

### Usage

    autoscaling_describe_auto_scaling_instances(InstanceIds, MaxRecords,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_auto_scaling_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the instances. If you omit this property, all Auto
Scaling instances are described. If you specify an ID that does not
exist, it is ignored with no error.</p>
<p>Array Members: Maximum number of 50 items.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_auto_scaling_instances_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>50</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_auto_scaling_instances_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoScalingInstances = list(
        list(
          InstanceId = "string",
          InstanceType = "string",
          AutoScalingGroupName = "string",
          AvailabilityZone = "string",
          LifecycleState = "string",
          HealthStatus = "string",
          LaunchConfigurationName = "string",
          LaunchTemplate = list(
            LaunchTemplateId = "string",
            LaunchTemplateName = "string",
            Version = "string"
          ),
          ProtectedFromScaleIn = TRUE|FALSE,
          WeightedCapacity = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_auto_scaling_instances(
      InstanceIds = list(
        "string"
      ),
      MaxRecords = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the specified Auto Scaling instance.
    svc$describe_auto_scaling_instances(
      InstanceIds = list(
        "i-4ba0837f"
      )
    )

    ## End(Not run)
