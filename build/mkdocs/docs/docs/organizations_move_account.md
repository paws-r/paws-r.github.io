<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_move_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves an account from its current source parent root or organizational unit (OU) to the specified destination parent root or OU

### Description

Moves an account from its current source parent root or organizational
unit (OU) to the specified destination parent root or OU.

This operation can be called only from the organization's management
account.

### Usage

    organizations_move_account(AccountId, SourceParentId,
      DestinationParentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_move_account_:_AccountId">AccountId</code></td>
<td><p>[required] The unique identifier (ID) of the account that you
want to move.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for an account ID string requires exactly 12 digits.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_move_account_:_SourceParentId">SourceParentId</code></td>
<td><p>[required] The unique identifier (ID) of the root or
organizational unit that you want to move the account from.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a parent ID string requires one of the following:</p>
<ul>
<li><p><strong>Root</strong> - A string that begins with "r-" followed
by from 4 to 32 lowercase letters or digits.</p></li>
<li><p><strong>Organizational unit (OU)</strong> - A string that begins
with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
of the root that the OU is in). This string is followed by a second "-"
dash and from 8 to 32 additional lowercase letters or digits.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="organizations_move_account_:_DestinationParentId">DestinationParentId</code></td>
<td><p>[required] The unique identifier (ID) of the root or
organizational unit that you want to move the account to.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a parent ID string requires one of the following:</p>
<ul>
<li><p><strong>Root</strong> - A string that begins with "r-" followed
by from 4 to 32 lowercase letters or digits.</p></li>
<li><p><strong>Organizational unit (OU)</strong> - A string that begins
with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
of the root that the OU is in). This string is followed by a second "-"
dash and from 8 to 32 additional lowercase letters or digits.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$move_account(
      AccountId = "string",
      SourceParentId = "string",
      DestinationParentId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to move a member account from the root
    # to an OU:/n/n
    svc$move_account(
      AccountId = "333333333333",
      DestinationParentId = "ou-examplerootid111-exampleouid111",
      SourceParentId = "r-examplerootid111"
    )

    ## End(Not run)
