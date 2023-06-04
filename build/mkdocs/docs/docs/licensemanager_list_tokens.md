<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_tokens</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your tokens

### Description

Lists your tokens.

### Usage

    licensemanager_list_tokens(TokenIds, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_tokens_:_TokenIds">TokenIds</code></td>
<td><p>Token IDs.</p></td>
</tr>
<tr class="even">
<td><code id="licensemanager_list_tokens_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filter is
supported:</p>
<ul>
<li><p><code>LicenseArns</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_tokens_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_tokens_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tokens = list(
        list(
          TokenId = "string",
          TokenType = "string",
          LicenseArn = "string",
          ExpirationTime = "string",
          TokenProperties = list(
            "string"
          ),
          RoleArns = list(
            "string"
          ),
          Status = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tokens(
      TokenIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
