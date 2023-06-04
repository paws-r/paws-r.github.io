<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_preview_agents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Previews the agents installed on the EC2 instances that are part of the specified assessment target

### Description

Previews the agents installed on the EC2 instances that are part of the
specified assessment target.

### Usage

    inspector_preview_agents(previewAgentsArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_preview_agents_:_previewAgentsArn">previewAgentsArn</code></td>
<td><p>[required] The ARN of the assessment target whose agents you want
to preview.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_preview_agents_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>PreviewAgents</strong> action. Subsequent calls to the action
fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_preview_agents_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 10. The maximum
value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      agentPreviews = list(
        list(
          hostname = "string",
          agentId = "string",
          autoScalingGroup = "string",
          agentHealth = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
          agentVersion = "string",
          operatingSystem = "string",
          kernelVersion = "string",
          ipv4Address = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$preview_agents(
      previewAgentsArn = "string",
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Previews the agents installed on the EC2 instances that are part of the
    # specified assessment target.
    svc$preview_agents(
      maxResults = 123L,
      previewAgentsArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
    )

    ## End(Not run)
