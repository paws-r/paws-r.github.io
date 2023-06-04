<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_get_compliance_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a table that shows counts of resources that are noncompliant with their tag policies

### Description

Returns a table that shows counts of resources that are noncompliant
with their tag policies.

For more information on tag policies, see [Tag
Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
in the *Organizations User Guide.*

You can call this operation only from the organization's management
account and from the us-east-1 Region.

This operation supports pagination, where the response can be sent in
multiple pages. You should check the `PaginationToken` response
parameter to determine if there are additional results available to
return. Repeat the query, passing the `PaginationToken` response
parameter value as an input to the next request until you recieve a
`null` value. A null value for `PaginationToken` indicates that there
are no more results waiting to be returned.

### Usage

    resourcegroupstaggingapi_get_compliance_summary(TargetIdFilters,
      RegionFilters, ResourceTypeFilters, TagKeyFilters, GroupBy, MaxResults,
      PaginationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_TargetIdFilters">TargetIdFilters</code></td>
<td><p>Specifies target identifiers (usually, specific account IDs) to
limit the output by. If you use this parameter, the count of returned
noncompliant resources includes only resources with the specified target
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_RegionFilters">RegionFilters</code></td>
<td><p>Specifies a list of Amazon Web Services Regions to limit the
output to. If you use this parameter, the count of returned noncompliant
resources includes only resources in the specified Regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_ResourceTypeFilters">ResourceTypeFilters</code></td>
<td><p>Specifies that you want the response to include information for
only resources of the specified types. The format of each resource type
is <code style="white-space: pre;">⁠service[:resourceType]⁠</code>. For
example, specifying a resource type of <code>ec2</code> returns all
Amazon EC2 resources (which includes EC2 instances). Specifying a
resource type of <code>ec2:instance</code> returns only EC2
instances.</p>
<p>The string for each service name and resource type is the same as
that embedded in a resource's Amazon Resource Name (ARN). Consult the
<em><span href="https://docs.aws.amazon.com/general/latest/gr/">Amazon
Web Services General Reference</span></em> for the following:</p>
<ul>
<li><p>For a list of service name strings, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#genref-aws-service-namespaces">Amazon
Web Services Service Namespaces</a>.</p></li>
<li><p>For resource type strings, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arns-syntax">Example
ARNs</a>.</p></li>
<li><p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service
Namespaces</a>.</p></li>
</ul>
<p>You can specify multiple resource types by using a comma separated
array. The array can include up to 100 items. Note that the length
constraint requirement applies to each resource type filter.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_TagKeyFilters">TagKeyFilters</code></td>
<td><p>Specifies that you want the response to include information for
only resources that have tags with the specified tag keys. If you use
this parameter, the count of returned noncompliant resources includes
only resources that have the specified tag keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_GroupBy">GroupBy</code></td>
<td><p>Specifies a list of attributes to group the counts of
noncompliant resources by. If supplied, the counts are sorted by those
attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of results to be returned in each
page. A query can return fewer than this maximum, even if there are more
results still to return. You should always check the
<code>PaginationToken</code> response value to see if there are more
results. You can specify a minimum of 1 and a maximum value of
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_compliance_summary_:_PaginationToken">PaginationToken</code></td>
<td><p>Specifies a <code>PaginationToken</code> response value from a
previous request to indicate that you want the next page of results.
Leave this parameter empty in your initial request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SummaryList = list(
        list(
          LastUpdated = "string",
          TargetId = "string",
          TargetIdType = "ACCOUNT"|"OU"|"ROOT",
          Region = "string",
          ResourceType = "string",
          NonCompliantResources = 123
        )
      ),
      PaginationToken = "string"
    )

### Request syntax

    svc$get_compliance_summary(
      TargetIdFilters = list(
        "string"
      ),
      RegionFilters = list(
        "string"
      ),
      ResourceTypeFilters = list(
        "string"
      ),
      TagKeyFilters = list(
        "string"
      ),
      GroupBy = list(
        "TARGET_ID"|"REGION"|"RESOURCE_TYPE"
      ),
      MaxResults = 123,
      PaginationToken = "string"
    )
