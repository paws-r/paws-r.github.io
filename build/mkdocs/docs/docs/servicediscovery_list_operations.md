<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_list_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists operations that match the criteria that you specify

### Description

Lists operations that match the criteria that you specify.

### Usage

    servicediscovery_list_operations(NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_list_operations_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_operations</code> request, omit this
value.</p>
<p>If the response contains <code>NextToken</code>, submit another
<code>list_operations</code> request to get the next group of results.
Specify the value of <code>NextToken</code> from the previous response
in the next request.</p>
<p>Cloud Map gets <code>MaxResults</code> operations and then filters
them based on the specified criteria. It's possible that no operations
in the first <code>MaxResults</code> operations matched the specified
criteria but that subsequent groups of <code>MaxResults</code>
operations do contain operations that match the criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_list_operations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items that you want Cloud Map to return in
the response to a <code>list_operations</code> request. If you don't
specify a value for <code>MaxResults</code>, Cloud Map returns up to 100
operations.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_list_operations_:_Filters">Filters</code></td>
<td><p>A complex type that contains specifications for the operations
that you want to list, for example, operations that you started between
a specified start date and end date.</p>
<p>If you specify more than one filter, an operation must match all
filters to be returned by <code>list_operations</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Operations = list(
        list(
          Id = "string",
          Status = "SUBMITTED"|"PENDING"|"SUCCESS"|"FAIL"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_operations(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "NAMESPACE_ID"|"SERVICE_ID"|"STATUS"|"TYPE"|"UPDATE_DATE",
          Values = list(
            "string"
          ),
          Condition = "EQ"|"IN"|"BETWEEN"|"BEGINS_WITH"
        )
      )
    )

### Examples

    ## Not run: 
    # This example gets the operations that have a STATUS of either PENDING or
    # SUCCESS.
    svc$list_operations(
      Filters = list(
        list(
          Condition = "IN",
          Name = "STATUS",
          Values = list(
            "PENDING",
            "SUCCESS"
          )
        )
      )
    )

    ## End(Not run)
