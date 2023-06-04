<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_list_user_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the user profiles configured for your AWS account in AWS CodeStar

### Description

Lists all the user profiles configured for your AWS account in AWS
CodeStar.

### Usage

    codestar_list_user_profiles(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_list_user_profiles_:_nextToken">nextToken</code></td>
<td><p>The continuation token for the next set of results, if the
results cannot be returned in one response.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_list_user_profiles_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in a response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userProfiles = list(
        list(
          userArn = "string",
          displayName = "string",
          emailAddress = "string",
          sshPublicKey = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_user_profiles(
      nextToken = "string",
      maxResults = 123
    )
