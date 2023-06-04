<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_apps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the applications that are associated with your Amazon Pinpoint account

### Description

Retrieves information about all the applications that are associated
with your Amazon Pinpoint account.

### Usage

    pinpoint_get_apps(PageSize, Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpoint_get_apps_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_apps_:_Token">Token</code></td>
<td><p>The NextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationsResponse = list(
        Item = list(
          list(
            Arn = "string",
            Id = "string",
            Name = "string",
            tags = list(
              "string"
            ),
            CreationDate = "string"
          )
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_apps(
      PageSize = "string",
      Token = "string"
    )
