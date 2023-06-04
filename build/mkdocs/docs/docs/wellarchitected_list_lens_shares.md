<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_lens_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the lens shares associated with the lens

### Description

List the lens shares associated with the lens.

### Usage

    wellarchitected_list_lens_shares(LensAlias, SharedWithPrefix, NextToken,
      MaxResults, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_shares_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_shares_:_SharedWithPrefix">SharedWithPrefix</code></td>
<td><p>The Amazon Web Services account ID, IAM role, organization ID, or
organizational unit (OU) ID with which the lens is shared.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_shares_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_shares_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_shares_:_Status">Status</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensShareSummaries = list(
        list(
          ShareId = "string",
          SharedWith = "string",
          Status = "ACCEPTED"|"REJECTED"|"PENDING"|"REVOKED"|"EXPIRED"|"ASSOCIATING"|"ASSOCIATED"|"FAILED",
          StatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lens_shares(
      LensAlias = "string",
      SharedWithPrefix = "string",
      NextToken = "string",
      MaxResults = 123,
      Status = "ACCEPTED"|"REJECTED"|"PENDING"|"REVOKED"|"EXPIRED"|"ASSOCIATING"|"ASSOCIATED"|"FAILED"
    )
