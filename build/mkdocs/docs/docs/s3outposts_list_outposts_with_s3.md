<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts_list_outposts_with_s3</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account

### Description

Lists the Outposts with S3 on Outposts capacity for your Amazon Web
Services account. Includes S3 on Outposts that you have access to as the
Outposts owner, or as a shared user from Resource Access Manager (RAM).

### Usage

    s3outposts_list_outposts_with_s3(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3outposts_list_outposts_with_s3_:_NextToken">NextToken</code></td>
<td><p>When you can get additional results from the
<code>list_outposts_with_s3</code> call, a <code>NextToken</code>
parameter is returned in the output. You can then pass in a subsequent
command to the <code>NextToken</code> parameter to continue listing
additional Outposts.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_list_outposts_with_s3_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Outposts to return. The limit is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Outposts = list(
        list(
          OutpostArn = "string",
          OutpostId = "string",
          OwnerId = "string",
          CapacityInBytes = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_outposts_with_s3(
      NextToken = "string",
      MaxResults = 123
    )
