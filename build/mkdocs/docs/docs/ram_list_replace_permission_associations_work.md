<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_replace_permission_associations_work</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current status of the asynchronous tasks performed by RAM when you perform the ReplacePermissionAssociationsWork operation

### Description

Retrieves the current status of the asynchronous tasks performed by RAM
when you perform the ReplacePermissionAssociationsWork operation.

### Usage

    ram_list_replace_permission_associations_work(workIds, status,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_replace_permission_associations_work_:_workIds">workIds</code></td>
<td><p>A list of IDs. These values come from the <code>id</code>field of
the <code>replacePermissionAssociationsWork</code>structure returned by
the <code>replace_permission_associations</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_replace_permission_associations_work_:_status">status</code></td>
<td><p>Specifies that you want to see only the details about requests
with a status that matches this value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_replace_permission_associations_work_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_replace_permission_associations_work_:_maxResults">maxResults</code></td>
<td><p>Specifies the total number of results that you want included on
each page of the response. If you do not include this parameter, it
defaults to a value that is specific to the operation. If additional
items exist beyond the number you specify, the <code>NextToken</code>
response element is returned with a value (not null). Include the
specified value as the <code>NextToken</code> request parameter in the
next call to the operation to get the next part of the results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check
<code>NextToken</code> after every operation to ensure that you receive
all of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      replacePermissionAssociationsWorks = list(
        list(
          id = "string",
          fromPermissionArn = "string",
          fromPermissionVersion = "string",
          toPermissionArn = "string",
          toPermissionVersion = "string",
          status = "IN_PROGRESS"|"COMPLETED"|"FAILED",
          statusMessage = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_replace_permission_associations_work(
      workIds = list(
        "string"
      ),
      status = "IN_PROGRESS"|"COMPLETED"|"FAILED",
      nextToken = "string",
      maxResults = 123
    )
