<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_list_cost_allocation_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list of cost allocation tags

### Description

Get a list of cost allocation tags. All inputs in the API are optional
and serve as filters. By default, all cost allocation tags are returned.

### Usage

    costexplorer_list_cost_allocation_tags(Status, TagKeys, Type, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_list_cost_allocation_tags_:_Status">Status</code></td>
<td><p>The status of cost allocation tag keys that are returned for this
request.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_list_cost_allocation_tags_:_TagKeys">TagKeys</code></td>
<td><p>The list of cost allocation tag keys that are returned for this
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_list_cost_allocation_tags_:_Type">Type</code></td>
<td><p>The type of <code>CostAllocationTag</code> object that are
returned for this request. The <code>AWSGenerated</code> type tags are
tags that Amazon Web Services defines and applies to support Amazon Web
Services resources for cost allocation purposes. The
<code>UserDefined</code> type tags are tags that you define, create, and
apply to resources.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_list_cost_allocation_tags_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_list_cost_allocation_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that are returned for this request.
By default, the request returns 100 results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CostAllocationTags = list(
        list(
          TagKey = "string",
          Type = "AWSGenerated"|"UserDefined",
          Status = "Active"|"Inactive"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_cost_allocation_tags(
      Status = "Active"|"Inactive",
      TagKeys = list(
        "string"
      ),
      Type = "AWSGenerated"|"UserDefined",
      NextToken = "string",
      MaxResults = 123
    )
