<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_flow_logs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more flow logs

### Description

Describes one or more flow logs.

To view the published flow log records, you must view the log
destination. For example, the CloudWatch Logs log group, the Amazon S3
bucket, or the Kinesis Data Firehose delivery stream.

### Usage

    ec2_describe_flow_logs(DryRun, Filter, FlowLogIds, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_flow_logs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_flow_logs_:_Filter">Filter</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>deliver-log-status</code> - The status of the logs delivery
(<code>SUCCESS</code> | <code>FAILED</code>).</p></li>
<li><p><code>log-destination-type</code> - The type of destination for
the flow log data (<code>cloud-watch-logs</code> | <code>s3</code> |
<code>kinesis-data-firehose</code>).</p></li>
<li><p><code>flow-log-id</code> - The ID of the flow log.</p></li>
<li><p><code>log-group-name</code> - The name of the log group.</p></li>
<li><p><code>resource-id</code> - The ID of the VPC, subnet, or network
interface.</p></li>
<li><p><code>traffic-type</code> - The type of traffic
(<code>ACCEPT</code> | <code>REJECT</code> | <code>ALL</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_flow_logs_:_FlowLogIds">FlowLogIds</code></td>
<td><p>One or more flow log IDs.</p>
<p>Constraint: Maximum of 1000 flow log IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_flow_logs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_flow_logs_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of items. Pagination continues
from the end of the items returned by the previous request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlowLogs = list(
        list(
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          DeliverLogsErrorMessage = "string",
          DeliverLogsPermissionArn = "string",
          DeliverCrossAccountRole = "string",
          DeliverLogsStatus = "string",
          FlowLogId = "string",
          FlowLogStatus = "string",
          LogGroupName = "string",
          ResourceId = "string",
          TrafficType = "ACCEPT"|"REJECT"|"ALL",
          LogDestinationType = "cloud-watch-logs"|"s3"|"kinesis-data-firehose",
          LogDestination = "string",
          LogFormat = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          MaxAggregationInterval = 123,
          DestinationOptions = list(
            FileFormat = "plain-text"|"parquet",
            HiveCompatiblePartitions = TRUE|FALSE,
            PerHourPartition = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_flow_logs(
      DryRun = TRUE|FALSE,
      Filter = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      FlowLogIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
