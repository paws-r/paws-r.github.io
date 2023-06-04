<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_capacity_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your capacity providers

### Description

Describes one or more of your capacity providers.

### Usage

    ecs_describe_capacity_providers(capacityProviders, include, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_describe_capacity_providers_:_capacityProviders">capacityProviders</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of one or more
capacity providers. Up to <code>100</code> capacity providers can be
described in an action.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_describe_capacity_providers_:_include">include</code></td>
<td><p>Specifies whether or not you want to see the resource tags for
the capacity provider. If <code>TAGS</code> is specified, the tags are
included in the response. If this field is omitted, tags aren't included
in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_describe_capacity_providers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of account setting results returned by
<code>describe_capacity_providers</code> in paginated output. When this
parameter is used, <code>describe_capacity_providers</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_capacity_providers</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 10. If
this parameter is not used, then
<code>describe_capacity_providers</code> returns up to 10 results and a
<code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_describe_capacity_providers_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_capacity_providers</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      capacityProviders = list(
        list(
          capacityProviderArn = "string",
          name = "string",
          status = "ACTIVE"|"INACTIVE",
          autoScalingGroupProvider = list(
            autoScalingGroupArn = "string",
            managedScaling = list(
              status = "ENABLED"|"DISABLED",
              targetCapacity = 123,
              minimumScalingStepSize = 123,
              maximumScalingStepSize = 123,
              instanceWarmupPeriod = 123
            ),
            managedTerminationProtection = "ENABLED"|"DISABLED"
          ),
          updateStatus = "DELETE_IN_PROGRESS"|"DELETE_COMPLETE"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
          updateStatusReason = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      failures = list(
        list(
          arn = "string",
          reason = "string",
          detail = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_capacity_providers(
      capacityProviders = list(
        "string"
      ),
      include = list(
        "TAGS"
      ),
      maxResults = 123,
      nextToken = "string"
    )
