<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_list_protection_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves ProtectionGroup objects for the account

### Description

Retrieves ProtectionGroup objects for the account. You can retrieve all
protection groups or you can provide filtering criteria and retrieve
just the subset of protection groups that match the criteria.

### Usage

    shield_list_protection_groups(NextToken, MaxResults, InclusionFilters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_list_protection_groups_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects from Shield Advanced, if the
response does not include all of the remaining available objects, Shield
Advanced includes a <code>NextToken</code> value in the response. You
can retrieve the next batch of objects by requesting the list again and
providing the token that was returned by the prior call in your
request.</p>
<p>You can indicate the maximum number of objects that you want Shield
Advanced to return for a single call with the <code>MaxResults</code>
setting. Shield Advanced will not return more than
<code>MaxResults</code> objects, but may return fewer, even if more
objects are still available.</p>
<p>Whenever more objects remain that Shield Advanced has not yet
returned to you, the response will include a <code>NextToken</code>
value.</p>
<p>On your first call to a list operation, leave this setting
empty.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_list_protection_groups_:_MaxResults">MaxResults</code></td>
<td><p>The greatest number of objects that you want Shield Advanced to
return to the list request. Shield Advanced might return fewer objects
than you indicate in this setting, even if more objects are available.
If there are more objects remaining, Shield Advanced will always also
return a <code>NextToken</code> value in the response.</p>
<p>The default setting is 20.</p></td>
</tr>
<tr class="odd">
<td><code
id="shield_list_protection_groups_:_InclusionFilters">InclusionFilters</code></td>
<td><p>Narrows the set of protection groups that the call retrieves. You
can retrieve a single protection group by its name and you can retrieve
all protection groups that are configured with specific pattern or
aggregation settings. You can provide up to one criteria per filter
type. Shield Advanced returns the protection groups that exactly match
all of the search criteria that you provide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtectionGroups = list(
        list(
          ProtectionGroupId = "string",
          Aggregation = "SUM"|"MEAN"|"MAX",
          Pattern = "ALL"|"ARBITRARY"|"BY_RESOURCE_TYPE",
          ResourceType = "CLOUDFRONT_DISTRIBUTION"|"ROUTE_53_HOSTED_ZONE"|"ELASTIC_IP_ALLOCATION"|"CLASSIC_LOAD_BALANCER"|"APPLICATION_LOAD_BALANCER"|"GLOBAL_ACCELERATOR",
          Members = list(
            "string"
          ),
          ProtectionGroupArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_protection_groups(
      NextToken = "string",
      MaxResults = 123,
      InclusionFilters = list(
        ProtectionGroupIds = list(
          "string"
        ),
        Patterns = list(
          "ALL"|"ARBITRARY"|"BY_RESOURCE_TYPE"
        ),
        ResourceTypes = list(
          "CLOUDFRONT_DISTRIBUTION"|"ROUTE_53_HOSTED_ZONE"|"ELASTIC_IP_ALLOCATION"|"CLASSIC_LOAD_BALANCER"|"APPLICATION_LOAD_BALANCER"|"GLOBAL_ACCELERATOR"
        ),
        Aggregations = list(
          "SUM"|"MEAN"|"MAX"
        )
      )
    )
