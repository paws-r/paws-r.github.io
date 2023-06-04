<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_list_configuration_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all of the configuration sets associated with your Amazon Pinpoint account in the current region

### Description

List all of the configuration sets associated with your Amazon Pinpoint
account in the current region.

### Usage

    pinpointsmsvoice_list_configuration_sets(NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_list_configuration_sets_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to the API that indicates
the position in the list of results.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_list_configuration_sets_:_PageSize">PageSize</code></td>
<td><p>Used to specify the number of items that should be returned in
the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSets = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_configuration_sets(
      NextToken = "string",
      PageSize = "string"
    )
