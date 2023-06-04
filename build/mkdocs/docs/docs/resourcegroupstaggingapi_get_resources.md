<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_get_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account

### Description

Returns all the tagged or previously tagged resources that are located
in the specified Amazon Web Services Region for the account.

Depending on what information you want returned, you can also specify
the following:

-   *Filters* that specify what tags and resource types you want
    returned. The response includes all tags that are associated with
    the requested resources.

-   Information about compliance with the account's effective tag
    policy. For more information on tag policies, see [Tag
    Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
    in the *Organizations User Guide.*

This operation supports pagination, where the response can be sent in
multiple pages. You should check the `PaginationToken` response
parameter to determine if there are additional results available to
return. Repeat the query, passing the `PaginationToken` response
parameter value as an input to the next request until you recieve a
`null` value. A null value for `PaginationToken` indicates that there
are no more results waiting to be returned.

### Usage

    resourcegroupstaggingapi_get_resources(PaginationToken, TagFilters,
      ResourcesPerPage, TagsPerPage, ResourceTypeFilters,
      IncludeComplianceDetails, ExcludeCompliantResources, ResourceARNList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_resources_:_PaginationToken">PaginationToken</code></td>
<td><p>Specifies a <code>PaginationToken</code> response value from a
previous request to indicate that you want the next page of results.
Leave this parameter empty in your initial request.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_resources_:_TagFilters">TagFilters</code></td>
<td><p>Specifies a list of TagFilters (keys and values) to restrict the
output to only those resources that have tags with the specified keys
and, if included, the specified values. Each <code>TagFilter</code> must
contain a key with values optional. A request can include up to 50 keys,
and each key can include up to 20 values.</p>
<p>Note the following when deciding how to use TagFilters:</p>
<ul>
<li><p>If you <em>don't</em> specify a <code>TagFilter</code>, the
response includes all resources that are currently tagged or ever had a
tag. Resources that currently don't have tags are shown with an empty
tag set, like this: <code
style="white-space: pre;">⁠"Tags": []⁠</code>.</p></li>
<li><p>If you specify more than one filter in a single request, the
response returns only those resources that satisfy all filters.</p></li>
<li><p>If you specify a filter that contains more than one value for a
key, the response returns resources that match <em>any</em> of the
specified values for that key.</p></li>
<li><p>If you don't specify a value for a key, the response returns all
resources that are tagged with that key, with any or no value.</p>
<p>For example, for the following filters: <code
style="white-space: pre;">⁠filter1= {keyA,{value1}}⁠</code>, <code
style="white-space: pre;">⁠filter2={keyB,{value2,value3,value4}}⁠</code>,
<code>filter3= {keyC}</code>:</p>
<ul>
<li><p><code>GetResources({filter1})</code> returns resources tagged
with <code>key1=value1</code></p></li>
<li><p><code>GetResources({filter2})</code> returns resources tagged
with <code>key2=value2</code> or <code>key2=value3</code> or
<code>key2=value4</code></p></li>
<li><p><code>GetResources({filter3})</code> returns resources tagged
with any tag with the key <code>key3</code>, and with any or no
value</p></li>
<li><p><code
style="white-space: pre;">⁠GetResources({filter1,filter2,filter3})⁠</code>
returns resources tagged with <code
style="white-space: pre;">⁠(key1=value1) and (key2=value2 or key2=value3 or key2=value4) and (key3, any or no value)⁠</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_resources_:_ResourcesPerPage">ResourcesPerPage</code></td>
<td><p>Specifies the maximum number of results to be returned in each
page. A query can return fewer than this maximum, even if there are more
results still to return. You should always check the
<code>PaginationToken</code> response value to see if there are more
results. You can specify a minimum of 1 and a maximum value of
100.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_resources_:_TagsPerPage">TagsPerPage</code></td>
<td><p>Amazon Web Services recommends using
<code>ResourcesPerPage</code> instead of this parameter.</p>
<p>A limit that restricts the number of tags (key and value pairs)
returned by <code>get_resources</code> in paginated output. A resource
with no tags is counted as having one tag (one key and value pair).</p>
<p><code>get_resources</code> does not split a resource and its
associated tags across pages. If the specified <code>TagsPerPage</code>
would cause such a break, a <code>PaginationToken</code> is returned in
place of the affected resource and its tags. Use that token in another
request to get the remaining data. For example, if you specify a
<code>TagsPerPage</code> of <code>100</code> and the account has 22
resources with 10 tags each (meaning that each resource has 10 key and
value pairs), the output will consist of three pages. The first page
displays the first 10 resources, each with its 10 tags. The second page
displays the next 10 resources, each with its 10 tags. The third page
displays the remaining 2 resources, each with its 10 tags.</p>
<p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to
a maximum of 500 items.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_resources_:_ResourceTypeFilters">ResourceTypeFilters</code></td>
<td><p>Specifies the resource types that you want included in the
response. The format of each resource type is <code
style="white-space: pre;">⁠service[:resourceType]⁠</code>. For example,
specifying a resource type of <code>ec2</code> returns all Amazon EC2
resources (which includes EC2 instances). Specifying a resource type of
<code>ec2:instance</code> returns only EC2 instances.</p>
<p>The string for each service name and resource type is the same as
that embedded in a resource's Amazon Resource Name (ARN). For the list
of services whose resources you can use in this parameter, see <a
href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services
that support the Resource Groups Tagging API</a>.</p>
<p>You can specify multiple resource types by using an array. The array
can include up to 100 items. Note that the length constraint requirement
applies to each resource type filter. For example, the following string
would limit the response to only Amazon EC2 instances, Amazon S3
buckets, or any Audit Manager resource:</p>
<p><code
style="white-space: pre;">⁠ec2:instance,s3:bucket,auditmanager⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_resources_:_IncludeComplianceDetails">IncludeComplianceDetails</code></td>
<td><p>Specifies whether to include details regarding the compliance
with the effective tag policy. Set this to <code>true</code> to
determine whether resources are compliant with the tag policy and to get
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_resources_:_ExcludeCompliantResources">ExcludeCompliantResources</code></td>
<td><p>Specifies whether to exclude resources that are compliant with
the tag policy. Set this to <code>true</code> if you are interested in
retrieving information on noncompliant resources only.</p>
<p>You can use this parameter only if the
<code>IncludeComplianceDetails</code> parameter is also set to
<code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_get_resources_:_ResourceARNList">ResourceARNList</code></td>
<td><p>Specifies a list of ARNs of resources for which you want to
retrieve tag data. You can't specify both this parameter and any of the
pagination parameters (<code>ResourcesPerPage</code>,
<code>TagsPerPage</code>, <code>PaginationToken</code>) in the same
request. If you specify both, you get an <code
style="white-space: pre;">⁠Invalid Parameter⁠</code> exception.</p>
<p>If a resource specified by this parameter doesn't exist, it doesn't
generate an error; it simply isn't included in the response.</p>
<p>An ARN (Amazon Resource Name) uniquely identifies a resource. For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in
the <em>Amazon Web Services General Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PaginationToken = "string",
      ResourceTagMappingList = list(
        list(
          ResourceARN = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          ComplianceDetails = list(
            NoncompliantKeys = list(
              "string"
            ),
            KeysWithNoncompliantValues = list(
              "string"
            ),
            ComplianceStatus = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$get_resources(
      PaginationToken = "string",
      TagFilters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      ResourcesPerPage = 123,
      TagsPerPage = 123,
      ResourceTypeFilters = list(
        "string"
      ),
      IncludeComplianceDetails = TRUE|FALSE,
      ExcludeCompliantResources = TRUE|FALSE,
      ResourceARNList = list(
        "string"
      )
    )
