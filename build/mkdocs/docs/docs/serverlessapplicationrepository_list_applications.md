<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists applications owned by the requester

### Description

Lists applications owned by the requester.

### Usage

    serverlessapplicationrepository_list_applications(MaxItems, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_list_applications_:_MaxItems">MaxItems</code></td>
<td><p>The total number of items to return.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_list_applications_:_NextToken">NextToken</code></td>
<td><p>A token to specify where to start paginating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Applications = list(
        list(
          ApplicationId = "string",
          Author = "string",
          CreationTime = "string",
          Description = "string",
          HomePageUrl = "string",
          Labels = list(
            "string"
          ),
          Name = "string",
          SpdxLicenseId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_applications(
      MaxItems = 123,
      NextToken = "string"
    )
