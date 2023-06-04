<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_launch_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the launch configurations in the account and Region

### Description

Gets information about the launch configurations in the account and
Region.

### Usage

    autoscaling_describe_launch_configurations(LaunchConfigurationNames,
      NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_launch_configurations_:_LaunchConfigurationNames">LaunchConfigurationNames</code></td>
<td><p>The launch configuration names. If you omit this property, all
launch configurations are described.</p>
<p>Array Members: Maximum number of 50 items.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_launch_configurations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_launch_configurations_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LaunchConfigurations = list(
        list(
          LaunchConfigurationName = "string",
          LaunchConfigurationARN = "string",
          ImageId = "string",
          KeyName = "string",
          SecurityGroups = list(
            "string"
          ),
          ClassicLinkVPCId = "string",
          ClassicLinkVPCSecurityGroups = list(
            "string"
          ),
          UserData = "string",
          InstanceType = "string",
          KernelId = "string",
          RamdiskId = "string",
          BlockDeviceMappings = list(
            list(
              VirtualName = "string",
              DeviceName = "string",
              Ebs = list(
                SnapshotId = "string",
                VolumeSize = 123,
                VolumeType = "string",
                DeleteOnTermination = TRUE|FALSE,
                Iops = 123,
                Encrypted = TRUE|FALSE,
                Throughput = 123
              ),
              NoDevice = TRUE|FALSE
            )
          ),
          InstanceMonitoring = list(
            Enabled = TRUE|FALSE
          ),
          SpotPrice = "string",
          IamInstanceProfile = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          EbsOptimized = TRUE|FALSE,
          AssociatePublicIpAddress = TRUE|FALSE,
          PlacementTenancy = "string",
          MetadataOptions = list(
            HttpTokens = "optional"|"required",
            HttpPutResponseHopLimit = 123,
            HttpEndpoint = "disabled"|"enabled"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_launch_configurations(
      LaunchConfigurationNames = list(
        "string"
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified launch configuration.
    svc$describe_launch_configurations(
      LaunchConfigurationNames = list(
        "my-launch-config"
      )
    )

    ## End(Not run)
