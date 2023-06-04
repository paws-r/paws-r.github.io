<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_experiences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists one or more Amazon Kendra experiences

### Description

Lists one or more Amazon Kendra experiences. You can create an Amazon
Kendra experience such as a search application. For more information on
creating a search application experience, see [Building a search
experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_list_experiences(IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_experiences_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_list_experiences_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
Amazon Kendra experiences.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_experiences_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of returned Amazon Kendra
experiences.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SummaryItems = list(
        list(
          Name = "string",
          Id = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATING"|"ACTIVE"|"DELETING"|"FAILED",
          Endpoints = list(
            list(
              EndpointType = "HOME",
              Endpoint = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_experiences(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
