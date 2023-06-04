<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_account_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alias for your Amazon Web Services account

### Description

Creates an alias for your Amazon Web Services account. For information
about using an Amazon Web Services account alias, see Using an alias for
your Amazon Web Services account ID in the *IAM User Guide*.

### Usage

    iam_create_account_alias(AccountAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_create_account_alias_:_AccountAlias">AccountAlias</code></td>
<td><p>[required] The account alias to create.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of lowercase letters, digits, and dashes. You
cannot start or finish with a dash, nor can you have two dashes in a
row.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_account_alias(
      AccountAlias = "string"
    )

### Examples

    ## Not run: 
    # The following command associates the alias examplecorp to your AWS
    # account.
    svc$create_account_alias(
      AccountAlias = "examplecorp"
    )

    ## End(Not run)
