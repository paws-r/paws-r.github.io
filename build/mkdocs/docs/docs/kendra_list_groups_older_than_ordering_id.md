<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_groups_older_than_ordering_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of groups that are mapped to users before a given ordering or timestamp identifier

### Description

Provides a list of groups that are mapped to users before a given
ordering or timestamp identifier.

`list_groups_older_than_ordering_id` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_list_groups_older_than_ordering_id(IndexId, DataSourceId,
      OrderingId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_list_groups_older_than_ordering_id_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for getting a list of
groups mapped to users before a given ordering or timestamp
identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_groups_older_than_ordering_id_:_DataSourceId">DataSourceId</code></td>
<td><p>The identifier of the data source for getting a list of groups
mapped to users before a given ordering timestamp identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_groups_older_than_ordering_id_:_OrderingId">OrderingId</code></td>
<td><p>[required] The timestamp identifier used for the latest
<code>PUT</code> or <code>DELETE</code> action for mapping users to
their groups.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_groups_older_than_ordering_id_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
groups that are mapped to users before a given ordering or timestamp
identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_groups_older_than_ordering_id_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of returned groups that are mapped to users
before a given ordering or timestamp identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupsSummaries = list(
        list(
          GroupId = "string",
          OrderingId = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_groups_older_than_ordering_id(
      IndexId = "string",
      DataSourceId = "string",
      OrderingId = 123,
      NextToken = "string",
      MaxResults = 123
    )
