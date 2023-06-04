<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_list_entitled_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of entitled applications

### Description

Retrieves a list of entitled applications.

### Usage

    appstream_list_entitled_applications(StackName, EntitlementName,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_list_entitled_applications_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_list_entitled_applications_:_EntitlementName">EntitlementName</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_list_entitled_applications_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_list_entitled_applications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntitledApplications = list(
        list(
          ApplicationIdentifier = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_entitled_applications(
      StackName = "string",
      EntitlementName = "string",
      NextToken = "string",
      MaxResults = 123
    )
