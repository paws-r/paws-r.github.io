<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_elastic_gpus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Elastic Graphics accelerator associated with your instances

### Description

Describes the Elastic Graphics accelerator associated with your
instances. For more information about Elastic Graphics, see [Amazon
Elastic
Graphics](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html).

### Usage

    ec2_describe_elastic_gpus(ElasticGpuIds, DryRun, Filters, MaxResults,
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
id="ec2_describe_elastic_gpus_:_ElasticGpuIds">ElasticGpuIds</code></td>
<td><p>The Elastic Graphics accelerator IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_elastic_gpus_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_elastic_gpus_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>availability-zone</code> - The Availability Zone in which
the Elastic Graphics accelerator resides.</p></li>
<li><p><code>elastic-gpu-health</code> - The status of the Elastic
Graphics accelerator (<code>OK</code> | <code>IMPAIRED</code>).</p></li>
<li><p><code>elastic-gpu-state</code> - The state of the Elastic
Graphics accelerator (<code>ATTACHED</code>).</p></li>
<li><p><code>elastic-gpu-type</code> - The type of Elastic Graphics
accelerator; for example, <code>eg1.medium</code>.</p></li>
<li><p><code>instance-id</code> - The ID of the instance to which the
Elastic Graphics accelerator is associated.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_elastic_gpus_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value. This value can be between 5 and
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_elastic_gpus_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ElasticGpuSet = list(
        list(
          ElasticGpuId = "string",
          AvailabilityZone = "string",
          ElasticGpuType = "string",
          ElasticGpuHealth = list(
            Status = "OK"|"IMPAIRED"
          ),
          ElasticGpuState = "ATTACHED",
          InstanceId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Request syntax

    svc$describe_elastic_gpus(
      ElasticGpuIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
