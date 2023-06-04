<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_entitlements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one of more entitlements

### Description

Retrieves a list that describes one of more entitlements.

### Usage

    appstream_describe_entitlements(Name, StackName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_describe_entitlements_:_Name">Name</code></td>
<td><p>The name of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_entitlements_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_entitlements_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_entitlements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entitlements = list(
        list(
          Name = "string",
          StackName = "string",
          Description = "string",
          AppVisibility = "ALL"|"ASSOCIATED",
          Attributes = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_entitlements(
      Name = "string",
      StackName = "string",
      NextToken = "string",
      MaxResults = 123
    )
