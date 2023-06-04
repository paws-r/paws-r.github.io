<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_protocols_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of ProtocolsListDataSummary objects

### Description

Returns an array of `ProtocolsListDataSummary` objects.

### Usage

    fms_list_protocols_lists(DefaultLists, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_protocols_lists_:_DefaultLists">DefaultLists</code></td>
<td><p>Specifies whether the lists to retrieve are default lists owned
by Firewall Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_protocols_lists_:_NextToken">NextToken</code></td>
<td><p>If you specify a value for <code>MaxResults</code> in your list
request, and you have more objects than the maximum, Firewall Manager
returns this token in the response. For all but the first request, you
provide the token returned by the prior request in the request
parameters, to retrieve the next batch of objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_list_protocols_lists_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of objects that you want Firewall
Manager to return for this request. If more objects are available, in
the response, Firewall Manager provides a <code>NextToken</code> value
that you can use in a subsequent call to get the next batch of
objects.</p>
<p>If you don't specify this, Firewall Manager returns all available
objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtocolsLists = list(
        list(
          ListArn = "string",
          ListId = "string",
          ListName = "string",
          ProtocolsList = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_protocols_lists(
      DefaultLists = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
