<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_flow_logs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC

### Description

Creates one or more flow logs to capture information about IP traffic
for a specific network interface, subnet, or VPC.

Flow log data for a monitored network interface is recorded as flow log
records, which are log events consisting of fields that describe the
traffic flow. For more information, see [Flow log
records](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records)
in the *Amazon Virtual Private Cloud User Guide*.

When publishing to CloudWatch Logs, flow log records are published to a
log group, and each network interface has a unique log stream in the log
group. When publishing to Amazon S3, flow log records for all of the
monitored network interfaces are published to a single log file object
that is stored in the specified bucket.

For more information, see [VPC Flow
Logs](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_flow_logs(DryRun, ClientToken, DeliverLogsPermissionArn,
      DeliverCrossAccountRole, LogGroupName, ResourceIds, ResourceType,
      TrafficType, LogDestinationType, LogDestination, LogFormat,
      TagSpecifications, MaxAggregationInterval, DestinationOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_flow_logs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_flow_logs_:_DeliverLogsPermissionArn">DeliverLogsPermissionArn</code></td>
<td><p>The ARN of the IAM role that allows Amazon EC2 to publish flow
logs to a CloudWatch Logs log group in your account.</p>
<p>This parameter is required if the destination type is
<code>cloud-watch-logs</code> and unsupported otherwise.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_DeliverCrossAccountRole">DeliverCrossAccountRole</code></td>
<td><p>The ARN of the IAM role that allows Amazon EC2 to publish flow
logs across accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_flow_logs_:_LogGroupName">LogGroupName</code></td>
<td><p>The name of a new or existing CloudWatch Logs log group where
Amazon EC2 publishes your flow logs.</p>
<p>This parameter is valid only if the destination type is
<code>cloud-watch-logs</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_ResourceIds">ResourceIds</code></td>
<td><p>[required] The IDs of the resources to monitor. For example, if
the resource type is <code>VPC</code>, specify the IDs of the VPCs.</p>
<p>Constraints: Maximum of 25 for transit gateway resource types.
Maximum of 1000 for the other resource types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_flow_logs_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of resource to monitor.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_TrafficType">TrafficType</code></td>
<td><p>The type of traffic to monitor (accepted traffic, rejected
traffic, or all traffic). This parameter is not supported for transit
gateway resource types. It is required for the other resource
types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_flow_logs_:_LogDestinationType">LogDestinationType</code></td>
<td><p>The type of destination for the flow log data.</p>
<p>Default: <code>cloud-watch-logs</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_LogDestination">LogDestination</code></td>
<td><p>The destination for the flow log data. The meaning of this
parameter depends on the destination type.</p>
<ul>
<li><p>If the destination type is <code>cloud-watch-logs</code>, specify
the ARN of a CloudWatch Logs log group. For example:</p>
<p>arn:aws:logs:<em>region</em>:<em>account_id</em>:log-group:<em>my_group</em></p>
<p>Alternatively, use the <code>LogGroupName</code> parameter.</p></li>
<li><p>If the destination type is <code>s3</code>, specify the ARN of an
S3 bucket. For example:</p>
<p>arn:aws:s3:::<em>my_bucket</em>/<em>my_subfolder</em>/</p>
<p>The subfolder is optional. Note that you can't use
<code>AWSLogs</code> as a subfolder name.</p></li>
<li><p>If the destination type is <code>kinesis-data-firehose</code>,
specify the ARN of a Kinesis Data Firehose delivery stream. For
example:</p>
<p>arn:aws:firehose:<em>region</em>:<em>account_id</em>:deliverystream:<em>my_stream</em></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_flow_logs_:_LogFormat">LogFormat</code></td>
<td><p>The fields to include in the flow log record. List the fields in
the order in which they should appear. If you omit this parameter, the
flow log is created using the default format. If you specify this
parameter, you must include at least one field. For more information
about the available fields, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records">Flow
log records</a> in the <em>Amazon VPC User Guide</em> or <a
href="https://docs.aws.amazon.com/vpc/latest/tgw/tgw-flow-logs.html#flow-log-records">Transit
Gateway Flow Log records</a> in the <em>Amazon Web Services Transit
Gateway Guide</em>.</p>
<p>Specify the fields using the <code
style="white-space: pre;">⁠${field-id}⁠</code> format, separated by
spaces. For the CLI, surround this parameter value with single quotes on
Linux or double quotes on Windows.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the flow logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_flow_logs_:_MaxAggregationInterval">MaxAggregationInterval</code></td>
<td><p>The maximum interval of time during which a flow of packets is
captured and aggregated into a flow log record. The possible values are
60 seconds (1 minute) or 600 seconds (10 minutes). This parameter must
be 60 seconds for transit gateway resource types.</p>
<p>When a network interface is attached to a <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Nitro-based
instance</a>, the aggregation interval is always 60 seconds or less,
regardless of the value that you specify.</p>
<p>Default: 600</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_flow_logs_:_DestinationOptions">DestinationOptions</code></td>
<td><p>The destination options.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
      FlowLogIds = list(
        "string"
      ),
      Unsuccessful = list(
        list(
          Error = list(
            Code = "string",
            Message = "string"
          ),
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$create_flow_logs(
      DryRun = TRUE|FALSE,
      ClientToken = "string",
      DeliverLogsPermissionArn = "string",
      DeliverCrossAccountRole = "string",
      LogGroupName = "string",
      ResourceIds = list(
        "string"
      ),
      ResourceType = "VPC"|"Subnet"|"NetworkInterface"|"TransitGateway"|"TransitGatewayAttachment",
      TrafficType = "ACCEPT"|"REJECT"|"ALL",
      LogDestinationType = "cloud-watch-logs"|"s3"|"kinesis-data-firehose",
      LogDestination = "string",
      LogFormat = "string",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      MaxAggregationInterval = 123,
      DestinationOptions = list(
        FileFormat = "plain-text"|"parquet",
        HiveCompatiblePartitions = TRUE|FALSE,
        PerHourPartition = TRUE|FALSE
      )
    )
